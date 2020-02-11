class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_salary = 0
    @characters.each {|character| total_salary += character.salary}
    total_salary
  end

  def highest_paid_actor
    character_salaries = Hash.new(0)
    @characters.each { |character| character_salaries[character.actor] = character.salary}
    character_salaries.max_by {|x| x.values_at}.first
  end

  def actors
    @characters.map {|character| character.actor}
  end
end
