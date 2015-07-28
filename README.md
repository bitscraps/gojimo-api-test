# Gojimo API Test

Sample code to display qualifications from the Gojimo API.

## Installation

```sh
$ git clone https://github.com/bitscraps/gojimo-api-test.git
$ cd gojimo-api-test
$ bin/rails s
```

## Enhancements

- Implement Caching for Typheous using the on_headers to first check that the
  Last Modified has changed if it has not we use a cached version stored using
Rails.cache.
- Implement some searching functionality based on Country and Qualification name

