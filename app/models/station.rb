class Station < ActiveRecord::Base
  attr_accessible :name, :host

  validates_uniqueness_of :host
end
