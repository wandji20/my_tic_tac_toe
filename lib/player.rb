class Player
  attr_accessor :name, :my_num

  def initialize(name, avatar)
    @name = name
    @my_num = []
    @avatar = avatar
  end

  def update_my_num(num)
    @my_num << num
  end

  def valid_name(name)
    name =~ /[A-Za-z]/ && name != ~ /\s/ ? true : false
  end
end
