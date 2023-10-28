# 1 - Create a class called Computer and give it an initialize method that takes no parameters
class Computer
  # 3 - add var
  @@users = Hash.new

  # 2 - Pass 2 parameters and a files instance equal to an empty hash
  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new

    # 3 - set var to add username (key) and password (vaue) to hash
    @@users[username] = password
  end

	def create(filename)
		# 4 - add filename and time to @files hash
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end

	# 5 - return the user
  def Computer.get_users
    return @@users
  end
end

# 6 - Call it
my_computer = Computer.new("tgier16", "marshmallow")