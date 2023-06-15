module MyEnumerable
  def all?
    @list.each { |num| return false unless yield(num) }
    true
  end

  def any?
    @list.each { |num| return true if yield(num) }
    false
  end

  def filter
    result = []
    @list.each { |num| result << num if yield(num) }
    result
  end
end
