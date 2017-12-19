class Order < ActiveRecord::Base
  belongs_to :table
  has_many :order_items
  has_many :items, through: :order_items

  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :table_id, presence: true

  def total_amount
    items.inject(0) { |sum, item| sum + item.price }
  end
end
