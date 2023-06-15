require_relative 'myenumerables'

class MyList
  include MyEnumerable

  def initialize(the_list)
    @list = the_list
  end

  def each
    @list.each
  end
end

list = MyList.new([1, 2, 3, 4])

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))