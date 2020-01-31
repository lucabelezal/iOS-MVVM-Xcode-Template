class Template
    attr_accessor :name, :generate_io
end

class Interface
    attr_accessor :name
end

class Complexity
    attr_accessor :name, :generate_formatter
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

class Interface 
    include Initializable

    def self.types
        [none]
    end

    def self.default
        none
    end

    def self.none
        Interface.new({
            name: "None"
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
            name: "Simple"
        })
    end

end