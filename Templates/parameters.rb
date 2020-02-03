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
            name: "Feature",
            generate_io: false
        })
    end

end

class Complexity 
    include Initializable

    def self.types
        [action, cell, controller, coordinator, router, service]
    end

    def self.default
        controller
    end

    def self.action
        Complexity.new({
            name: "Action"
        })
    end

    def self.cell
        Complexity.new({
            name: "Cell"
        })
    end

    def self.controller
        Complexity.new({
            name: "Controller"
        })
    end

    def self.coordinator
        Complexity.new({
            name: "Coordinator"
        })
    end

    def self.router
        Complexity.new({
            name: "Router"
        })
    end

    def self.service
        Complexity.new({
            name: "Service"
        })
    end

end