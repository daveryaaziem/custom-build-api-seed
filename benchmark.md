#Apache Bench
```sh

Server Software:        Werkzeug/0.9.6
Server Hostname:        127.0.0.1
Server Port:            5000

Document Path:          /cartoons/
Document Length:        1104 bytes

Concurrency Level:      100
Time taken for tests:   8.699 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      1251000 bytes
HTML transferred:       1104000 bytes
Requests per second:    114.96 [#/sec] (mean)
Time per request:       869.880 [ms] (mean)
Time per request:       8.699 [ms] (mean, across all concurrent requests)
Transfer rate:          140.44 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.9      0       4
Processing:     6  828 155.2    869     951
Waiting:        6  828 155.2    868     951
Total:         10  829 154.4    869     951

Percentage of the requests served within a certain time (ms)
  50%    869
  66%    884
  75%    893
  80%    897
  90%    912
  95%    928
  98%    937
  99%    940
 100%    951 (longest request)
```
