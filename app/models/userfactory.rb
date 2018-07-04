class UserFactory
  def createUser(role)
    if(role == 0){
        user = new User
        user.name = param[:name]
        user.password_digest = param[:password_digest]
        user.role = 0
        user.group = param[:group]
    } else{
        user = new User
        user.name = param[:name]
        user.password_digest = param[:password_digest]
        user.role = 1
        user.group = param[:group]
    }
    end
  end
end