require('rspec')
require('titlecase_ruby')

describe('title_case') do
  it('capitalizes the first letter of a word') do
    title_case("cat").should(eq("Cat"))
  end
  it('capitalizes every word in a sentence') do
    title_case("cats DOGS").should(eq("Cats Dogs"))
  end
  it('does not capitalize words like "it" and "the"') do
    title_case("cat in the hat").should(eq("Cat in the Hat"))
  end
  it('does not capitalize words like "it" and "the" except at the beginning') do
    title_case("the cat in the hat").should(eq("The Cat in the Hat"))
  end
end
