class Micropost < ApplicationRecord
    validates :content, presence: true, length: { maximum: 500 }
end
