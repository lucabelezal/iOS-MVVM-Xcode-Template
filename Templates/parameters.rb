class Template
    attr_accessor :name, :generate_io
end

class Complexity
    attr_accessor :name
end

module Initializable

    def initialize(params)
        params.each do |key, value|
          instance_variable_set("@#{key}", value)
        end
    end

end

class Template 
    include Initializable

    def self.types
        [normal]
    end

    def self.normal
        Template.new({
            name: "Module",
            generate_io: false
        })
    end

end

class Complexity 
    include Initializable

    def self.types
        [normal]
    end

    def self.default
        normal
    end

    def self.simple
        Complexity.new({
            name: "Controller"
        })
    end

end