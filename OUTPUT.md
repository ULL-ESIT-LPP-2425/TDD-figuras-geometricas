# Ejemplo de pasos realizados


1. No existe el fichero de pruebas  - falla

     $rake
     rspec -I. spec/figgeo_spec.rb
     
     An error occurred while loading ./spec/figgeo_spec.rb.
     Failure/Error: __send__(method, file)
     
     LoadError:
       cannot load such file -- /home/usuario/LPP/TDD/spec/figgeo_spec.rb
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/configuration.rb:2139:in `load'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/configuration.rb:2139:in `load_file_handling_errors'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/configuration.rb:1638:in `block in load_spec_files'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/configuration.rb:1636:in `each'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/configuration.rb:1636:in `load_spec_files'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/runner.rb:102:in `setup'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/runner.rb:86:in `run'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/runner.rb:71:in `run'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/lib/rspec/core/runner.rb:45:in `invoke'
     # /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.13.1/exe/rspec:4:in `<top (required)>'
     # /home/usuario/.rvm/gems/ruby-2.7.2/bin/rspec:23:in `load'
     # /home/usuario/.rvm/gems/ruby-2.7.2/bin/rspec:23:in `<main>'
     # /home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `eval'
     # /home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `<main>'
     # 
     #   Showing full backtrace because every line was filtered out.
     #   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
     #   RSpec::Configuration#backtrace_inclusion_patterns for more information.
     No examples found.
     
     
     Finished in 0.00003 seconds (files took 0.17609 seconds to load)
     0 examples, 0 failures, 1 error occurred outside of examples
     
     rake aborted!
     Command failed with status (1): [rspec -I. spec/figgeo_spec.rb...]
     /home/usuario/LPP/TDD/Rakefile:5:in `block in <top (required)>'
     Tasks: TOP => default => spec
     (See full trace by running task with --trace)

2. Se crea fichero de pruebas vacío  -- funciona

     $touch mkdir spec
     $touch spec/figgeo_spec.rb
     $ rake
     rspec -I. spec/figgeo_spec.rb
     No examples found.
     
     
     Finished in 0.00021 seconds (files took 0.05534 seconds to load)
     0 examples, 0 failures

3. Se modifica el fichero de pruebas indicando dónde esta el fichero de código -- falla

     $ rake
     rspec -I. spec/figgeo_spec.rb
     
     An error occurred while loading ./spec/figgeo_spec.rb.
     Failure/Error: require 'figgeo'
     
     LoadError:
       cannot load such file -- figgeo
     # ./spec/figgeo_spec.rb:1:in `<top (required)>'
     No examples found.
     
     
     Finished in 0.00003 seconds (files took 0.08869 seconds to load)
     0 examples, 0 failures, 1 error occurred outside of examples
     
     rake aborted!
     Command failed with status (1): [rspec -I. spec/figgeo_spec.rb...]
     /home/usuario/LPP/TDD/Rakefile:5:in `block in <top (required)>'
     Tasks: TOP => default => spec
     (See full trace by running task with --trace)


4. Se crea fichero de código vacío  -- funciona

     $ mkdir lib
     $ touch lib/figgeo.rb
     $ rake
     rspec -I. spec/figgeo_spec.rb
     No examples found.
     
     
     Finished in 0.00031 seconds (files took 0.07999 seconds to load)
     0 examples, 0 failures

5. Se añaden pruebas al fichero de pruebas  -- falla 

     $ rake
     rspec -I. spec/figgeo_spec.rb
     FFFF
     
     Failures:
     
       1) Figuras Geométricas Cuadrado - entero El perímetro de un cuadrado de lado 4 tiene el valor de 16
          Failure/Error: expect(perimetro_cuadrado(4)).to eq(16)
          
          NoMethodError:
            undefined method `perimetro_cuadrado' for #<RSpec::ExampleGroups::FigurasGeomTricas::CuadradoEntero:0x000061b90b7fb680>
          # ./spec/figgeo_spec.rb:6:in `block (3 levels) in <top (required)>'
     
       2) Figuras Geométricas Cuadrado - entero El area de un cuadrado de lado 4 tiene el valor de 16
          Failure/Error: expect(area_cuadrado(4)).to eq(16)
          
          NoMethodError:
            undefined method `area_cuadrado' for #<RSpec::ExampleGroups::FigurasGeomTricas::CuadradoEntero:0x000061b90b7ebb68>
          # ./spec/figgeo_spec.rb:9:in `block (3 levels) in <top (required)>'
     
       3) Figuras Geométricas Cuadrado - real El perímetro de un cuadrado de lado 4.0 tiene el valor de 16.0
          Failure/Error: expect(perimetro_cuadrado(4.0)).to eq(16.0)
          
          NoMethodError:
            undefined method `perimetro_cuadrado' for #<RSpec::ExampleGroups::FigurasGeomTricas::CuadradoReal:0x000061b90b7e3198>
          # ./spec/figgeo_spec.rb:14:in `block (3 levels) in <top (required)>'
     
       4) Figuras Geométricas Cuadrado - real El area de un cuadrado de lado 4.0 tiene el valor de 16.0
          Failure/Error: expect(area_cuadrado(4.0)).to eq(16.0)
          
          NoMethodError:
            undefined method `area_cuadrado' for #<RSpec::ExampleGroups::FigurasGeomTricas::CuadradoReal:0x000061b90b7dd8d8>
          # ./spec/figgeo_spec.rb:17:in `block (3 levels) in <top (required)>'
     
     Finished in 0.00334 seconds (files took 0.07989 seconds to load)
     4 examples, 4 failures
     
     Failed examples:
     
     rspec ./spec/figgeo_spec.rb:5 # Figuras Geométricas Cuadrado - entero El perímetro de un cuadrado de lado 4 tiene el valor de 16
     rspec ./spec/figgeo_spec.rb:8 # Figuras Geométricas Cuadrado - entero El area de un cuadrado de lado 4 tiene el valor de 16
     rspec ./spec/figgeo_spec.rb:13 # Figuras Geométricas Cuadrado - real El perímetro de un cuadrado de lado 4.0 tiene el valor de 16.0
     rspec ./spec/figgeo_spec.rb:16 # Figuras Geométricas Cuadrado - real El area de un cuadrado de lado 4.0 tiene el valor de 16.0
     
     rake aborted!
     Command failed with status (1): [rspec -I. spec/figgeo_spec.rb...]
     /home/usuario/LPP/TDD/Rakefile:5:in `block in <top (required)>'
     Tasks: TOP => default => spec
     (See full trace by running task with --trace)

6. Se añaden el código al fichero de pruebas  -- funciona 

     $ rake
     rspec -I. spec/figgeo_spec.rb
     ....
     
     Finished in 0.00396 seconds (files took 0.08765 seconds to load)
     4 examples, 0 failures


     $ rake doc
     rspec -I. spec/figgeo_spec.rb --format documentation
     
     Figuras Geométricas
       Cuadrado - entero
         El perímetro de un cuadrado de lado 4 tiene el valor de 16
         El area de un cuadrado de lado 4 tiene el valor de 16
       Cuadrado - real
         El perímetro de un cuadrado de lado 4.0 tiene el valor de 16.0
         El area de un cuadrado de lado 4.0 tiene el valor de 16.0
     
     Finished in 0.0025 seconds (files took 0.09607 seconds to load)
     4 examples, 0 failures
