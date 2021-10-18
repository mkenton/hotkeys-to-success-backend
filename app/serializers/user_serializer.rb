class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :display_name, :password_digest
  # has_many :user_lessons
end
