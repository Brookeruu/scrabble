require 'rspec'
require 'scrabble'

describe('scrabble') do
  it("returns a scrabble score for a letter") do
    expect(scrabble("A")).to(eq(1))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble("Q")).to(eq(10))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble("D")).to(eq(2))
  end

  it("returns a scrabble score for an uppercase word") do
    expect(scrabble("EXIT")).to(eq(11))
  end

  it("returns a scrabble score for a lower and/or mixed-case word") do
    expect(scrabble("eXIt")).to(eq(11))
  end

  it("returns a scrabble score for a word and ignores non-alpha characters") do
    expect(scrabble("!ex#it")).to(eq(11))
  end

end
