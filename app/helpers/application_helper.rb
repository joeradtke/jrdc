module ApplicationHelper

  def here(name,path)
    content_tag :li,class: current_page?(path) ? "nav-item active" : "nav-item" do
      link_to name,path,class: "nav-link"
    end
  end
  
  def flash_class(level)
    case level
        when 'notice' then "alert alert-info"
        when 'success' then "alert alert-success"
        when 'error' then "alert alert-error"
        when 'alert' then "alert alert-danger"
    end
end
end
