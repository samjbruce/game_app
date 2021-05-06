class GameAppController < ApplicationController
  def name
    render json: {name: "This is your name"}
  end
end
