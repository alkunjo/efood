class Catering2Controller < ApplicationController
  layout 'application2'
  def index
  	@caterings = Catering.paginate(:page => params[:page], :per_page => 8)
  end
end
