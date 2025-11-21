# Changelog

## 0.1.0-alpha.3 (2025-11-21)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/hdresearch/vers-sdk-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** api update ([e4f2210](https://github.com/hdresearch/vers-sdk-ruby/commit/e4f2210c676bae01ff182c18305de87af135a202))
* **api:** api update ([8dc995b](https://github.com/hdresearch/vers-sdk-ruby/commit/8dc995b6fb67fc46186f097074d1a0c5a154ef6e))
* **api:** api update ([1f5c788](https://github.com/hdresearch/vers-sdk-ruby/commit/1f5c78817197492cf1af0bb53a0298dfc464afe9))
* **api:** api update ([cb57d71](https://github.com/hdresearch/vers-sdk-ruby/commit/cb57d71515935194ddc9f1b930cfd4606cd143ec))
* **api:** api update ([d567bf0](https://github.com/hdresearch/vers-sdk-ruby/commit/d567bf0d09f939165476fa2cfb4f57d6365ee445))
* **api:** api update ([96d1dc7](https://github.com/hdresearch/vers-sdk-ruby/commit/96d1dc7cd75e33b1e6b234df930f371e5e1d8b46))
* **api:** api update ([d19bf01](https://github.com/hdresearch/vers-sdk-ruby/commit/d19bf01e3a6e5eaabd4fe6058215ccd8958f2d2b))
* **api:** api update ([64feb46](https://github.com/hdresearch/vers-sdk-ruby/commit/64feb4617cc9645b10c497a927ee7ec595f59032))
* **api:** api update ([79debb2](https://github.com/hdresearch/vers-sdk-ruby/commit/79debb29c0a891cdbce9965252380a730aad6d68))
* **api:** api update ([d5cdf7c](https://github.com/hdresearch/vers-sdk-ruby/commit/d5cdf7c235dac0cb0d2a1414ce2cf2abb8792710))
* **api:** api update ([b2305b2](https://github.com/hdresearch/vers-sdk-ruby/commit/b2305b2bd64b1e6137b5a6c3406d9317a830091c))
* **api:** api update ([f5b3f21](https://github.com/hdresearch/vers-sdk-ruby/commit/f5b3f21b47a04bb0482deda9580992aa9dfa407f))
* **api:** api update ([832ddb6](https://github.com/hdresearch/vers-sdk-ruby/commit/832ddb6608153182d51aa83019fef0270bee4618))
* **api:** api update ([a2cc96b](https://github.com/hdresearch/vers-sdk-ruby/commit/a2cc96bfe209d100a1e6e75b85313cd422d818b5))
* **api:** api update ([3352c8a](https://github.com/hdresearch/vers-sdk-ruby/commit/3352c8ad414dec234bda610fdba8858e0e933033))
* **api:** api update ([0a87453](https://github.com/hdresearch/vers-sdk-ruby/commit/0a874537387f5e3bef936296b433da329c4ab0a8))
* **api:** api update ([4743273](https://github.com/hdresearch/vers-sdk-ruby/commit/47432739732d14b8589e9947ec3377e8c0b4af6c))
* **api:** api update ([a0a461e](https://github.com/hdresearch/vers-sdk-ruby/commit/a0a461ee4439b09d5f1c10eb1fa10d5852fe52d0))
* **api:** api update ([6fdb933](https://github.com/hdresearch/vers-sdk-ruby/commit/6fdb93355d47a1e4e8a3fb8646fe691f1e40f456))
* **api:** api update ([f25708d](https://github.com/hdresearch/vers-sdk-ruby/commit/f25708d4a743ffc54d69dcf31a1fd92d20b928ae))
* expose response headers for both streams and errors ([49657bc](https://github.com/hdresearch/vers-sdk-ruby/commit/49657bcf404a7f11cec02f8d2f67640e73a6959b))
* handle thread interrupts in the core HTTP client ([7ce44a9](https://github.com/hdresearch/vers-sdk-ruby/commit/7ce44a9bff9d50bd71431cb3bd302c0d762ad9da))


### Bug Fixes

* absolutely qualified uris should always override the default ([9fd3d83](https://github.com/hdresearch/vers-sdk-ruby/commit/9fd3d831212335f596571e30211697b67915622e))
* always send `filename=...` for multipart requests where a file is expected ([20f6509](https://github.com/hdresearch/vers-sdk-ruby/commit/20f6509685d769e8b144074f853f75da9437547d))
* better thread safety via early initializing SSL store during HTTP client creation ([8bd0408](https://github.com/hdresearch/vers-sdk-ruby/commit/8bd0408942aaabfd2da007f652d42965d8b19e3a))
* bump sorbet version and fix new type errors from the breaking change ([fa59039](https://github.com/hdresearch/vers-sdk-ruby/commit/fa59039affa570785adb1923061c4760f8db9424))
* coroutine leaks from connection pool ([a5254d2](https://github.com/hdresearch/vers-sdk-ruby/commit/a5254d28f8becc2607764f756651ebc4b3481eda))
* shorten multipart boundary sep to less than RFC specificed max length ([d152d0e](https://github.com/hdresearch/vers-sdk-ruby/commit/d152d0eda36017fc6ec00c29bcbace111ee360b9))
* should not reuse buffers for `IO.copy_stream` interop ([53ea770](https://github.com/hdresearch/vers-sdk-ruby/commit/53ea770bd552dcc57b4c0f686b042660fe18226c))


### Performance Improvements

* faster code formatting ([bfb35ca](https://github.com/hdresearch/vers-sdk-ruby/commit/bfb35cad0e8dded737437b40e3b94f036fa0e7f8))


### Chores

* add json schema comment for rubocop.yml ([0a2b891](https://github.com/hdresearch/vers-sdk-ruby/commit/0a2b891b944131e8775c6272f081bd2511a52c6e))
* bump dependency version and update sorbet types ([3d6246e](https://github.com/hdresearch/vers-sdk-ruby/commit/3d6246e2c5eb966baadbe31366c6b032d6942372))
* collect metadata from type DSL ([044f442](https://github.com/hdresearch/vers-sdk-ruby/commit/044f4422ef1948051a5b212650f8d368e7953ebc))
* do not install brew dependencies in ./scripts/bootstrap by default ([3c5912f](https://github.com/hdresearch/vers-sdk-ruby/commit/3c5912f19ef879816788299817e26cd966e5242c))
* explicitly require "base64" gem ([d845469](https://github.com/hdresearch/vers-sdk-ruby/commit/d845469452ac4f0255c10b4cea5c29821022d014))
* ignore linter error for tests having large collections ([046bb78](https://github.com/hdresearch/vers-sdk-ruby/commit/046bb7824445c0fab978133f42cfe3d3dd878a9f))
* **internal:** codegen related update ([b0ef527](https://github.com/hdresearch/vers-sdk-ruby/commit/b0ef527585555d084ed9e9f24981ed62e2ea9008))
* **internal:** codegen related update ([c9e7de1](https://github.com/hdresearch/vers-sdk-ruby/commit/c9e7de1a5cfee1072d39a29090258f022cd141e0))
* **internal:** codegen related update ([d36fed0](https://github.com/hdresearch/vers-sdk-ruby/commit/d36fed0ff3a76236fa4077ab8560173df0c1153f))
* **internal:** codegen related update ([eed56ef](https://github.com/hdresearch/vers-sdk-ruby/commit/eed56ef375f4843eed4e3af57367dd26239061d9))
* **internal:** increase visibility of internal helper method ([fb8f268](https://github.com/hdresearch/vers-sdk-ruby/commit/fb8f26853146601300e5c4447266b35a239a4ea6))
* **internal:** update comment in script ([78697f1](https://github.com/hdresearch/vers-sdk-ruby/commit/78697f1f9aff2ff34a8d4cd8aa4d4819dcc0787f))
* sync repo ([039c06d](https://github.com/hdresearch/vers-sdk-ruby/commit/039c06d60b1c1cafdd551120432e3829dfac30de))
* update @stainless-api/prism-cli to v5.15.0 ([bcd7ba0](https://github.com/hdresearch/vers-sdk-ruby/commit/bcd7ba0e16e062ec7965497950dc6f0082420cb7))

## 0.1.0-alpha.2 (2025-07-31)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/hdresearch/vers-sdk-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** api update ([fdf4078](https://github.com/hdresearch/vers-sdk-ruby/commit/fdf4078f7876b120fa9fd711babc0fe6f3c92e74))
* **api:** api update ([26f35d1](https://github.com/hdresearch/vers-sdk-ruby/commit/26f35d1c2974669362ba71eb5eaea62edb3717a6))
* **api:** api update ([b715dd4](https://github.com/hdresearch/vers-sdk-ruby/commit/b715dd4f217afaeb55a0f47708253de71596f2b4))


### Chores

* configure new SDK language ([448290c](https://github.com/hdresearch/vers-sdk-ruby/commit/448290cdcbad5845ba725e87fb8f110c22571d73))
* configure new SDK language ([0ab31bc](https://github.com/hdresearch/vers-sdk-ruby/commit/0ab31bc21c4c1b154835ac352d18d32a8f5ee894))
* **internal:** codegen related update ([6d401d5](https://github.com/hdresearch/vers-sdk-ruby/commit/6d401d5a27091794727e9b428e3ec8019750d26b))
* update SDK settings ([630143f](https://github.com/hdresearch/vers-sdk-ruby/commit/630143f471608cd02ab71bd2cd747b1e8e01a237))
* update SDK settings ([bd5f2ca](https://github.com/hdresearch/vers-sdk-ruby/commit/bd5f2cae65d670a56c629fec5bc22d6c1927923e))

## 0.1.0-alpha.1 (2025-07-18)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/hdresearch/vers-sdk-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([ab62cca](https://github.com/hdresearch/vers-sdk-ruby/commit/ab62cca005c4fca0723020e72a3555fd9df6c1cb))
* **api:** manual updates ([fb8eb4f](https://github.com/hdresearch/vers-sdk-ruby/commit/fb8eb4f2502b98ab5a02cb19f39a9f86785913c6))


### Chores

* configure new SDK language ([3f366f9](https://github.com/hdresearch/vers-sdk-ruby/commit/3f366f980432c6dbc7bbc4f43097d23542e9cd1a))
* update SDK settings ([13f402c](https://github.com/hdresearch/vers-sdk-ruby/commit/13f402cb5ecc80b4daa9dc71f1b98437cd1e1422))
