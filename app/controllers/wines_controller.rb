class WinesController < ApplicationController

  before_filter :login_required
  before_filter :set_current_tab

  def new
    
  end
  
  def completer
    wines = Wine.where(["name like ?", "%"+params[:q]+"%" ]).limit(7)
    render :text => wines.to_json and return
  end
  
  private
  
  def set_current_tab
    @current_tab = 'wines'
  end
  
end
