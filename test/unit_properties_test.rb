#Test case for project 9-GameFrameworkV2

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'unit'

class UnitPropertiesTest < Test::Unit::TestCase

  def before
    puts "\n\n\nTesting the Unit class...\n"
    @unit ||= Unit.new(1)
    puts "Created a new unit.\n"
  end

  def test_unit_creation
    before
    assert_equal(@unit.id, 1)
    puts "Unit id: 1.\n"
  end

  def test_changing_properties
    before
    puts "Setting hitpoints to 20"
    @unit.set_property(:hitpoints, 20)
    assert_equal(@unit.get_property(:hitpoints), 20)
    puts "Unit hitpoints: 20.\n"
  end

  def test_null_property_values
    before
    puts "Setting hitpoints to 25.\n"
    @unit.set_property(:hitpoints, 25)
    puts "Getting unit strength.\n"
    assert_raise RuntimeError do
      @unit.get_property(:strength)
    end
    puts "Unit strength: nil.\n"
    assert_equal(@unit.get_property(:hitpoints), 25)
    puts "Unit hitpoints: 25.\n"
  end

  def test_unit_type
    before
    puts "Setting unit type to infantry.\n"
    @unit.type = 'infantry'
    assert_equal(@unit.type, 'infantry')
    puts "Unit type: infantry.\n"
  end

  def test_unit_name
    before
    puts "Setting unit name to 'John'.\n"
    @unit.name = 'John'
    assert_equal(@unit.name, 'John')
    puts "Unit name: John.\n"
  end

  def test_unit_weapons
    before
    puts "Unit should have no weapons before we add one to it. \n"
    assert_nil(@unit.weapons)
    puts "Unit has no weapons. \n"
    puts "Adding 'Axe' to unit weapons.\n"
    @unit.add_weapon('Axe')
    assert_not_nil(@unit.weapons)
    puts "Unit has at least one weapon. \n"
    assert_equal(@unit.weapons[0], 'Axe')
    puts "Unit has an Axe. \n"
  end


  
end
