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


class Cartoon(db.Model):
    __tablename__ = 'cartoons'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64), index=True)

    def get_url(self):
        return url_for('get_cartoon', id=self.id, _external=True)

    def export_data(self):
        return {
            'self_url': self.get_url(),
            'name': self.name
        }

    def import_data(self, data):
        try:
            self.name = data['name']
        except KeyError as e:
            raise ValidationError('Invalid cartoon: missing ' + e.args[0])
        return self


@app.route('/cartoons/', methods=['GET'])
def get_cartoons():
    return jsonify({'cartoons': [cartoon.get_url() for cartoon in
                                  Cartoon.query.all()]})

@app.route('/cartoons/<int:id>', methods=['GET'])
def get_cartoon(id):
    return jsonify(Cartoon.query.get_or_404(id).export_data())

@app.route('/cartoons/', methods=['POST'])
def new_cartoon():
    cartoon = Cartoon()
    cartoon.import_data(request.json)
    db.session.add(cartoon)
    db.session.commit()
    return jsonify({}), 201, {'Location': cartoon.get_url()}

@app.route('/cartoons/<int:id>', methods=['PUT'])
def edit_cartoon(id):
    cartoon = Cartoon.query.get_or_404(id)
    cartoon.import_data(request.json)
    db.session.add(cartoon)
    db.session.commit()
    return jsonify({})


if __name__ == '__main__':
    db.create_all()
    app.run(debug=True)
