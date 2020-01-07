# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Migrated to Circleci testing

### Added

### Fixed

### Deprecated

### Removed

## [0.3.1] - 2019-08-12

### Added

- Add a TESTING.md file
- Use a new windows test image and test windows 2016

## [0.3.0] - 2019-08-08

- Use a custom resource instead of an LWRP
- Add tests.
- Make the cookbook actions idempotent.
- Remove the chefspec tests

## [0.2.0]

- Add support for Mac OS X
- On Debian/Ubuntu install package instead of just setting up Atom apt ppa repo
- On Windows, install package directly instead of using Chocolatey
- Add specs and integration tests
