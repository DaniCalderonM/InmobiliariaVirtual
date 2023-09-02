class ApplicationController < ActionController::Base

    protected

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to home_index_path, notice: "No estás autorizado para realizar esta acción"
        end
    end

    def after_sign_in_path_for(resource)
        home_index_path
    end
end
