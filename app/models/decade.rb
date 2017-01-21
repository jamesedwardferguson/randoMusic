# == Schema Information
#
# Table name: decades
#
#  id         :integer          not null, primary key
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Decade < ActiveRecord::Base
  has_many :songs
  has_many :albums
end
