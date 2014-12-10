module ApplicationHelper

  def time_tag_with_disabling_title(time)
    time_tag_without_disabling_title(time).sub(/title=".*?"/, "")
  end

  alias_method_chain :time_tag, :disabling_title
end
