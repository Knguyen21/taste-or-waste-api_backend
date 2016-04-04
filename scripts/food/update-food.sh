curl --include --request PATCH http://localhost:3000/foods/2 \
  --header "Authorization: Token token=BAhJIiU5ZGQxNDEwZDcwYThmYTgwMTUxNTg5NjQ1MWYzMjg4ZQY6BkVG--db08b1ee30405b1e3df903ce2a76319071bb2d09" \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
    "storage" : "fridge",
    "disposal" : "donate",
    "category" : "condiment",
    "name" : "mayo",
    "description" : "just Mayo, vegan",
    "purchased_date" : "2016-04-03",
    "expiration_date" : "2016-05-20",
    "remind_date" : "2016-05-10"
    }
  }'
