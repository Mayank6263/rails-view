module Visible
  extend ActiveSupport::Concern
  # def insmasg
  #   "instance method from concern"
  # end

  def msg
    "name from concern"
  end
end
