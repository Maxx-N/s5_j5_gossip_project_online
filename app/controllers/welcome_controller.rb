class WelcomeController < ApplicationController

  def name
    @user_first_name = params[:user_name]
    @gossip_list = Gossip.all
  end

  def home
    @gossip_list = Gossip.all
  end
end
