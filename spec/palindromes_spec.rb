require('palindromes')
require('rspec')

describe('palindromes') do
  it("returns malayalam to is palindrome") do
    expect("malayalam".palindromes()).to(eq(true))
  end

  it("returns cat is not palindrome") do
    expect("cat".palindromes()).to(eq(false))
  end
end
