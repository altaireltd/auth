AltaireAuth::Engine.routes.draw do
  get '/logout' => "application#logout"
  get '/:strategy/callback' => "application#login"
  get '/', to: redirect("/auth/cas")
end
