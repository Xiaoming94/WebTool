module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  def is_logged_in?
    !session[:user_id].nil?
  end
  def logged_in?
    !current_user.nil?
  end

  def is_admin?
    current_user.is_admin?
  end
end
