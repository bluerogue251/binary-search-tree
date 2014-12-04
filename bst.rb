class Bst
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value_to_insert)
    if value_to_insert <= data
      if left.nil?
        @left = Bst.new(value_to_insert)
      else
        @left.insert(value_to_insert)
      end
    else
      if right.nil?
        @right = Bst.new(value_to_insert)
      else
        @right.insert(value_to_insert)
      end
    end
  end

  def each(&block)
    left.each(&block) if left
    yield data
    right.each(&block) if right
  end
end
