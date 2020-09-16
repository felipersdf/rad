require_relative 'AnalisadorLinha.rb'

analisers = []

File.open('File.txt').each do |line|
  wordFrequency = AnalisadorLinha.new($. , line)
  analisers.push(wordFrequency)
end

  analisers.each do |analiser|
    analiser.calculeWordFrequency
  end