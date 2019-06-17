class TheaterSerializer < ActiveModel::Serializer
  attributes :id, :location, :name, :updated_at
  has_many :shows
end
