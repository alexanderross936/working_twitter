class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # placed around line 7:
  serialize :following, Array

  has_many :tweets
   mount_uploader :avatar, AvatarUploader
     validates :username, presence: true
  validates :username, uniqueness: true
end