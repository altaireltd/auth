module AltaireAuth
  class ApplicationController < ActionController::Base

    def logout
      reset_session
      redirect_to '/'
    end

    def login
      session["user"] = request.env['omniauth.auth'].extra.to_h
      redirect_to '/'
    rescue
      redirect_to '/auth/cas'
    end

  end
end
