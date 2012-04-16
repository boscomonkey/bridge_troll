# == Schema Information
# Schema version: 20120416225458
#
# Table name: event_permissions
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  event_id   :integer
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_event_permissions_on_event_id  (event_id)
#  index_event_permissions_on_user_id   (user_id)
#

# The role attribute is left for future use.
#
class EventPermission < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
end
