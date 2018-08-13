# Gradescope Java+Maven Autograder Example

NOTE: The commit with this comment added works for:
* submission of IntList.java in a zip file with one level up
* submission of IntList.java directly.

Next step: make private version and modify so that it works for the Rational assignment.

Dual maintenance on this repo and that private version if anything is done other than modifying grade-java.sh and modifying the assignment itself
(i.e. the pom.xml and the source code of the base code and instructor tests.)

# Base code from [gradescope-autograder-samples-java-mvn](https://github.com/ucsb-gradescope-tools/gradescope-autograder-samples-java-mvn)

The java-mvn subdirectory of Gradescope's examples were used as a starting point.  Then these modifications were made:

* Then, since the src subdir of that repo is only a symlink, the actual files were copied in
* Then, since the original did not follow the usual mvn convention of separating regular and test code,
   the test code was moved from `src/main/java` to `src/test/java`
* Then, the `pom.xml` file was modified so that it would match the actual package name
   of the `RunTests` class (which was incorrect in the original)
* The `pom.xml` file was also modified to use the `test` classpath

# Additional modifications for .zip submission


* The `run_autograder` script was modified to look in /autograder/submission for a single zip file.   If that zip file is not found, then a message with a single
failed test is shown.






