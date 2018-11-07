Gem::Specification.new do |s|
  s.name    = "reverse"
  s.version = "0.0.1"
  s.summary = "Reverse with C and Go!!!!"
  s.author  = "Andrew Stucki"

  s.files = Dir.glob("ext/**/*.{c,rb}") +
            Dir.glob("lib/**/*.rb")

  s.extensions << "ext/reverse/extconf.rb"

  s.add_development_dependency "rake-compiler"
end
