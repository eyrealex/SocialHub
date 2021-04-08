class YourService < BaseService

  def initialize(first_variable, second_variable)
    self.first_variable = first_variable
    self.second_variable = second_variable
  end

  def call
    # method body
  end

  private_class_method
  attr_accessor :first_variable, second_variable

end
