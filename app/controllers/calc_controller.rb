class CalcController < ApplicationController

  def square_new
    render({:template => "/calc_templates/square_new"})
  end

  def square_results
    @user_num=params.fetch("number").to_f
    @num_squared=@user_num *@user_num
    render({:template => "/calc_templates/square_results"})
  end

end
