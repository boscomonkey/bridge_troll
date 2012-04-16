require 'spec_helper'

describe Event do
  it "must have a title" do
    event = Factory.build(:event, :title => nil)
    event.should_not be_valid
  end
  
  it "must have a date" do
    event = Factory.build(:event, :date => nil)
    event.should_not be_valid
  end
  
  it "#organizer=" do
    event = Factory.create(:event)
    user = Factory.create(:user)

    event.organizers.count.should == 0
    event.organizer = user
    event.save
    event.organizers.count.should == 1
  end
end
