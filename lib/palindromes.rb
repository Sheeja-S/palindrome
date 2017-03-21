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
    self == reversename
  end
end
