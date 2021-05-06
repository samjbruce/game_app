Rails.application.routes.draw do
  get "/name_game" => "game_app#name_game"
  get "/number_game" => "game_app#number_game"
end
