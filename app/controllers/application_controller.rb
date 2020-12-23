class ApplicationController < ActionController::Base
    helper_method :current_user, :is_admin

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end

    def is_admin
      if session[:user_id]
        if User.find(session[:user_id]).email == 'admin@email.com'
          true
        else
          false
        end
      else
        false
      end
    end

end
