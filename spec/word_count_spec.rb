require ("rspec")
require ("word_count")

describe('String#count_words') do
  it ("returns 0 if a word is not in the string") do
    expect("hello world".count_words("cat")).to(eq(0))
  end

  it ("returns 1 if a word is the only word in the string") do
    expect("hello".count_words("hello")).to(eq(1))
  end

  it ("returns 1 if a word is word in the string regardless of case") do
    expect("Hello".count_words("hello")).to(eq(1))
  end

  it ("returns 1 if a word is in the string regardless of punctuation") do
    expect("hello world, how are you today?".count_words("hello")).to(eq(1))
  end

  it ("returns 1 if a word is in the string regardless of punctuation") do
    expect("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?".count_words("peppers")).to(eq(2))
  end
end
