class GameAppController < ApplicationController
  
  def name_game
    if params[:name].starts_with?("a")
      render json: {
        name: params[:name].upcase,
        message: "Hey, your name starts with the first letter of the alphabet!"
      }.as_json
    else 
      render json: {name: params[:name].upcase}.as_json
    end
  end

  def number_game
    number = params[:number].to_i
    if number == 35
      render json: {message: "That is correct!"}.as_json
    elsif number < 35
      render json: {message: "Higher! Keep trying."}.as_json
    elsif number > 35
      render json: {message: "Lower! Keep trying."}.as_json
    end
  end

  def number_game_post
    if params[:name].starts_with?("a")
      render json: {
        name: params[:name].upcase,
        message: "Hey, your name starts with the first letter of the alphabet!"
      }.as_json
    else 
      render json: {name: params[:name].upcase}.as_json
    end
  end

  def credentials

    if params[:username] == "hugh" && params[:password] == "swordfish"
      render json: {message: "valid credentials"}
    else
      render json: {message: "invalid credentials"}
    end
  end

end
