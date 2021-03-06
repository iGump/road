Road::Application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  # ---------
  # resources
  # ---------
  resources :stories, shallow: true, constraints: { id: /\d+/ } do
    collection do
      get :by_bounds, :by_keyword
      get 'by_user/:user_id', action: :by_user, constraints: { user_id: /\d+/ }
    end

    get :poster, on: :member

    resources :path_nodes, :pois, :photos
  end

  namespace :m do
    resources :stories, shallow: true, constraints: { id: /\d+/ } do
      collection do
        get :by_bounds, :by_keyword
      end

      resources :path_nodes, :pois, :photos
    end

    resources :users, shallow: true, constraints: { id: /\d+/ } do
      collection do
        get :sign_in
      end

      resources :path_nodes, :pois, :photos
    end
  end

  # ----
  # misc
  # ----
  root to: 'stories#index'

end
