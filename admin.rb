module AdminPermission
    def edit_users_profile
      puts "Admin updated all users profile"
    end

    def admin_login
        login
    end
end
  
module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
    
    def buyer_login
        login
    end
end
  
class User
    attr_accessor :password

    def initialize(username, password, ip_address)
        @username = username
        @password = password
        @ip_address = ip_address
    end

    def change_password=(new_pw)
        @password = new_pw
    end
  
    protected
    def login
      puts "User logged in. IP address: #{@ip_address}"
    end
end
  
  
class Admin < User
    include AdminPermission
end
  
class Buyer < User
    include BuyerPermission
end
  
## execute
  
my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'