curl --include --request PATCH http://localhost:3000/storages/7 \
  --header "Authorization: Token token=BAhJIiVmZGJlOTgxZGZkNTcwMmQxYzYyYWFkMDdlMTRlNDUzZgY6BkVG--15a7569edafead3820bced4092c63d0953b888b8" \
  --header "Content-Type: application/json" \
  --data '{
    "storage" : {
    "storage_type" : "fridge"
    }
  }'
