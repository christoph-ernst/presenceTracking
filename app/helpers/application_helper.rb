module ApplicationHelper
  def nav_link_to (click_text, url)
    if action_name == click_text.downcase
      line = "<li class=\"active\">"
    else
      line = "<li>"
    end
    line += link_to click_text, url
    line += "<\li>"
    return line.html_safe

  end
end
