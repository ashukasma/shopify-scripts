count = 0
Input.cart.line_items.each do |line_item|
  next if !line_item.variant.product.tags.include? '3for30'
  count = count + line_item.quantity
end

if count >=3
  Inf = 1.0/0
  case count
    when 3..5
      amount = 1000
      message = "3+ Discount"
    when 6..11
      amount = 958
      message = "6+ Discount"
    when 12..Inf
      amount = 916
      message = "123+ Discount"
    end  
  Input.cart.line_items.each do |line_item|
    next if !line_item.variant.product.tags.include? '3for30'
    new_amount = line_item.quantity * amount
    line_item.change_line_price(Money.new(cents: new_amount), message: message)
  end
end

Output.cart = Input.cart