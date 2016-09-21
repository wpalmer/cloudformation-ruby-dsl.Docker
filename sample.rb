#!/usr/bin/env ruby
require 'bundler/setup'
require 'cloudformation-ruby-dsl/cfntemplate'
require 'diw/config'
STDERR.puts ARGV.inspect

cfg = DIW::Config::Config.new do
  var "testo", "boop"
end

template = template do
  resource "HelloBucket", :Type => "AWS::S3::Bucket", :Properties => cfg.testo
end

template.exec!
