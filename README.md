# ExUnitBug

## How to reproduce
Running `mix suite` which is the alias for running the several tags in
succession.

```shell
% mix suite
Including tags: [:test]

...

Finished in 0.02 seconds
3 tests, 0 failures

Randomized with seed 872224
Excluding tags: [:test]
Including tags: [:a]



Finished in 0.00 seconds
0 failures

Randomized with seed 872224
The --only option was given to "mix test" but no test was executed
Excluding tags: [:test]
Including tags: [:b]



Finished in 0.00 seconds
0 failures

Randomized with seed 872224
The --only option was given to "mix test" but no test was executed
```

## Expected
The result should be something like this:

```shell
% mix test --only test; mix test --only a; mix test --only b
Including tags: [:test]

...

Finished in 0.02 seconds
3 tests, 0 failures

Randomized with seed 126578
Excluding tags: [:test]
Including tags: [:a]

.

Finished in 0.02 seconds
3 tests, 0 failures, 2 excluded

Randomized with seed 677141
Excluding tags: [:test]
Including tags: [:b]

.

Finished in 0.02 seconds
3 tests, 0 failures, 2 excluded

Randomized with seed 256784
```
