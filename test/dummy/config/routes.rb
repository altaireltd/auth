Rails.application.routes.draw do

  mount AltaireAuth::Engine => "/auth"
end
