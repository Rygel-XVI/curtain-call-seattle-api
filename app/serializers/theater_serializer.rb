class TheaterSerializer < ActiveModel::Serializer
  attributes :id, :location, :name
  has_many :shows
end
