require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < MiniTest::Test
  def setup
    character_info = { name: "KITT", actor: "William Daniels", salary: 1_000_000 }
    @kitt = Character.new(character_info)
  end

  def test_it_exists_with_attributes
    assert_instance_of Character, @kitt
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal 1_000_000, @kitt.salary
  end
end
