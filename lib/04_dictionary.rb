class Dictionary
  attr_reader :entries
  def initialize
    @entries = {}
  end

  def keywords
    @entries.keys.sort { |x, y| x <=> y }
  end

  def add(new_entry)
    if new_entry.is_a?(String)
      @entries[new_entry] = nil
    elsif new_entry.is_a?(Hash)
      @entries.merge!(new_entry)
    end
  end

  def include?(word)
    @entries.has_key?(word)
  end

  def find(fragment)
    @entries.select {|word, definition| word.match(fragment)}
  end

  def printable
    keywords.map {|keyword| %Q{[#{keyword}] "#{@entries[keyword]}"} }.join("\n")
  end
end
