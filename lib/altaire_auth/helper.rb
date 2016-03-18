module AltaireAuth
  class Helper
    def self.authenticate
      current_user || redirect_to('/auth')
    end
    def self.current_user
      session['user']
    end
  end
end
