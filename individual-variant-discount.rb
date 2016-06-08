Input.cart.line_items.each do |line_item|
  #puts line_item.variant.id 
  products = line_item.variant.id
  puts products
  individualVariants = [21203257799,21926378759,21926831559,21926884807]
  #next if products && alohaVariants == products
  next if (line_item.variant.id != 21203257799) and (line_item.variant.id != 21926378759) and (line_item.variant.id != 21926831559) and (line_item.variant.id != 21926884807) 
  line_item.change_line_price(line_item.line_price * 0.80263158, message: "Bundle Discount")
end

Output.cart = Input.cart