### IoT devops education task
Esoteric scheme:
```
--------------------
| MongoDB (source) |
--------------------
         |
         v
     ---------
     | Kafka |
     ---------
         |
         V
--------------------
| MongoDB (target) |
--------------------
```

Run:
```shell
docker compose up -d
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