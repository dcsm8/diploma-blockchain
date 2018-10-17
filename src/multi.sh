export COMPOSER_PROVIDERS='{
        "github": {
          "provider": "github",
          "module": "passport-github",
          "clientID": "acfd67dbe807f369645a",
          "clientSecret": "120b0499bc01321f4a092c8889a74af929d3a50b",
          "authPath": "/auth/github",
          "callbackURL": "/auth/github/callback",
          "successRedirect": "/",
          "failureRedirect": "/"
        }
      }'

composer-rest-server -c admin@tutorial-network -n "never" -p 3001 -a true -m true

/api/Student
{
  "$class": "org.example.mynetwork.Student",
  "studentId": "deividsanchez96@hotmail.com",
  "firstName": "Dave",
  "lastName": "Doe",
  "email": "deividsanchez96@hotmail.com"
}

system/identity/issue
{
  "participant": "org.example.mynetwork.Student#deividsanchez96@hotmail.com",
  "userID": "deividsanchez96@hotmail.com",
  "options": {}
}

/api/Student
{
  "$class": "org.example.mynetwork.Student",
  "studentId": "david.sanchez96@outlook.com",
  "firstName": "Jenny",
  "lastName": "Doe",
  "email": "david.sanchez96@outlook.com"
}

{
  "participant": "org.example.mynetwork.Student#david.sanchez96@outlook.com",
  "userID": "david.sanchez96@outlook.com",
  "options": {}
}