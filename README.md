# RabbitMQ Blockchain Configuration Plugin

The purpose of this plugin is to create a blockchain structure for RabbitMQ configuration.

**REF:** https://github.com/Ayanda-D/rabbitmq-blockchain

## Supported RabbitMQ Versions

This plugin is compatible with **RabbitMQ 3.7.x** and beyond, to the latest release.

## Installation

### Packaging

Download pre-compiled versions from [https://github.com/Ayanda-D/rabbitmq-blockchain-config/releases](https://github.com/Ayanda-D/rabbitmq-blockchain-config/releases)

### Build

Clone and switch to branch `v3.7.x` to build the plugin for RabbitMQ versions `3.7.x`. Execute `make`. To create a package, execute `make dist` and find the `.ez` package file in the `plugins` directory.

Ensure the RabbitMQ version you are building/packaging for is compatible to the Erlang, as well as Elixir versions installed. For more detail on this, please refer to https://www.rabbitmq.com/which-erlang.html

### Testing

Likewise, clone and switch to branch `v3.7.x` and execute `make tests` to test the plugin. View test results from the generated HTML files.

## License and Copyright

(c) Erlang Solutions Ltd. 2017-2019

https://www.erlang-solutions.com/
