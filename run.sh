#run all the input files present in the test_cases directory
#!/bin/bash
for file in test_cases/*
do
    echo "Processing $file"
    ./parser "$file"
    echo "-----------------------------------"
done

# End of script