### IoT devops education task
Esoteric scheme:
```
+------------------+   +---------+
| MongoDB (source) |   | KafkaUI |
+------------------+   +---------+
           /                ^
          v                 |
    +----------+        +-------+
    | DConnect | <----> | Kafka |
    +----------+        +-------+
          \   
           v 
+------------------+
| MongoDB (target) |
+------------------+
```

**Requirements:** `docker compose`, `Linux/MacOS/wsl`

> Run (start docker containers, automatically use scripts to initiate sample database and data inside a mongo_source 
> node, make sure that both kafka and debezium are up, then insert mongodb connection parameters to debezium via two 
> POST requests: for source and target mongos):
```shell
bash ./start.sh
```
> After everything is set up, KafkaUI with all topics is available at `localhost:8080`
---
To connect to mongodb inside a mongo_target/mongo_source container
```shell
mongo
```

Show data from 'users' collection (mongo_source)
```shell
db.users.find()
```

Before showing data inside of mongo_target you need to:
```shell
rs.slaveOk()
```