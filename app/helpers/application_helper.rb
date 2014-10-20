module ApplicationHelper

  
  def active_for(path)
    "active" if current_page?(path)
  end

end
