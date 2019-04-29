json.extract! cb_relationship, :id, :relationship_id, :person_object_id, :relationship_object_id, :start_at, :end_at, :is_past, :sequence, :title, :created_at, :updated_at
json.url cb_relationship_url(cb_relationship, format: :json)
