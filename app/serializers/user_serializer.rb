class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :img_url, :bio, :intro, :title, :password_digest
end
