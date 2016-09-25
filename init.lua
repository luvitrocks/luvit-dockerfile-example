local path = require('path')
local Utopia = require('utopia')
local favicon = require('favicon')
local logger = require('logger')
local static = require('static')

local __dirname = module.dir
local app = Utopia:new()
local port = process.env.PORT or 8080

function customMiddleware (req, res, nxt)
  if not string.find(req.url, '/static') then
    res:finish('Hello from Utopia and Docker on Zeit!')
  else
    nxt()
  end
end

app:use(logger('short'))
app:use(favicon())
app:use(customMiddleware)
-- app:use(static(path.join(__dirname, 'public')))

app:listen(port)
print('Server started at localhost:' .. port)
