class Api::ContactsController < ApplicationController
  def second_contact
    @contact = Contact.second
    render "contacts.json.jb"
  end

  def all_contacts
    @all_contacts = Contact.all
    render "contact_list.json.jb"
  end
end
