class HomeController < ApplicationController
  def main
  end

  def welcome
    @user = User.find(params["id"])
  end

  def edit_user_investor_status
    @user = User.find(params["id"])    
    @user.accredited_investor = params["user"]["accredited_investor"] == "1"
    case params["user"]["investing_as"]
    when "0"
      @user.investing_as = "individual"
    when "1"
      @user.investing_as = "non-institutional-entity"
    when "2"
      @user.investing_as = "institution"
    else
    end
    @user.save

    redirect_to :action => 'personalize'
  end

  def personalize
    @user = User.find(params["id"])
    @technologies = Technology.all
    @sectors = Sector.all
  end

  def edit_user_personalization
    @user = User.find(params["id"])
  end
end
