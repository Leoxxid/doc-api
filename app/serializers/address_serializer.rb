class AddressSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :city, :street, :number

  attribute :links do
    user_id = object.user_id
    {
      self: user_address_path(user_id),
      user: user_path(user_id)
    }
  end
end
