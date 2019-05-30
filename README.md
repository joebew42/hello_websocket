# HelloWebsocket

```
mix deps.get
iex -S mix
```

Open `http://localhost:4000/echo.html` in a browser :)

## Run with prod config

it will bind to port 80

```
export MIX_ENV=prod
mix clean; mix compile; mix run --no-halt
```