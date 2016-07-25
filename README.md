## Assignment for Module #2: Calculate Maximum Word Frequency


The functional goal of the assignment is to read some text from a file and find the word or words that appear the most in a line in the file. The way we are instructed to measure "the words that appear the most" is by 

    1. finding the highest frequency word(s) in each line
    2. finding lines in the file whose "highest frequency words" 
       is the greatest value among all lines.


Install the following gem. You may already have it installed.

    ```shell
    $ gem install rspec
    $ gem install rspec-its
    ```

Run the rspec command from the project root directory (i.e., `student-start` directory) 
to execute the unit tests within the spec directory. This command should be run from the root 
directory of the project. This should result in several failures until you complete your
solution in module2_assignment2.rb.

    ```shell
    $ rspec

    FFFFFFFFFFFFFFFFF

    Failures:

      1) LineAnalyzer 
         Failure/Error: subject { LineAnalyzer.new("test", 1) }
         ArgumentError:
           wrong number of arguments (2 for 0)
         # ./spec/line_analyzer_spec.rb:6:in `initialize'
         # ./spec/line_analyzer_spec.rb:6:in `new'
    ...
    Finished in 0.04955 seconds (files took 0.10746 seconds to load)
    17 examples, 17 failures
    ...
    ```


To test the script in cmd :
ruby "path to solution.rb"
and it will automatically execute the solving script

