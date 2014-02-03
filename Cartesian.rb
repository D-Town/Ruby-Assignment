class CartesianProduct
  include Enumerable

  def initialize(array_a, array_b)
    @cartesian_array = Array.new(0)
    array_a.each do |element_a|
      array_b.each do |element_b|
        tmp_array = Array.new(0)
        tmp_array.push(element_a,element_b)
        @cartesian_array.push(tmp_array)
      end
    end
    @cartesian_array
  end

  def each
    @cartesian_array.each { |index| yield(index) }
  end

end

c = CartesianProduct.new([:a,:b], [4, 5])

c.each { |elt| puts elt.inspect }

# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

 

c = CartesianProduct.new([:car, :tes, :ian], [1,2,3])

c.each { |elt| puts elt.inspect }

# Nothing printed since Cartesian pr