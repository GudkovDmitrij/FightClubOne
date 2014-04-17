class Zayvka < ActiveRecord::Base
  attr_accessible :email, :familiya, :info_O_sebe, :name, :nomer_telefona, :otchestvo

  validates :name, :familiya, :nomer_telefona, :otchestvo, presence: true

  validates :email,
            :length => {:minimum => 5, :maximum => 254},
            :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end
