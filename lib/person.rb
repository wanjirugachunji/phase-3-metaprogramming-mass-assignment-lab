
class Person
  # your code here
  @@all=[]
  def initialize(args)
    args.each_key do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", args[key])
    end
    @@all<<self
  end
  def  self.all
    @@all
  end
end