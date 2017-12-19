class ReceiptSerializer < ActiveModel::Serializer
  attributes :id, :payment_method
  belongs_to :order
end
