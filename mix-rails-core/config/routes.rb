Rails.application.routes.draw do
  
  scope Admix::namespace_path, as: :admix, module: :admix do
    resources :categories
  end

end