json.extract! cb_fund, :id, :fund_id, :object_id, :name, :funded_at, :raised_amount, :raised_currency_code, :source_url, :source_description, :created_at, :updated_at
json.url cb_fund_url(cb_fund, format: :json)
