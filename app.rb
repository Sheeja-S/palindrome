require('sinatra')
require('./lib/palindromes.rb')

get('/') do
  erb(:home)
end

post('/') do
  @word = params.fetch('word')
  @palindrome = @word.palindromes
  erb(:home)
end
