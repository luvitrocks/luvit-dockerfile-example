local Utopia = require('utopia')
local favicon = require('favicon')
local logger = require('logger')

local app = Utopia:new()
local port = process.env.PORT or 8080

app:use(favicon())
app:use(logger())

-- respond to all requests
app:use(function (req, res)
  res:finish('Hello from Utopia and Docker on Zeit!')
end)

app:listen(port)
print('Server started at localhost:' .. port)
