Rails.application.routes.draw do
  namespace :api do
    get "/contacts_page" => "contacts#second_contact"
    get "/all_contacts" => "contacts#all_contacts"
  end
end
