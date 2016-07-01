require ("rspec")
require ("word_count")

describe('String#count_words') do
  it ("returns 0 if a word is not in the string") do
    expect("hello world".count_words("cat")).to(eq(0))
  end

  it ("returns 1 if a word is the only word in the string") do
    expect("hello".count_words("hello")).to(eq(1))
  end

  it ("returns 1 if a word is in the string regardless of string case") do
    expect("Hello world".count_words("hello")).to(eq(1))
  end

  it ("returns 1 if a word is in the string regardless of the word case") do
    expect("hello world".count_words("Hello")).to(eq(1))
  end
  
  it ("returns 1 if a word is in the string regardless of punctuation") do
    expect("hello world, how are you today?".count_words("hello")).to(eq(1))
  end

  it ("returns the count of a word in the string") do
    expect("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?".count_words("peppers")).to(eq(2))
  end

end
