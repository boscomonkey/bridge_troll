# == Schema Information
# Schema version: 20120410060636
#
# Table name: events
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  date        :datetime
#  location_id :integer
#

class Event < ActiveRecord::Base
  belongs_to :location
  has_many :volunteerRsvps
  has_many :event_permissions

  has_many :users, :through => :volunteerRsvps
  has_many :organizers, :through => :event_permissions, :source => :user

  validates_presence_of :title
  validates_presence_of :date

  def organizer= user
    event_permissions.build :user => user
  end
end
