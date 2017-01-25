# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :text
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :playlists
  has_many :songs
end
