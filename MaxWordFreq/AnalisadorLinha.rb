class AnalisadorLinha
  def initialize (line, content)
    @line = line
    @content = content
  end

  def calculeWordFrequency ()
    puts "  "
    wordFrequency = @content.split.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
    puts "#{wordFrequency}"

    highestFrequency = wordFrequency.max_by {|key, value| value}

    puts "A palavra de maior ocorrência na linha #{@line} é: #{highestFrequency[0]} (#{highestFrequency[1]})}"
  end

end