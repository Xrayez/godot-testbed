# [WIP] Godot Testbed

[![Build Status](https://travis-ci.com/Xrayez/godot-testbed.svg?branch=master)](https://travis-ci.com/Xrayez/godot-testbed)

Experimental CI automatic testing environment for 
[Godot Engine](https://github.com/godotengine/godot).

Uses [GUT](https://github.com/bitwes/Gut) as a testing framework.

If you see any tests failing, you can report them here (as tests may fail due to 
lack of maintainance, so they have to be updated) or directly at Godot repository
(if not already).

# Usage

- [x] Linux (Bash): `./test.sh <Godot path> [command line args]`.
- [ ] Windows (Powershell): `./test` (Godot binary must be in your PATH).

## Process

1. Clones latest Godot Engine version and compiles with Travis CI.
2. Runs tests (with GUT) using compiled Linux Server binaries for targets:
    - [x] `debug`;
    - [x] `release_debug`;
    - [ ] `release`.

## Use cases

- script and core testing (what's exposed);
- issues testing present at Godot's main repository;
- preventing regressions and crashes to occur;
- editor (UI) testing (requires video driver, not all can be easily tested).
