class User < ApplicationRecord
    validates :name, {uniqueness:true}
    validates :password,{presence:true}
    has_many :numpres
end
