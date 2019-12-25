module ApplicationHelper
  def full_title(samp_title = "")
    base_title = "Sample shit"
    if samp_title.empty?
      return base_title
    end
    return samp_title + " | " + base_title
  end
end
