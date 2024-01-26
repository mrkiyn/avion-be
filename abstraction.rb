class LoggingIn 
  def initialize(username, password)
    @username = username
    @password = password
  end

  def result
    check
  end

  private

  def check 
    static_username = "markian"
    static_password = "123"

    if @password == static_password && @username == static_username
      return "Hello #{@username}, you have logged in."
    else
      return "Wrong Credentials!"
    end
  end
end


# WRONG CREDS
user = LoggingIn.new("sample", "1241")
puts user.result

user1 = LoggingIn.new("markian", "123")
puts user.result