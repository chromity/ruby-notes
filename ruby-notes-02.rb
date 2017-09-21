||=
thing_a || thing_b = thing_a

# tertiary operator
condition ? do_this_if_true : do_this_if_false

# loop statements
break
next
redo
retry

# blocks
yield if block_given?

# procs
my_proc = Proc.new { |arg1| this_is_a_block }
[1,2,3].each(&my_proc)

my_proc.call("howdy")

# lambda
with lambda you can use return
# this will only return from the lambda itself
# lambda is strict about parameters, you must pass the correct number of args

you can add .call to end

# methods
def print_stuff(word)
  print "#{word}!"
end

[1,2,3].my_each(method(:print_stuff))

my_array[1,2,3]
# select
my_array.select { |item| item % 2 == 0 }
# returns even

# collect
my_array.collect { |num| num**2 }
# do something with the elements then collect theme

# map
my_array.map # returns a new array filled w/ whatever gets returned by the
             # block each time it returns.

# inject or #reduce
returns whatever the result of the last iteration is
my_array.inject(0){|running_total, item| running_total + item }

# find

# group_by - will run your block and return a hash that groups all the
#            different types of returns from that block

# grep - returns an array with those items that actually match the specified
#        criteria



class Square
  def self.test_method
    puts "Hello from the Square class!"
  end

  def initialize side_length
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end
end

$global_var = 0 # this is a global variable

@instance_var = 0 # this is an instance variable

@@class_var = 0 # this is a class variable


class Person
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class Doctor < Person
  def name
    "Dr. " + super # override!
  end
end

obj.instance_variables


class Person
  def hello
    puts "hello"
  end

  private

  def hi
    puts "hello"
  end
end

class Person
  def this_is_priv
    puts "i'm priv"
  end

  private :this_is_priv
end


class Person
  def this_is_protected
    puts "i'm protected"
  end

  private :this_is_protected
end


# class within a class
Drawing::ClassLine


require()

module LetterStuff
  def self.random
    (rand(26) + 65).chr
  end
end

class Person
  include LetterStuff
end



class AllVowels
  include Enumerable

  VOWELS = %w{a e i o u}

  def each
    VOWELS.each { |v| yield v }
  end
end

class Song
  include Comparable

  attr_accessor :length

  def <=> other # this is a Comparable
    @length <=> other.length
  end

  def initialize(song_name, length)
    @song_name = song_name
    @length = length
  end
end

# you can include modules so that you'll be able to use Class.new rather than
# module::Class.new



fave ||= "hell"


.respond_to?
[1,2,3].respond_to?(:push)
