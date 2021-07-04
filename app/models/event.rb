class Event < ApplicationRecord
    # Validations
    validates :name, presence: true, :length => { :minimum => 2, :maximum => 100 }
    validates :description, allow_blank: true, :length => { :maximum => 1000 }
    validates :location, presence: true, :length => { :minimum => 2, :maximum => 100 }
    validates_date :start_date, presence: true, on_or_after: :today, message: 'must be a date on or after today'
    validates_date :end_date, presence: true, on_or_after: :start_date, message: 'must be a date after the Start Date'
    validates_time :start_time, presence: true, message: 'must be specified'
    validates_time :end_time, presence: true, after: :start_time, message: 'must be specified and must be after start time'
    validates :is_active, inclusion: [0, 1]

    # Relationships 
    belongs_to :user
    has_many :tickets, index_errors: true

    accepts_nested_attributes_for :tickets, allow_destroy: true

    validates_associated :tickets
end
