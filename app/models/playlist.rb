# == Schema Information
#
# Table name: playlists
#
#  id          :integer          not null, primary key
#  name        :text
#  playlist_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Playlist < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :songs 
end
