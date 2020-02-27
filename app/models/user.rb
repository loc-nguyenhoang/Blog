class User < ApplicationRecord
    validates :name, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end