module ApplicationHelper
  
  def selected_tab(current)
    return "current" if current == @current_tab
  end

end
