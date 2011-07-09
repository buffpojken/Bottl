class HomesController < ApplicationController

  before_filter :login_required
  before_filter :set_current_tab

  def show
    
  end

  private
  
  def set_current_tab
    @current_tab = "home"
  end

end
