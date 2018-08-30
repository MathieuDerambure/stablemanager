class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :horses
  has_many :communications

  mount_uploader :photo, PhotoUploader

  def picture
    if photo.blank?
      return "http://res.cloudinary.com/dk6vsgttl/image/upload/v1535559148/stock-vector-silhouette-girl-kid-head-with-ponytail-vector-illustration-of-a-young-girl-head-shadow-isolated-on-786469627.jpg"
    else
      photo.url
    end
  end
end
