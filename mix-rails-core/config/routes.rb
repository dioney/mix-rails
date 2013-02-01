Rails.application.routes.draw do
  
  match "system/uploads/*path" => "gridfs#serve"

  scope Admix::namespace_path, as: :admix, module: :admix do
    resources :categories
  end

end