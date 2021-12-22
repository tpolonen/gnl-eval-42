cat evalfiles/middle1 | ./test_gnl
read -n 1 -s
cat evalfiles/middle2 | ./test_gnl
read -n 1 -s
cat evalfiles/middle3 | ./test_gnl
read -n 1 -s
./test_gnl evalfiles/middle1
read -n 1 -s
./test_gnl evalfiles/middle2
read -n 1 -s
./test_gnl evalfiles/middle3
read -n 1 -s
