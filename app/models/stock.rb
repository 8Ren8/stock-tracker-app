class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: 'secret_token',
            endpoint: 'https://sandbox.iexapis.com/v1'
        )
        return client.price(ticker_symbol)
    end
end
