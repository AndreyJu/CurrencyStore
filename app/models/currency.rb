class Currency < ActiveRecord::Base
  has_one :wallet

  validates :name,        presence: true, uniqueness: true
  validates :code,        presence: true, uniqueness: true
  validates :cost,        presence: true
  #validates :valuta,      presence: true
  validates :description, presence: true
  #validates :logo,        presence: true

  before_save { self.name = name.downcase }
  before_save { self.code = code.upcase }

end
