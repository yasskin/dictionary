require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  erb(:index)
end

get('words/new') do
  erb(:words_form)
end

get('/words') do
  @word_entries = Word.all()
  erb(:words)
end

post('/words') do
 word_entry = params.fetch('word_entry')
 Word.new(word_entry).save()
 @word_entries = Word.all()
end
