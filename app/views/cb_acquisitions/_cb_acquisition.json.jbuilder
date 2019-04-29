json.extract! cb_acquisition, :id, :acquisition_id, :acquiring_object_id, :acquired_object_id, :term_code, :price_amount, :price_currency_code, :acquired_at, :source_url, :source_description, :created_at, :updated_at
json.url cb_acquisition_url(cb_acquisition, format: :json)
