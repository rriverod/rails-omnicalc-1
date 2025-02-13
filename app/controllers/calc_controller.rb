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

  def payment_new
    render({:template => "/calc_templates/payment_new"})
  end

  def payment_results
    @user_apr=params.fetch("user_apr").to_f
    @user_years=params.fetch("user_years").to_i
    @user_pv=params.fetch("user_pv").to_f
    @user_payment=( @user_apr * @user_pv/1200)/(1-((1+@user_apr/1200)**(-@user_years*12)))
    render({:template => "/calc_templates/payment_results"})
  end

end
