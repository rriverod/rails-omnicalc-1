class CalcController < ApplicationController

  def home
    render({:template => "/calc_templates/square_new"})
  end
  
  def square_new
    render({:template => "/calc_templates/square_new"})
  end

  def square_results
    @user_num=params.fetch("number").to_f
    @num_squared=@user_num *@user_num
    render({:template => "/calc_templates/square_results"})
  end

  def square_root_new

    render({:template => "/calc_templates/square_root_new"})
  end
  
  def square_root_results    
    @user_num=params.fetch("number").to_f
    @num_squared_root=Math.sqrt(@user_num)
    render({:template => "/calc_templates/square_root_results"})
  end

end
