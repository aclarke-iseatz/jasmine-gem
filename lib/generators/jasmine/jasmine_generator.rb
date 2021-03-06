class JasmineGenerator < Rails::Generator::Base
  def manifest
    m = ::Rails::Generator::Manifest.new

    m.directory "public/javascripts"
    m.file "jasmine-example/src/Player.js", "public/javascripts/Player.js"
    m.file "jasmine-example/src/Song.js", "public/javascripts/Song.js"

    m.directory "spec/javascripts"
    m.file "jasmine-example/spec/PlayerSpec.js", "spec/javascripts/PlayerSpec.js"

    m.directory "spec/javascripts/helpers"
    m.file "jasmine-example/spec/SpecHelper.js", "spec/javascripts/helpers/SpecHelper.js"

    m.directory "spec/javascripts/support"
    m.file "spec/javascripts/support/jasmine_runner.rb", "spec/javascripts/support/jasmine_runner.rb"
    m.file "spec/javascripts/support/jasmine_config.rb", "spec/javascripts/support/jasmine_config.rb"
    m.file "spec/javascripts/support/jasmine-rails.yml", "spec/javascripts/support/jasmine.yml"
    m.readme "INSTALL"

    unless ::Rails::VERSION::STRING[0,1] == "3"
      m.directory "lib/tasks"
      m.file "lib/tasks/jasmine.rake", "lib/tasks/jasmine.rake"
    end
    m
  end

  def file_name
    "create_blog"
  end

end