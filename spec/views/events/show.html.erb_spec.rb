require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    event = Event.create!({
      user_id: 1,
      name: "a test event",
      description: "A description",
      location: "Lagos",
      start_date: '2088-01-01',
      end_date: '2088-01-02',
      start_time: '13:00',
      end_time: '16:00',
      is_active: 1
    })
    ticket = Ticket.create({
      name: 'Access',
      payment_type: 'free',
      description: 'Allow access for one',
      price: 0,
      available_slots: 100
    })
    event.tickets = [ticket]
    @event = assign(:event, event)
  end

  it "renders attributes in <p>" do
    render
  end
end
