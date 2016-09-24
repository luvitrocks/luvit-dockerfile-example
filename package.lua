return {
  name = 'voronianski/luvit-dockerfile-test',
  version = '1.0.0',
  dependencies = {
    'voronianski/utopia',
    'voronianski/favicon'
  },
  files = {
    '**.lua',
    '!test*',
    '!example*'
  }
}
