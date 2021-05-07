Rails.application.routes.draw do

  get "/name_game/:name" => "game_app#name_game"

  get "/number_game/:number" => "game_app#number_game"

  post "/number_game_post" => "game_app#number_game_post"

  post "/credentials" => "game_app#credentials"

end
