require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/word_count')

get('/') do
  erb(:index)
end

get('/output') do
  @input_string = params.fetch("input_string")
  @input_word = params.fetch("input_word")
  @word_count = @input_string.count_words(@input_word)
  erb(:output)
end
