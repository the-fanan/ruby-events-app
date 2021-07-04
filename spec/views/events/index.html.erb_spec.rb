require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    event1 = Event.create!({
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
    ticket1 = Ticket.create({
      name: 'Access',
      payment_type: 'free',
      description: 'Allow access for one',
      price: 0,
      available_slots: 100
    })
    event1.tickets = [ticket1]

    event2 = Event.create!({
      user_id: 1,
      name: "a test event 2",
      description: "A description 2",
      location: "Lagos",
      start_date: '2088-01-01',
      end_date: '2088-01-02',
      start_time: '13:00',
      end_time: '16:00',
      is_active: 1
    })
    ticket2 = Ticket.create({
      name: 'Access',
      payment_type: 'paid',
      description: 'Allow access for one',
      price: 2000,
      available_slots: 1000
    })
    event2.tickets = [ticket2]
    assign(:events, [event1, event2])
  end

  it "renders a list of events" do
    render
  end
end
