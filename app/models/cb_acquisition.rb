class CbAcquisition < ApplicationRecord
  belongs_to :acquisition
  belongs_to :acquiring_object
  belongs_to :acquired_object
end
