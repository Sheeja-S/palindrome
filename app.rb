require('sinatra')

get('/') do
  erb(:home)
end

post('/') do
  @word = params.fetch('word')
  @palindrome = @word.palindromes
  erb(:home)
end
