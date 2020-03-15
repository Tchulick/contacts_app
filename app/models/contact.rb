class Contact < ApplicationRecord
  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/, message: "Is Invalid" }

  def friendly_updated_at
    updated_at.strftime("Updated on %m/%d/%Y at %I:%M%p")
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
    return full_name
  end
end
