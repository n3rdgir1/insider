# A sample Guardfile
# More info at https://github.com/guard/guard#readme


group :units do
  #guard 'rspec', cli: '-r spec_helper.rb', spec_paths: ["spec/controllers", "spec/helpers", "spec/models"] do
  guard 'rspec', spec_paths: ["spec/controllers", "spec/models"] do
    watch(%r{^spec/models/.+_spec\.rb$})
    watch(%r{^spec/controllers/.+_spec\.rb$})
    watch(%r{^app/models/(.+)\.rb})                     { |m| "spec/models/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)\.rb})                { |m| "spec/controllers/#{m[1]}_spec.rb" }
    #watch(%r{^app/helpers/(.+)\.rb})                    { |m| "spec/helpers/#{m[1]}_spec.rb" }
    #watch(%r{^spec/support/(.+)\.rb$})                  { ["spec/models", "spec/controllers"] }
  end
end
