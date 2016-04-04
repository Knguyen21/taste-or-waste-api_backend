curl --include --request PATCH http://localhost:3000/foods/2 \
  --header "Authorization: Token token=BAhJIiVmZGJlOTgxZGZkNTcwMmQxYzYyYWFkMDdlMTRlNDUzZgY6BkVG--15a7569edafead3820bced4092c63d0953b888b8" \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
    "name" : "mayo",
    "description" : "just Mayo, vegan",
    "purchased_date" : "2016-04-03",
    "expiration_date" : "2016-05-20",
    "remind_date" : "2016-05-10"
    }
  }'
