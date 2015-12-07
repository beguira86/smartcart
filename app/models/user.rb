class User < ActiveRecord::Base
	has_many :roommates
	has_many :houses, through: :roommates
	has_secure_password

  before_validation :ensure_access_token!

  validates_presence_of :username
  validates :access_token, presence: true, uniqueness: true


  def home
    # self.houses.find_by(primary: true)
    self.roommates.find_by(primary: true).house
  end

  # def change_home
  #   self.houses.find_by(primary: true)  set to false and then set new house to true
  # end

  # def edibles
  #   self.home.edibles
  # end

  # def groceries
  #   self.home.grocieries
  # end

  def ensure_access_token!
    if self.access_token.blank?
      self.access_token = User.generate_token
    end
  end

  def self.generate_token
    token = SecureRandom.hex
    while User.exists?(access_token: token)
      token = SecureRandom.hex
    end
    token
  end
end
