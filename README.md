# mustakuusi-rb-rails
for learning purposes

## Start Server
```bash
rails server -p 3001
```

## Get Games
```text
curl -X 'GET' \
  'http://localhost:3001/games' \
  -H 'accept: */*'
```

## Get Characters
```text
curl -X 'GET' \
  'http://localhost:3001/characters' \
  -H 'accept: */*'
```