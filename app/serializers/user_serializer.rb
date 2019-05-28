class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :img_url, :bio, :intro, :password_digest
end
