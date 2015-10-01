class WelcomeController < ApplicationController

	def dashboard
		@user = User.find(current_user.id)
	end

end
