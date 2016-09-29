local path = require('path')
local Utopia = require('utopia')
local favicon = require('favicon')
local logger = require('logger')
local static = require('static')
local requestQuery = require('request-query')
local directory = require('directory')

local __dirname = module.dir
local app = Utopia:new()
local port = process.env.PORT or 8080
local publicDir = path.join(__dirname, 'public')

function customMiddleware (req, res, nxt)
  if not req.query.static then
    res:finish('Hello from Utopia and Docker on Zeit!')
  else
    nxt()
  end
end

function pathMiddleware (req, res)
  res:finish('Bar')
end

app:use(logger('short'))
app:use(favicon())
app:use(requestQuery)
app:use('/foo', pathMiddleware)
app:use(customMiddleware)
app:use(directory(publicDir))
app:use(static(publicDir))

app:listen(port)
print('Server started at localhost:' .. port)
