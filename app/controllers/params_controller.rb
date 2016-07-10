class ParamsController < ApplicationController
  def name
    @name = params[:my_name_is]
  end

  def guessing_game
    @real_number = 36 
    @number_game = params[:number_guess]
    p @number_game.to_i
    render 'numbergame.html.erb'
  end

  def number_game_result
    if params["form_message"].to_i == 36
      @message = "You guessed it!"
    elsif params["form_message"].to_i < 36
      @message = "Guess higher!"
    elsif params["form_message"].to_i > 36
      @message = "Guess lower!"
    end
    render 'form_result.html.erb'
  end
end

# </p>
#  <% if @number_game.to_i == @real_number %>
#  <p> "You guessed it!" </p>
#  <% elsif @number_game.to_i < @real_number %>
#  <p> "guess higher!" </p>
#  <% else @number_game.to_i > @real_number %>
#  <p> "guess lower!"</p>
#  <%end%> 