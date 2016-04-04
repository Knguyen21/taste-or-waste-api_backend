curl --include --request POST http://localhost:3000/storages \
  --header "Authorization: Token token=BAhJIiVmZGJlOTgxZGZkNTcwMmQxYzYyYWFkMDdlMTRlNDUzZgY6BkVG--15a7569edafead3820bced4092c63d0953b888b8" \
  --header "Content-Type: application/json" \
  --data '{
    "storage" : {
    "storage_type" : "pantry"
    }
  }'
