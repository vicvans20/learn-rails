class VisitorsController < ApplicationController
	def new
		@owner = Owner.new
    flash.now[:notice] = 'Welcome!'
    flash.now[:alert] = 'To watashi no page!!'
	end
end