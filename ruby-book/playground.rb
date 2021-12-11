require 'logger'

from = 1
to = 2

distance = p to - from
p distance
puts distance

a = 'hello'.tap { |s| puts "<<#{s}>>" }
a

'#043c78'.scan(/\w\w/).map(&:hex)
hexs = '#043c78'.scan(/\w\w/).tap { |rgb| p rgb }.map(&:hex)
puts hexs

class User
  def my_name_is_(name)
    @name = name
    Logger.new($stderr).debug "an argument \"name\" of my_name_is method: #{@name}"
    puts "My name is #{@name}."
  end
end

puts User.new.my_name_is_('John')
