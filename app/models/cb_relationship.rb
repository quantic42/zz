class CbRelationship < ApplicationRecord
  belongs_to :relationship
  belongs_to :person_object
  belongs_to :relationship_object
end
