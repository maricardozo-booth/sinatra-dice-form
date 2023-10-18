require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:homepage)
end

get("/process_roll") do
  @num_of_dice = params.fetch("dice").to_i
  @dice_sides = params.fetch("sides").to_i

  @rolls = []

  @num_of_dice.times do
    die = rand(1..@dice_sides)

    @rolls.push(die)
  end

  erb(:process_roll)
end
