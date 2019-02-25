desc 'Run factory specs.'
Rake::TestTask.new(:factory_specs) do |t|
  t.pattern = './spec/factories_spec.rb'
end

task test: :factory_specs