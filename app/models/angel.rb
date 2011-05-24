class Angel < ActiveRecord::Base
  include Followable

  mount_uploader :logo, LogoUploader

  has_many :user_ventures, :as => :venture
  has_many :users, :through => :user_ventures
end