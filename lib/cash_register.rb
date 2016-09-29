require "pry"

class CashRegister

  attr_accessor :total
  attr_reader :discount, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, quantity=1)
    @transaction_cost = cost * quantity
    @total += @transaction_cost
    @quantity = quantity
    @items.fill(item, @items.length, quantity)
  end

  def apply_discount
    @total = @total - (@total * @discount/100)
    if @discount > 0
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @transaction_cost  
  end
end
