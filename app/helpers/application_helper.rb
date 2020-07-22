module ApplicationHelper
  def is_active(action, controller)
    if params[:action] == action && params[:controller] == controller
      'selected'
    else
      nil
    end
  end
end
