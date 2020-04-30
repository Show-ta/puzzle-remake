class Like < ApplicationRecord
    validates :user_id,{presence: true}
    validates :numpre_id,{presence: true}
    has_many :numpres
    has_many :users

end
