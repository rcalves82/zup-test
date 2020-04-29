# frozen_string_literal: true

Before do
  # Maximizar o Browser
  @magazine_luiza = BuscarProduto.new
end

After do
  # Fechar o Browser
  Capybara.current_session.driver.quit
end
