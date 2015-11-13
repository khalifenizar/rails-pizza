class Pizza < ActiveRecord::Base
  validates :crust, { presence: true }
  validates :sauce, { presence: true }
  validates :size, { presence: true }
  validates :size, { inclusion: [ "small", "medium", "large" ] }
end
