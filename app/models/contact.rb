class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("Updated on %m/%d/%Y at %I:%M%p")
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
    return full_name
  end
end
