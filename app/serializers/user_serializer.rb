class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :display_name, :role
  # has_many :user_lessons
end
