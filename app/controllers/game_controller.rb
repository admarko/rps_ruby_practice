class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # My Code
    cmove = rand(3)
    if cmove < 1
      cmove = "Rock"
    elsif cmove <2
      cmove = "Paper"
    else
      cmove = "Scissors"
    end
    @computer_move = cmove

    if ((@user_move == "rock" && cmove == "Rock") ||
       (@user_move == "paper" && cmove == "Paper") ||
       (@user_move == "scissors" && cmove == "Scissors"))
       res = "tie"
     elsif @user_move == "rock"
       if cmove == "Paper"
         res = "lose"
       else
         res = "win"
       end
     elsif @user_move == "paper"
       if cmove == "Rock"
         res = "win"
       else
         res = "lose"
       end
     else
       if cmove == "Rock"
         res = "lose"
       else
         res = "win"
       end
    end

    if res == "win"
      res = "WON!!! 😀  "
    elsif res == "lose"
      res = "LOST! 😭  "
    else
      res = "TIED! 😑 "
    end

    @result = res

    render("rps.html.erb")
  end
end
