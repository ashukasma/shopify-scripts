Input.cart.line_items.each do |line_item|
  product = line_item.variant.product
  puts line_item.properties.size 
  next if line_item.properties.size == 0
  # next if product.gift_card?
  # next unless product.id == 3571382279
  line_item.change_line_price(line_item.line_price * 0.88819, message: "Product Bundle Discount!")
end

Output.cart = Input.cart