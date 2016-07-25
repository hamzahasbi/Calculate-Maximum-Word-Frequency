
class LineAnalyzer
	attr_reader :highest_wf_count
	attr_reader :highest_wf_words
	attr_reader :content
	attr_reader :line_number
	
	def initialize(content,line_number)
	@content=content.to_s
	@line_number=line_number.to_i
	@highest_wf_words=Array.new
	calculate_word_frequency()
	end
	
	def calculate_word_frequency()
	
		rep=Hash.new(0)
		tmp=content.split
		tmp.each{|word| word.downcase!}
		tmp.each{|word| rep[word]+=1}
		maxi=0
		rep.each{|key,value| maxi=value if value>maxi }
		@highest_wf_count=maxi
		rep.each{|key,value| @highest_wf_words.push(key.to_s) if value.to_i==@highest_wf_count}
	end
  
end

 
class Solution



	attr_reader :analyzers
	attr_reader :highest_count_across_lines
	attr_reader :highest_count_words_across_lines
	
	
	def initialize()
	@analyzers=Array.new();
	@highest_count_words_across_lines=Array.new()
	end
	
	def analyze_file()
		begin
		i=1
		File.foreach('.\test.txt') do |line|

		@analyzers<<LineAnalyzer.new(line.chomp,i)
		i+=1
		end

		rescue Exception =>e
		  puts e.message
		  puts "File not found!!"

		end
	end
	
	def calculate_line_with_highest_frequency()
	
		maxi=0
		@analyzers.each do |x|
		maxi=x.highest_wf_count if x.highest_wf_count>maxi 
		end
		@highest_count_across_lines=maxi
		
		
		@analyzers.each do |x|
		@highest_count_words_across_lines<<x if x.highest_wf_count==@highest_count_across_lines
		end
		
	
	end
	
	
	def print_highest_word_frequency_across_lines()
	  puts "The following words have the highest word frequency per line:"
	  @highest_count_words_across_lines.each do |x|
			puts "#{x.highest_wf_words.inspect} (appears in line #{x.line_number})"
		
	  
	end

end
end