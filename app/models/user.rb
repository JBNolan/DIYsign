class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :projects

  validates :username, presence: true
  validates :username, length: { maximum: 15 }
  validates :username, uniqueness: true
  validates :zip, presence: true, length: { is: 5 }, numericality: { only_integer: true }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
