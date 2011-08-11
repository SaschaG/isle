class Village < ActiveRecord::Base
  belongs_to :user
  has_many :rathaus 
  has_many :holzfaellers 
  has_many :mienes 
  has_many :steinbruches
end
