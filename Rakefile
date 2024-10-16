task :default => :spec

desc "Ejecutar las espectativas de las funciones de figuras geométricas"
task :spec do
  sh "rspec -I. spec/figgeo_spec.rb"
end

desc "Ejecutar en modo verborreico con documentacion"
task :doc do
  sh "rspec -I. spec/figgeo_spec.rb --format documentation"
end
