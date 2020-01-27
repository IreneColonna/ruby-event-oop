require 'pry'

class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []


  def initialize(user_email, user_age)
    @email = user_email
    @age = user_age	
    @@all_users << self
  end    

  def self.all 
    puts @@all_users
    return @@all_users
  end

  def find_by_mail(email)
    i = 0
    n = @@all_users.size
    while i < n
      if @@all_users[i] == 

end

binding.pry
