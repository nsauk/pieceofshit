module ApplicationHelper
  def custom_title_for_page
    if @ad && @ad.title
      ' • ' + @ad.title
    end
  end
end
