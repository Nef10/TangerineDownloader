# TangerineDownloader

[![CI Status](https://github.com/Nef10/TangerineDownloader/workflows/CI/badge.svg?event=push)](https://github.com/Nef10/TangerineDownloader/actions?query=workflow%3A%22CI%22) [![Documentation percentage](https://nef10.github.io/TangerineDownloader/badge.svg)](https://nef10.github.io/TangerineDownloader/) [![License: MIT](https://img.shields.io/github/license/Nef10/TangerineDownloader)](https://github.com/Nef10/TangerineDownloader/blob/main/LICENSE) [![Latest version](https://img.shields.io/github/v/release/Nef10/TangerineDownloader?label=SemVer&sort=semver)](https://github.com/Nef10/TangerineDownloader/releases) ![platforms supported: macOS | iOS](https://img.shields.io/badge/platform-macOS%20%7C%20iOS-blue) ![SPM compatible](https://img.shields.io/badge/SPM-compatible-blue)

## What

This is a small library to download transaction data from Tangerine via a combination of Web Scraping and the API.

## How

1) Create an instance and set the delegate
2) Call `authorizeAndGetAccounts` with the username and pin, it will return the account JSONs
3) Call `downloadAccountTransactions` with a dictionary of the account names and JSON, as well as the date you want to start loading transactions from
4) Dismiss the view your delegate provided

Please also check out the complete documentation [here](https://nef10.github.io/TangerineDownloader/).

## Usage

The library supports the Swift Package Manger, so simply add a dependency in your `Package.swift`:

```
.package(url: "https://github.com/Nef10/TangerineDownloader.git", .exact(from: "X.Y.Z")),
```

*Note: as per semantic versioning all versions changes < 1.0.0 can be breaking, so please use `.exact` for now*

## Limitations

Please note that I developed this library for my own needs. As there is no offical API everything was reverse engineered and there may be a lot of bugs.

Pull requests to fix bugs are otherwise enhance the library are very welcome.

## Copyright

While my code is licensed under the [MIT License](https://github.com/Nef10/TangerineDownloader/blob/main/LICENSE), the source repository may include names or other trademarks of Tangerine, Scotiabank or other entities; potential usage restrictions for these elements still apply and are not touched by the software license. Same applies for the API design. I am in no way affilliated with Tangerine other than beeing customer.
