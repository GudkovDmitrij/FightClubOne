class Photo < ActiveRecord::Base
  attr_accessible :category_id, :URL, :name
  belongs_to :category
end
