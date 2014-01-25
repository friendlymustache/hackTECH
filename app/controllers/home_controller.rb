class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def prizes
  end

  def schedule
  	send_file(Rails.root.join("app/views", "home", "schedule.pdf").to_s, :disposition => "inline", :type => "application/pdf")  	
  end

  def judges
  	send_file(Rails.root.join("app/views", "home", "judges.pdf").to_s, :disposition => "inline", :type => "application/pdf")  	  	
  end

  def bus_info
  	send_file(Rails.root.join("app/views", "home", "bus_info.pdf").to_s, :disposition => "inline", :type => "application/pdf")  	  	  	
  end

  def lax_info
  	send_file(Rails.root.join("app/views", "home", "lax_info.pdf").to_s, :disposition => "inline", :type => "application/pdf")  	  	  	  	
  end

  def aws
    send_file(Rails.root.join("app/views", "home", "aws_credits.pdf").to_s, :disposition => "inline", :type => "application/pdf")                    
  end

  def participants
    send_file(Rails.root.join("app/views", "home", "participants.pdf").to_s, :disposition => "inline", :type => "application/pdf")                    
  end

  def map
    send_file(Rails.root.join("app/views", "home", "floor_plan.pdf").to_s, :disposition => "inline", :type => "application/pdf")                    
  end

end
