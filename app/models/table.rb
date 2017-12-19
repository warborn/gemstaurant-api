class Table < ActiveRecord::Base
    has_many :orders

    validates :number, presence: true
    validates :seats, presence: true
end
