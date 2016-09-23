return {
  name = 'voronianski/luvit-dockerfile-test',
  version = '1.0.0',
  dependencies = {
    'voronianski/utopia'
  },
  files = {
    '**.lua',
    '!test*',
    '!example*'
  }
}