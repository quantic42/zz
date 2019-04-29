class CbObject < ActiveRecord::Base
#include Elasticsearch::Model
#include Elasticsearch::Model::CallBacks
  belongs_to :entity
  belongs_to :parent

  def self.search(search)
	  if search
		  name = name.find_by(name: search)
		if cb_object
			self.where(cb_objects_id: cb_object)
		else
		 cb_object.all
	 	end
       	else
	cb_object.all
	end
  	end

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

end
