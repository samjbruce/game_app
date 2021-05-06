class GameAppController < ApplicationController
  
  def name_game
    name = params[:name]
    name_array = name.split("")
    if name_array[0] == "a"
      name_capitalized = name.upcase
      render json: {
        name: name_capitalized,
        message: "Hey, your name starts with the first letter of the alphabet!"
      }
    else 
      name_capitalized = name.upcase
      render json: {name: name_capitalized}
    end
  end

  def number_game
    number = params[:number].to_i
    if number == 35
     render json: {message: "That is correct!"}
    elsif number < 35
      render json: {message: "Higher! Keep trying."}
    elsif number > 35
      render json: {message: "Lower! Keep trying."}
    end
  end
end
