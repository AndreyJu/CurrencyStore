class HomeController < ApplicationController
  def index
  	if current_user
  		#redirect_to
  		render text: 'HomeController#Index >> current user'
  	else
  		render text: 'HomeController#Index >> Something Wrong! check'
  	end
  end
end
