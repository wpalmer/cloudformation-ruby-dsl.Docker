### Dockerized cloudformation-ruby-dsl

Based on https://github.com/bazaarvoice/cloudformation-ruby-dsl

Licensed under the Apache License, Version 2.0 (see LICENSE file)

Usage:

    docker run --rm -v "$PWD:/cfn" wpalmer/cloudformation-ruby-dsl <my-template.rb> [expand|...]

You need only include your template files. The cloudformation-ruby-dsl gem is
pre-installed, and the `BUNDLE_GEMFILE` variable set to include it.

Depending on the sub-command, you may also need to include additional credential
information, such as your `$HOME/.aws` directory
