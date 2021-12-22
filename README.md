# gnl-eval
Tests and validation for the Hive Helsinki GET_Next_Line project. This is not meant to completely replace careful evaluation, but to give some bare bones tests that can be run with minimal setup.

## Usage
1. Change the Makefile's EVAL-variable to point to your GNL-directory.
2. Make sure that `BUFF_SIZE` in your `get_next_line.h` is set to `8`.
3. `make`
4. `sh basic.sh`, `sh middle.sh`, `sh advanced.sh` to do the tests specified in the evaluation form with files that match.
5. `./test_gnl -f` to test for error values.

## Help?
`./test_gnl -h`

## TODO
* Currently doesn't test for multiple simultaneously open file descriptors.
* Leaks-test is commented out in `main.c`
* Doesn't actually make sure that output matches input.
* No stress testing, or opening different files in the same FD repeatedly.
* Doesn't check for single static value.
* `BUFF_SIZE` is not modified during any of the tests.

### Fun stuff
`time ./test_gnl -l kapital`

`time ./test_gnl -l kapital_nonl`

You should aim for sub 1.0 runtime for both files.
