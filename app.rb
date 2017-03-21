require('sinatra')

class String
  define_method(:palindromes) do
    a= self.split('')
    b= a.length
    c= []

    while (b >=0) do
      c.push(a[b])
      b -= 1
    end
    reversename = c.join('')
    if(self == reversename)
         return self + " is a palindrome"
       else
         return self + " is not a palindrome.You jackass"
  end

 end
end

get('/') do
  erb(:home)
end

post('/') do
  @word = params.fetch('word')
  @palindrome = @word.palindromes
  erb(:home)
end
