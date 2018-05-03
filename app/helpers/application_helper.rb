module ApplicationHelper
  def displayed_title(page_title = "")
    default_title = "rails_tu"
    page_title.blank? ? default_title : "#{page_title} | #{default_title}"
  end
end
