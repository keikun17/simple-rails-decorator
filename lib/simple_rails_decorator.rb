require "simple_rails_decorator/version"
require "delegate"

class SimpleDecorator
  include ActionView::Helpers
  include ActionView::Context
  include Rails.application.routes.url_helpers

  def self.decorate_collection(arr)
    decorated_collection = []
    arr.each do |item|
      decorated_collection << self.new(item)
    end
    decorated_collection
  end

  def decorated_object
    __getobj__
  end
end
