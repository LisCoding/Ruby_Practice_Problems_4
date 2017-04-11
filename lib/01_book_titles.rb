class Book
  attr_reader :title
  def title=(title)
    litle_words = ["a", "an", "in", "the", "and", "over", "on", "of"]
    title = title.split.map.with_index do |word, idx|
      litle_words.include?(word) && idx != 0 ? word : word.capitalize
    end
    @title = title.join(" ")
  end
end
