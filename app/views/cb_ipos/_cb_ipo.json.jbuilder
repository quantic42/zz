json.extract! cb_ipo, :id, :ipo_id, :object_id, :valuation_amount, :valuation_currency_code, :raised_amount, :raised_currency_code, :public_at, :stock_symbol, :source_url, :source_description, :created_at, :updated_at
json.url cb_ipo_url(cb_ipo, format: :json)
