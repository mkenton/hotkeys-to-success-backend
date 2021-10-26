class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :shortcut, :description
end
