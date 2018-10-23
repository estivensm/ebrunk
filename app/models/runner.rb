class Runner < ApplicationRecord
  belongs_to :country, optional: true
 
  has_many :property
  has_many :brunk
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, RunnerAvatarUploader
end
