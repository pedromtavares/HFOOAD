#Test case for project 9-GameFrameworkV2

$:.unshift File.join(File.dirname(__FILE__),'..','lib', '9-GameFrameworkV2')

require 'test/unit'
require 'unit'
require 'unit_group'

class UnitGroupsTest < Test::Unit::TestCase

  def before
    puts "\n\n\nTesting the Unit Group class...\n"
    @unit1 = Unit.new(1)
    @unit2 = Unit.new(2)
    @list = [@unit1, @unit2]
    @group = UnitGroup.new(@list)
    puts "Created a new unit group with 2 units .\n"
  end

  def test_unit_group_creation
    before
    assert_equal(@list,@group.units.values)
    puts "Unit group has the same units as the list it was given.\n"
  end

  def test_adding_unit_to_group
    before
    unit = Unit.new(3)
    puts "Adding a unit to the group. \n"
    @group.add_unit(unit)
    assert_equal(@group.units.has_value?(unit),true)
    puts "A unit has been successfully added to the group.\n"
  end

  def test_gettting_unit_by_id
    before
    puts "Getting a unit by the ID of 2. \n"
    unit = @group.get_unit(2)
    assert_equal(unit.id,2)
    puts "Retrieved unit's ID: 2"
  end

  def test_removing_unit_by_id
    before
    puts "Removing unit by the id of 2. \n"
    removed = @group.remove_unit(2)
    assert_equal(@group.units.has_value?(removed), false)
    puts "Unit was successfully removed.\n"
  end

  def test_removing_unit_by_unit_instance
    before
    puts "Removing unit by providing a unit instance with the id of 1. \n"
    removed = @group.remove_unit(Unit.new(1))
    assert_equal(@group.units.has_value?(removed), false)
    puts "Unit was successfully removed\n"
  end

  
end
