curl --include --request POST http://localhost:3000/foods \
  --header "Authorization: Token token=BAhJIiU2ZjdhZDEyZTRmMGQ0MWY2ZmJjMmNjYzM5YmY5MzQ0ZQY6BkVG--2c0b39b90f44ba1da2b6b54b0c2537afd81dd347" \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
    "storage" : "freezer",
    "disposal" : "donate",
    "category" : "dessert",
    "name" : "ice cream",
    "description" : "cookies and cream",
    "purchased_date" : "2016-03-21",
    "expiration_date" : "2016-04-01",
    "remind_date" : "2016-03-29"
    }
  }'
