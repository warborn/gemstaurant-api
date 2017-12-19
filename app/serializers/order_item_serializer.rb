class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  belongs_to :order
  belongs_to :item
end
