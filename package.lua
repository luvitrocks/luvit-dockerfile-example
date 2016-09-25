return {
  name = 'voronianski/luvit-dockerfile-test',
  version = '1.0.0',
  dependencies = {
    'voronianski/utopia',
    'voronianski/favicon',
    'voronianski/logger'
  },
  files = {
    '**.lua',
    '!test*',
    '!example*'
  }
}
