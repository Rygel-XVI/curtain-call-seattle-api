class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :description
  belongs_to :theater
end
