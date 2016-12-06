module ApplicationHelper
  #
  # active_item_in_sidebar_if
  #
  # @param {String} some_path
  # @param {Symbol} mode (optional)
  #
  def active_item_in_sidebar_if some_path, mode=:default
    case mode
      when :default
        # Exact match
        return "sidebar-menu-active" if some_path.include?("#{controller_name}/#{action_name}")
      when :controller_only
        return "sidebar-menu-active" if some_path.include?("#{controller_name}")
        return "sidebar-menu-active" if controller_name.include?("#{some_path}")
      else
        return ""
    end
    return ""
  rescue
    ""
  end

end
