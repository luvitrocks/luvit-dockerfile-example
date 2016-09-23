local Utopia = require('utopia')
local app = Utopia:new()
local port = process.env.PORT or 8080

-- respond to all requests
app:use(function (req, res)
  res:finish('Hello from Utopia and Docker on Zeit!')
end)

app:listen(port)
print('Server started at localhost:' .. port)
