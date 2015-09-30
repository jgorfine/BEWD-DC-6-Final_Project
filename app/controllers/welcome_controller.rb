class WelcomeController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :show]

  def index
  	if user_signed_in?
  		show_dashboard
  	else
  		show_introduction
  	end
  end



  protected

	def show_dashboard
		render template: "users/dashboard"
	end

	def show_introduction
		render template: "welcome/index"
	end

end
