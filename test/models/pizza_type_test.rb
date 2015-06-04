require 'test_helper'

class PizzaTypeTest < ActiveSupport::TestCase

  test "should not save PizzaType without a name" do
  	p = PizzaType.new
  	p.price = 20
  	p.ingredients = 'ingr1, ingr2, ingr3'

  	assert_not p.save, "saved PizzaType without name"
  end

  test "should not save PizzaType without price" do
  	p = PizzaType.new
  	p.name = 'p1'
  	p.ingredients = 'ingr1, ingr2, ingr3'

  	assert_not p.save, "saved PizzaType without price"
  end

  test "should not save PizzaType without specifying ingredients" do
  	p = PizzaType.new
  	p.name = 'p1'
  	p.price = 25

  	assert_not p.save, "saved PizzaType without specifying ingredients"
  end

  test "price should not be a string" do
  	p = PizzaType.new
  	p.price = "abc"

  	assert_not p.save, "saved PizzaType with price being a string"
  end
  
end
