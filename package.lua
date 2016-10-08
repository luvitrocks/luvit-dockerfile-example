return {
  name = 'voronianski/luvit-dockerfile-test',
  version = '1.0.0',
  dependencies = {
    'voronianski/utopia',
    'voronianski/favicon',
    'voronianski/logger',
    'voronianski/static',
    'voronianski/request-query'
    'voronianski/directory',
    'voronianski/cors',
    'voronianski/json-response',
    'voronianski/utopia-route'
  },
  files = {
    '**.lua',
    '!test*',
    '!example*'
  }
}
