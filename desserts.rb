class Dessert
  def initialize(name, calories) # Initialize name and calories.
    @name, @calories = name, calories
  end

  attr_accessor :name, :calories # Getter and Setter

  def healthy? # True if calories is less than 200.
    @calories < 200
  end
  
  def delicious? # Always true.
    true
  end
end

class JellyBean < Dessert # Jellybean extends Dessert
  def initialize(name, calories, flavor)
    @name, @calories, @flavor = name, calories, flavor
  end

  attr_accessor :name, :calories, :flavor # Getter and Setter

  def delicious?
    true unless @flavor == "black licorice" # Always true unless the flavor is black licorice
  end
end
