module ApplicationHelper
  def displayed_title(page_title = "")
    default_title = "rails_tu"
    if page_title.blank?
      default_title
    else
      "#{page_title} | #{default_title}"
    end
  end
end
