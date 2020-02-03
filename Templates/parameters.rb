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
            name: "Files",
            generate_io: false
        })
    end

end

class Complexity 
    include Initializable

    def self.types
        [action, cell, controller, coordinator, router, service, mvvm, view]
    end

    def self.default
        mvvm
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

    def self.view
        Complexity.new({
            name: "View"
        })
    end

    def self.mvvm
        Complexity.new({
            name: "Controller+ViewModel+View"
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