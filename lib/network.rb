class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    show_actors = Hash.new{[]}

    @shows.each do |show|
      show.characters.each do |character|
        if show_actors.key?(show)
          show_actors[show] << character.actor
        else
          show_actors[show] = [character.actor]
        end
      end
    end
    show_actors
  end
end
