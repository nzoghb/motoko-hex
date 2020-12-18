echo PATH = $PATH
echo vessel @ `which vessel`

echo
echo == Build.
echo

dfx start --background
dfx canister create test
dfx build

echo
echo == Test.
echo

dfx canister install test
dfx canister call test run
