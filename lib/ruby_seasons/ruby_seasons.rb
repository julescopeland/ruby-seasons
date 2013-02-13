module RubySeasons
  module ClassMethods
    
  end

  module InstanceMethods
    def season
      'spring'
    end
  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end