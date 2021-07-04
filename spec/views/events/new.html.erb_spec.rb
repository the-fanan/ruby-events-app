require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new({
      user_id: 1,
      name: "a test event",
      description: "A description",
      location: "Lagos",
      start_date: '2088-01-01',
      end_date: '2088-01-02',
      start_time: '13:00',
      end_time: '16:00',
      is_active: 1
    }))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do
    end
  end
end
