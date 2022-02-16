# testing

the make script takes 4 arguments **SRC_DIR1**, **SRC_DIR2**, **TARGET** and **TEST_CASES**.
it produces a report.md showing the differences between outputs

Use the following command to run it on example1
```
make SRC_DIR1=$(pwd)/example1/sum1 SRC_DIR2=$(pwd)/example1/sum2 TEST_CASES=$(pwd)/example1/test_cases
```