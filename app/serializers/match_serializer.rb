class MatchSerializer < ActiveModel::Serializer
  attributes :match_date, :course_name, :players, :total_dots

  has_many :dots
end
