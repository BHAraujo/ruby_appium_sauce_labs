Given("be in home screen") do
  if CONFIG["environment"] == "sauce_labs"
    sleep 5
    $driver.switch_to().alert().accept();
  end
  expect(home_page.text_location_text).to eql("São Paulo")
  expect(home_page.text_orders_text).to eql("Meus Pedidos")
end
