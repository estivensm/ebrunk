class Runner < ApplicationRecord
  belongs_to :country, optional: true
  has_many :brunks , :foreign_key => 'runner_one_id'
  has_many :brunks_one , :foreign_key => 'runner_two_id',  class_name: 'Brunk'
  has_many :properties

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, RunnerAvatarUploader
end
