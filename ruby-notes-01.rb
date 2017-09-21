#example code
5.times do
  puts "Test"
end

5.times do { puts "Test" }


# on conditionals
puts "X" unless x > 5 && x < 10

puts "X" between?(5, 10)


# iterators automatically pass the state of the iteration to the looped code
# as a paramenter
4.upto(10) do |index|
  puts index
end


# conversions
1.to_s
1.to_f
"1".to_i

# constants - begin a variable with a capital letter
Pi = 3.1416


# comments
# either start with # for one-line or
=begin
  this is a comment
  weird
=end


# getting input
.chomp


# multi-line string - you change change the delimiter other symbol like <>
%q{I am  a
multi-line
string}


# multi-line using here document
x = <<STRING_START
I am a
multi-line
string
STRING_START


# string interpolation
puts "Hello #{name}! Welcome to Hello World!"
"Hello".capitalize! # ! makes it modify the value


# string methods
.gsub(REGEX_HERE, "replacement_text")
.sub
.capitalize
.chop
.next
.reverse
.sum
.swapcase
.upcase
.scan(REGEX_EXPRESSION)  # scans the string for match
.match(REGEXGROUP1 REGEXGROUP2) # results in an array
.center
.ljust
.rjust(val)

<< "add to string" # much better than += because it only alters the string

# char method
"x".ord # returns the ASCII value of x
120.chr # returns the char equivalent of 120 in ASCII


# control flow
unless x do
  puts "hi"
end

until i == 6
    i = i + 1
end

puts "Age is 18+" if age < 18

type = age < 18 ? "true" : "false"
condition ? puts "true" : "false"

case fruit
when orange
  color = "orange"
when red
  color = "red"
end

color = case fruit
when "orange"
  "orange"
when "banana"
  "orange"
else
  "black"
end

1.upto(5) { |number| puts number}

while i < 99 do |i|
  puts i
  i++
end

until i > 100 do |i|
  puts i
  i++
end

for num in 1...10
  puts num
end

exclusive range : ...
inclusive range : ..

loop do
  i -= 1
  print "#{{i}}"
  break if i <= 0
end

for i in 1..5
  next if i % 2 == 0 # skips a step
  print i
end




# code blocks
def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel)}
end

each_vowel { |vowel| puts vowel}

val_save_block = lambda {this_is_code_block}


# time
puts Time.now

class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
end

year = 2017
month = 8
day = 8
hour = 19
min = 52
sec = 59
msec = 42
Time.local(year, month, day, hour, min, sec, msec)
Time.gm(year, month, day, hour, min, sec)
Time.utc(year, month)
Time.gm(2015, 05).to_i
Time.at(epoch_time).year


# symbols
s = { :key => 'value'}




# regular expressions
# / /      - start and end of a regular expressions
# ^        - an anchor, meaning the reqular expression will match from
#          - the beginning of any lines within the string
# $        - an anchor, will match from the end of any lines
# .        - represents a character

# /^../    - matches any first two char of a line in a string
# /..$/    - matches any last two char of a line in a string

# A        - start of a string
# z        - end of a string
# \w       - any alphanumeric or an underscore
# \W       - anything that is not alphanumeric or underscore
# \d       - any digit
# \D       - Anything that \d doesn't match
# \s       - Whitespace
# \S       - non-whitespace
# +        - match as many in a row as possible
# *        - match zero or more occurrences
# *?       - match zero or more occurences, match as few as possible
# +?       - match zero or more occurences, match as few as possible
# ?        - match either one or none of the preceding character
# {x}      - match x occurences of the preceding character
# {x, y}   - match at least x occurences and at most y occurences
# []       - character class

# [a-z]    - matches character from a-z


# matching
puts "String has vowels" if "This is a test" =~ /[abc]/
=~ # is a matching operator


# arrays and lists
x = [1, 2, 3, 4]
puts x[2]
x = %w{i am alive}

x << 5
x.push(5)
x.pop
x.join
x.fetch(INDEX)
x.take(NUMBER_TO_TAKE)
x.insert(INDEX, value)
x.delete_at(INDEX)
x.compact
x.map
x.empty?
x.include?
x.first
x.last
x.reverse
x.max
x.min
x.uniq
x.shuffle
x.sort
x.sample
x.select {}
x.reject {}
x.sort_by { |by| x.length }
x.slice(start, length)

# array concatenation and addition
arrray1 + array2
array1 - array2

"string. is. I".split(/\./)

names.each do |element|
  puts element
end

.collect # iterate and convert the arrays


# Hashes
hashbrown = {'im funny' => 'yes', 'key' => 'value'}
hashbrown.keys
hashbrown.delele(KEY)
hashbrown.merge(hashler)

x.delete_if do |key, value|
  value < 25
end


# ranges
my_array = *(1..5)
... exclusive array
.. inclusive array

#
.product([4,5]) returns combination


# easily swap variables
x,y = y,x


# blocks
def my_method
  yield("John", 2)
end

my_method do |name, age|
  puts "#{name} is #{age} years old"
end
------
def my_method(&block)
  puts blocks
  block.call
end

my_method {puts "Hello!"}


# open file
File.open("text.txt").each { |line| puts line}

lines = File.readlines("oliver.text")
line_count = lines.size
text = lines.join


struct
Person = Struct.new(:name, :gender, :age) # if u only want to store data
