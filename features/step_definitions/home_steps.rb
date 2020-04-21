Given("be in home screen") do
  expect(home_page.text_location_text).to eql("São Paulo")
  expect(home_page.text_orders_text).to eql("Meus Pedidos")
end
