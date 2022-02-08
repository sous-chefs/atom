# Changelog

All notable changes to this project will be documented in this file.

## Unreleased

- Remove delivery folder

## 1.0.2 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## 1.0.1 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 1.0.0 - *2021-05-20*

- Require chef-infra version 15.3 or greater

## 0.5.0 - *2021-05-17*

- Add ubuntu 20.04 support
- Add ubuntu 21.04 support

## 0.4.1 - *2021-05-11*

- Update standardised files from sous-chefs/repo-management

## 0.4.0

- Migrated to Github Actions for testing
- Simplified the PPA setup in the `apt_repository` resource
- resolved cookstyle error: recipes/windows.rb:19:18 convention: `Layout/TrailingWhitespace`
- resolved cookstyle error: recipes/windows.rb:19:19 refactor: `ChefModernize/FoodcriticComments`

## [0.3.1] - 2019-08-12

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
