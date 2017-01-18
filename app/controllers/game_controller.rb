class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:
    cmove = rand(3)
    if cmove < 1
      cmove = "Rock"
    elsif cmove <2
      cmove = "Paper"
    else
      cmove = "Scissors"
    end
    @computer_move = cmove

    res = ""

    if ((@user_move == "rock" && cmove == "Rock") ||
       (@user_move == "paper" && cmove == "Paper") ||
       (@user_move == "scissors" && cmove == "Scissors"))
       res = "tie"
     elsif @user_move == "rock"
       if cmove = "paper"
         res = "lose"
       else
         res = "win"
       end
     elsif @user_move == "paper"
       if cmove = "rock"
         res = "win"
       else
         res = "lose"
       end
     else
       if cmove = "rock"
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

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
