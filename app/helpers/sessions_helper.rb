module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end

    # assertions
    def assert_is_representative
        if !is_representative?
            render json: { status: 401 }
        end
    end

    private

    def is_representative?
        logged_in? && current_user.role == "representative"
    end
end
