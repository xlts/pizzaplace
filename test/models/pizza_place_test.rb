require 'test_helper'

class PizzaPlaceTest < ActiveSupport::TestCase
 
  test "should not save PizzaPlace without name" do
  	p = PizzaPlace.new
  	p.address = '1 Pizza Str, 12345 Pizzatown'
  	p.open_from = '10:00'
  	p.open_until = '19:00'

  	assert_not p.save, "saved PizzaPlace without name"
  end

  test "should not save PizzaPlace without address" do
	p = PizzaPlace.new
	p.name = "p1"
  	p.open_from = '10:00'
  	p.open_until = '19:00'

  	assert_not p.save, "saved PizzaPlace without address"
  end

  test "should not save PizzaPlace without open_from" do
  	p = PizzaPlace.new
  	p.name = 'p1'
  	p.address = '1 Pizza Str, 12345 Pizzatown'
  	p.open_until = '19:00'

  	assert_not p.save, "saved PizzaPlace without open_from"
  end

  test "should not save PizzaPlace without open_until" do
  	p = PizzaPlace.new
  	p.name = 'p1'
  	p.address = '1 Pizza Str, 12345 Pizzatown'
  	p.open_from = '10:00'

  	assert_not p.save, "saved PizzaPlace without open_until"
  end

  test "open_until should be after open_from" do
  	p = PizzaPlace.new
  	p.open_from = '14:00'
  	p.open_until = '13:00'

  	assert_not p.save, "saved PizzaPlace with open_until after open_from"
  end

  test "should not save PizzaPlace with existing name" do
  	p1 = PizzaPlace.new
  	p1.name = 'p1'
  	p1.address = '1 Pizza Str, 12345 Pizzatown'
  	p1.open_from = '10:00'
  	p1.open_until = '19:00'

  	p1.save

  	p2 = PizzaPlace.new
  	p2.name = 'p1'
  	p2.address = '2 Pizza Str, 54321 Pizzatown'
  	p2.open_from = '11:00'
  	p2.open_from = '21:00'

  	assert_not p2.save, "saved PizzaPlaces with repeating names"
  end
end
