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
 
 Concurrency Level:      150
Time taken for tests:   38.272 seconds
Complete requests:      997
Failed requests:        0
Total transferred:      1247247 bytes
HTML transferred:       1100688 bytes
Requests per second:    26.05 [#/sec] (mean)
Time per request:       5758.054 [ms] (mean)
Time per request:       38.387 [ms] (mean, across all concurrent requests)
Transfer rate:          31.83 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0   17 264.8      0    7006
Processing:     5 1047 259.6   1108    3605
Waiting:        4 1046 259.7   1107    3604
Total:         10 1063 404.9   1108    8530

Percentage of the requests served within a certain time (ms)
  50%   1108
  66%   1129
  75%   1140
  80%   1145
  90%   1174
  95%   1203
  98%   1227
  99%   1308
 100%   8530 (longest request)
 
 Concurrency Level:      10
Time taken for tests:   8.226 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      1251000 bytes
HTML transferred:       1104000 bytes
Requests per second:    121.56 [#/sec] (mean)
Time per request:       82.261 [ms] (mean)
Time per request:       8.226 [ms] (mean, across all concurrent requests)
Transfer rate:          148.51 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       1
Processing:     4   81  14.8     82     139
Waiting:        4   81  14.8     81     139
Total:          5   82  14.8     82     139

Percentage of the requests served within a certain time (ms)
  50%     82
  66%     86
  75%     89
  80%     91
  90%     98
  95%    108
  98%    119
  99%    125
 100%    139 (longest request)
 
 
Concurrency Level:      100
Time taken for tests:   1.108 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      125100 bytes
HTML transferred:       110400 bytes
Requests per second:    90.26 [#/sec] (mean)
Time per request:       1107.907 [ms] (mean)
Time per request:       11.079 [ms] (mean, across all concurrent requests)
Transfer rate:          110.27 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        4    4   0.3      4       5
Processing:     8  579 316.4    581    1100
Waiting:        7  578 316.4    580    1099
Total:         12  583 316.2    585    1103

Percentage of the requests served within a certain time (ms)
  50%    585
  66%    769
  75%    871
  80%    920
  90%   1016
  95%   1075
  98%   1093
  99%   1103
 100%   1103 (longest request)
```
