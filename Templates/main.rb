#!/usr/bin/env ruby

require 'fileutils'
require './generator'
require './parameters'

PATH = "MVVM Templates"
RESOURCES = "Resources"


def generate_view_controller(template, complexity, source_folder, destination_folder)
    generator = Generator.new("#{source_folder}/___FILEBASENAME___ViewController.swift.erb", template, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___ViewController.swift"
end

def generate(template, complexity)
    source_folder = "#{RESOURCES}/Templates"
    destination_folder = "#{PATH}/#{template.name}.xctemplate/#{complexity.name}"
    generate_view_controller(template, complexity, source_folder, destination_folder)
end

def generate_info_plist(template)ma
    generator = Generator.new("#{RESOURCES}/TemplateInfo.plist.erb", template, Complexity)
    generator.save "#{PATH}/#{template.name}.xctemplate/TemplateInfo.plist"
end

def copy_images(template)
    source = "#{RESOURCES}/Images/."
    destination = "#{PATH}/#{template.name}.xctemplate"
    FileUtils.cp_r source, destination
end

Template.types.each do |template|
    generate_info_plist template
    copy_images template
    
    Complexity.types.each do |complexity|

        generate(template, complexity)

    end

end