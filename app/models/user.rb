class User < ApplicationRecord
  # Include default devise modules. Others available are:
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable

  validates :name, presence: true, uniqueness: true

end
=======
=======
>>>>>>> Stashed changes
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true

end
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
