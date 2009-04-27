# analyzer.rb


def analyze file_name
  file = File.readlines(file_name)
  string = file.join
  
  line_count = file.size
  character_count = string.size
  character_count_without_whitespace = string.split(/./).size
  word_count = string.split.size
  sentence_count = string.split(/\.|\?|!/).size
  paragraph_count = string.split(/\r\n\r\n/).size
  
  words_per_sentence = word_count.to_f / sentence_count
  sentence_per_paragraph = sentence_count.to_f / paragraph_count
  
  puts 'analysis results:'
  puts "Character count: #{character_count}"
  puts "Character count (excluding spaces): #{character_count_without_whitespace}"
  puts "Line count: #{line_count}"
  puts "Word count: #{word_count}"
  puts "Sentence count: #{sentence_count}"
  puts "Paragraph count: #{paragraph_count}"
  puts "Average number of words per sentence: #{"%.2f" % words_per_sentence}"
  puts "Average number of sentences per paragraph : #{"%.2f" % sentence_per_paragraph}"
  
end


analyze 'text.txt'
  
  
  
# String Array  


# very oop solution. clean and versitile...
# class FileAnalyzer
#   def initialize file
#     @content = File.read(file)
#   end
#   
#   def lines
#     @content.split(/\n/).length
#   end
#   
#   def characters
#     @content.length
#   end
#   
#   def characters_without_whitespaces
#     @content.gsub(/ /,'').length
#   end
#   
#   def words
#     @content.split.length
#   end
#   
#   def sentences 
#     @content.split(/[.!?]/).length
#   end
#   
#   def paragraphs
#     @content.split(/\n\n/).length
#   end
#   
#   def words_per_sentence
#     words / sentences
#   end
#   
#   def sentences_per_paragraph
#     sentences / paragraphs
#   end  
# end
#   
# def display_file_stats_for file_info
#   puts "Total lines: #{file_info.lines}"
#   puts "Total characters: #{file_info.characters}"
#   puts "Total characters without white space: #{file_info.characters_without_whitespaces}"
#   puts "Total words: #{file_info.words}"
#   puts "Total sentences: #{file_info.sentences}"
#   puts "Total paragraphs: #{file_info.paragraphs}"
#   puts "Avg words per sentences: #{file_info.words_per_sentence}"
#   puts "Avg sentences per paragraph: #{file_info.sentences_per_paragraph}"
# end
#  
# analyzer = FileAnalyzer.new 'text.txt'
# display_file_stats_for analyzer