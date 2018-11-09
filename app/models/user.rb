class User < ApplicationRecord
  has_one :address, dependent: :destroy, required: true
  accepts_nested_attributes_for :address
end
