db.createUser(
    {
        user: "vimo",
        pwd: "12345678",
        roles: [
            {
                role: "readWrite",
                db: "vimo-session"
            }
        ]
    }
);