This Repo contains an API for the Truvote project.  The following endpoints are available

```
GET /bills.json # to get all bills
GET /bills/1.json # to get a specific bill
DELETE /bills/1.json # to delete a bill
PUT /bills/1.json #to update a bill
POST /bills.json # to create a new bill

GET /users.json # to get all users
GET /users/1.json # to get a specific users
DELETE /users/1.json # to delete a users
PUT /users/1.json #to update a users
POST /users.json # to create a new users
```

Something important to note.  If you are `POST`-ing or `PUT`-ing a resource, you need to put the parameters in the body, like the following format: 

`{ "resource_name": { "key1": "value1", "key2": "value2"  }`

e.x:
```
{
    "user": { 
        "email":"shaun@carland.com",
        "password":"pastaword"
    }
}
```
 
 To see how to do this with Postman, check out: https://stackoverflow.com/questions/26705782/sending-nested-json-object-using-postman.

All routes must be appended by `api/v1/`.  Some test example URLs include:
`http://truvote-api.herokuapp.com/api/v1/bills.json`
`http://truvote-api.herokuapp.com/api/v1/bills/1.json`