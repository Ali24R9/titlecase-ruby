def title_case(sentence)
  title = ""
  exceptions = ["a", "an", "the", "it", "on", "in", "of"]
  sentenceArray = sentence.split()
  sentenceArray.each do |word| 
    if exceptions.include?(word)
      title << word + " " 
    else
      title << word.capitalize() + " "
    end
  end
  puts title[0].upcase + title.chomp[1..-2]
  return title[0].upcase + title.chomp[1..-2]
end

title_case("the cat in a hat")
