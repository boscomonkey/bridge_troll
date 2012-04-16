require 'spec_helper'

describe EventsController do
  describe "volunteer" do
    before do
      @event = Factory(:event)
    end

    context "there is already a rsvp for the volunteer/event" do
      before do
        @user = Factory(:user)
        sign_in @user

        @rsvp = VolunteerRsvp.create(:user_id => @user.id, :event_id => @event.id, :attending => false)
      end

      it "changes the attending attribute on the rsvp to true" do
        get :volunteer, {:id => @event.id}
        @rsvp.reload.attending.should == true
      end

      it "does not create a new rsvp"
      it "redirects to the event page related to the rsvp"

      it "flashes a confirmation" do
        get :volunteer, {:id => @event.id}
        flash[:notice].should match(/volunteer/i)
      end
    end

    context "there is no rsvp for the volunteer/event" do
      it "creates a new rsvp, with the the right attributes"
      it "redirects to the event page related to the rsvp"
      it "flashes a confirmation"
    end

    context "without logging in, I am redirected from the page" do
      it "redirects to the events page" do
        get :volunteer, {:id => @event.id}
        response.should redirect_to("/events")
      end

      it "does not create any new rsvps" do
        expect {
          get :volunteer, {:id => @event.id}
        }.to_not change { VolunteerRsvp.count }
      end
    end
  end

  describe "#create" do
    before do
      @event = Factory.build(:event)
      @user = Factory.create(:user)
      sign_in @user
    end

    it "should pass :organizer key to Event.new with current_user value" do
      Event.should_receive(:new).with(hash_including(:organizer => @user)).
        and_return(@event)

      post :create, :event => {:title => "test 111 title"}
    end
  end
end
