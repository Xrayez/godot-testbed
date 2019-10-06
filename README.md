# [WIP] Godot Testbed

[![Build Status](https://travis-ci.org/Xrayez/godot-testbed.svg?branch=master)](https://travis-ci.org/Xrayez/godot-testbed)

Experimental CI automatic testing environment for 
[Godot Engine](https://github.com/godotengine/godot).

Uses [GUT](https://github.com/bitwes/Gut) as a testing framework.

If you see any tests failing, you can report them here (as tests may fail due to 
lack of maintainance, so they have to be updated) or directly at Godot repository
(if not already).

## Usage

Run tests with `./test.sh <Godot path> [command line args]`.

### What works

1. Clones latest Godot Engine version and compiles with Travis CI.
2. Runs tests (with GUT) using compiled Linux Server binaries for targets:
    - `debug`
    - `release_debug`
    
### What doesn't work

1. Runnings tests in release mode (needs exporting).

### Useful for:

- script and core testing (what's exposed);
- issues testing present at Godot's main repository:
    - test logs can be linked to issue descriptions;
- preventing regressions and crashes to occur.

### Not really useful for:

* Editor (UI) testing (requires video driver)
