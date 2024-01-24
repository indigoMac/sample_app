module SessionsHelper
    # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    # Guard against session replay attacks.
    # See https://bit.ly/33UvK0w for more.
    session[:session_token] = user.session_token
  end

  def remember(user)
    user.remember
    Rails.logger.debug "Remembering user: #{user.inspect}"  # Debugging
    Rails.logger.debug "User's remember_token: #{user.remember_token}"  # Debugging
    cookies.permanent.encrypted[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
    Rails.logger.debug "Cookies should be set: user_id: #{cookies.permanent.encrypted[:user_id]}, remember_token: #{cookies.permanent[:remember_token]}"  # Debugging
  end
  
  def current_user
    if (user_id = session[:user_id])
        user = User.find_by(id: user_id)
        if user && session[:session_token] == user.session_token
          @current_user = user
        end
    elsif (user_id = cookies.encrypted[:user_id])
      Rails.logger.debug "Found user_id in cookies: #{user_id}"  # Debugging
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        Rails.logger.debug "User authenticated with remember_token: #{cookies[:remember_token]}"  # Debugging
        log_in user
        @current_user = user
      end
    end
    @current_user
  end
  
  # Returns true if the given user is the current user.
  def current_user?(user)
    user && user == current_user
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    reset_session
    @current_user = nil
  end
end
