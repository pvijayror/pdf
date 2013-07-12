Pdf::Application.routes.draw do
  resources :documents


  match "/download_pdf(.:format)" => "documents#show_pdf", :method => :get, :as=>:show_pdf

  root :to => 'documents#index'

  match "/download_pdf(.:format)" => "documents#xmldata_pdf", :method => :get, :as=>:xmldata_pdf

end
