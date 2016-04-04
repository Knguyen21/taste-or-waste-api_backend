curl --include --request POST http://localhost:3000/foods \
  --header "Authorization: Token token=BAhJIiU5ZGQxNDEwZDcwYThmYTgwMTUxNTg5NjQ1MWYzMjg4ZQY6BkVG--db08b1ee30405b1e3df903ce2a76319071bb2d09" \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
    "storage" : "fridge",
    "disposal" : "eat",
    "category" : "produce",
    "name" : "tomato",
    "description" : "red, plum, and awesome",
    "purchased_date" : "2016-03-21",
    "expiration_date" : "2016-04-01",
    "remind_date" : "2016-03-29"
    }
  }'
