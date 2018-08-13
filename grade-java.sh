

base=${1:-autograder}

# Now ${base}/STUDENT-WORK should contain the unzipped student submission
# Current directory is the contents of the instructor repo
# Do whatever you need to do to grade the submission.

# That might mean copying the instructor's Ant build.xml or Maven pom.xml over to the student one,
# plus copying the contents of ./src/test/java over to ${base}/STUDENT-WORK/src/test/java 
# And then running there.

# Or it might mean copying the students code into the instructors's git repo (this directory) and
# running here.

if [ ! -f ${base}/STUDENT-WORK/IntList.java ];
then
    echo '{ "score": 0.0,"output": "ERROR: expected exactly one zip file containing IntList.java"}' >  ${base}/results/results.json
else
    mkdir -p src/main/java/com/gradescope/intlist/
    cp ${base}/STUDENT-WORK/IntList.java src/main/java/com/gradescope/intlist/

    # Ultimately you want to write to ${base}/results/results.json

    mvn -q compile
    mvn -q test
    mvn -q exec:java > ${base}/results/results.json
fi


