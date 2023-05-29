rs.status();
db.createUser({user: 'admin', pwd: 'admin', roles: [ { role: 'root', db: 'admin' } ]});
db.createCollection('users');
db.users.insertMany(
    [
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
        },
        {
            "_id": 3,
            "firstname": "Joe",
            "lastname": "Pencilson",
            "age": 66,
            "email": "jp@mail.ru"
        }
    ]
);