class Ccp < ApplicationRecord
    has_many :cats, dependent: :destroy
end
