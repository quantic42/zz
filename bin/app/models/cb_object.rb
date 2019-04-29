class CbObject < ActiveRecord::Base
  belongs_to :entity
  belongs_to :parent
end
