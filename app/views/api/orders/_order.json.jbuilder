  json.id order.id
  json.product_name order.product_name
  json.order_date order.order_date
  json.formatted_date  distance_of_time_in_words(order.order_date, Time.now)
  json.order_as_int order.order_date.to_i
  json.amount_in_cents order.amount_in_cents
  json.formatted_amount number_to_currency(order.amount_in_cents / 100.0)
