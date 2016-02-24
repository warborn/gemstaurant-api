class OrderPayer
  attr_reader :order, :message, :status, :receipt

  def initialize order
    @order = order
  end

  def pay amount, payment_method
    if @order.total_amount == amount
      @receipt = Receipt.new(order: @order, payment_method: payment_method)
      if @receipt.save
        @status = :ok
      else
        @status  = :error
        @message = @receipt.errors
      end
    else
      @status  = :error
      @message = "You didn't pay for the exact amount: #{amount} instead of #{@order.total_amount}"
    end
  end

  def ok?
    @status == :ok
  end
end
