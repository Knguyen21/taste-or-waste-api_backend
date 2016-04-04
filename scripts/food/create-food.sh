curl --include --request POST http://localhost:3000/foods \
  --header "Authorization: Token token=BAhJIiVmZGJlOTgxZGZkNTcwMmQxYzYyYWFkMDdlMTRlNDUzZgY6BkVG--15a7569edafead3820bced4092c63d0953b888b8" \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
    "name" : "tomato",
    "description" : "red, plum, and awesome",
    "purchased_date" : "2016-03-21",
    "expiration_date" : "2016-04-01",
    "remind_date" : "2016-03-29"
    }	
  }'
