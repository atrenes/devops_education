### IoT devops education task
Esoteric scheme:
```
+------------------+
| MongoDB (source) |
+------------------+
         |
         v
     +-------+
     | Kafka |
     +-------+
         |
         V
+------------------+
| MongoDB (target) |
+------------------+
```

Run (start docker containers, automatically use scripts to initiate sample database and data inside a mongo_source node):
```shell
bash ./start.sh
```

To connect to mongodb inside a mongo_target/mongo_source container
```shell
mongo
```

Show all databases inside
```shell
show databases
```

switch to the 'test' data database
```shell
use test
```

Show data from 'users' collection
```shell
db.users.find()
```