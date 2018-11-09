class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :first_name, :last_name, :email, :user_name, :birthday

  attribute :links do
    user_id = object.id
    {
      self: user_path(user_id),
      address: user_address_path(user_id)
    }
  end
end
