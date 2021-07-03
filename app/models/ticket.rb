class Ticket < ApplicationRecord
    # Validations
    validates :name, presence: true, :length => { :minimum => 2, :maximum => 100 }
    validates :type, presence: true, :inclusion => { :in => %w(free paid)}
    validates :description, allow_blank: true, :length => { :maximum => 1000 }
    validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 99999999.99 }
    validates :available_slots, presence: true, :numericality => { only_integer: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 500000000 }
    # Relationships 
    belongs_to :event
end
