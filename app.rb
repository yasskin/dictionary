require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:word_form)
end

post('/words') do
  @name = params.fetch('name')
  @word = Word.new({:name => @name})
  @word.save()
  erb(:word_success)
end

get('words/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end
