import os
from flask import Flask, url_for, jsonify, request
from flask.ext.sqlalchemy import SQLAlchemy

basedir = os.path.abspath(os.path.dirname(__file__))
db_path = os.path.join(basedir, '../data.sqlite')

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + db_path

db = SQLAlchemy(app)


class ValidationError(ValueError):
    pass


class Book(db.Model):
    __tablename__ = 'books'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64), index=True)

    def get_url(self):
        return url_for('get_book', id=self.id, _external=True)

    def export_data(self):
        return {
            'self_url': self.get_url(),
            'name': self.name
        }

    def import_data(self, data):
        try:
            self.name = data['name']
        except KeyError as e:
            raise ValidationError('Invalid book: missing ' + e.args[0])
        return self


@app.route('/books/', methods=['GET'])
def get_books():
    return jsonify({'books': [book.get_url() for book in
                                  Book.query.all()]})

@app.route('/books/<int:id>', methods=['GET'])
def get_book(id):
    return jsonify(Book.query.get_or_404(id).export_data())

@app.route('/books/', methods=['POST'])
def new_book():
    book = Book()
    book.import_data(request.json)
    db.session.add(book)
    db.session.commit()
    return jsonify({}), 201, {'Location': book.get_url()}

@app.route('/books/<int:id>', methods=['PUT'])
def edit_book(id):
    book = Book.query.get_or_404(id)
    book.import_data(request.json)
    db.session.add(book)
    db.session.commit()
    return jsonify({})


if __name__ == '__main__':
    db.create_all()
    app.run(debug=True)
