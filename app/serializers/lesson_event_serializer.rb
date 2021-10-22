class LessonEventSerializer < ActiveModel::Serializer
  attributes :id, :completed
  has_one :lesson
  has_one :user
end
