db.createUser(
    {
        user: "mongouser",
        pwd: "mongouser",
        roles: [
            {
                role: "readWrite",
                db: "test"
            }
        ]
    }
);
db.createCollection('users');
db.users.insert(
    {
        "_id": 1,
        "firstname": "Angel",
        "lastname": "DeadInside",
        "age": 20,
        "email": "angel@mail.ru"
    },
    {
        "_id": 2,
        "firstname": "Demon",
        "lastname": "Marmeladov",
        "age": 20,
        "email": "demon@mail.ru"
    }
);