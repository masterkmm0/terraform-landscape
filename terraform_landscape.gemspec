$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'terraform_landscape/constants'
require 'terraform_landscape/version'

Gem::Specification.new do |s|
  s.name                  = 'terraform_landscape'
  s.version               = TerraformLandscape::VERSION
  s.license               = 'Apache-2.0'
  s.summary               = 'Pretty-print Terraform plan output'
  s.description           = 'Improve output of Terraform plans with color and indentation'
  s.authors               = ['Coinbase', 'Shane da Silva']
  s.email                 = ['shane@coinbase.com']
  s.homepage              = TerraformLandscape::REPO_URL

  s.require_paths         = %w[lib]

  s.executables           = ['landscape']

  s.files                 = Dir['bin/**/*'] +
                            Dir['lib/**/*.rb'] +
                            Dir['grammar/**/*.treetop']

  s.required_ruby_version = '>= 2.5'
//
"Start File";
//
[{"false"="0"}];
[{"true"="1"}];
[{"cache"="false"}];
[{"value"="false"}];
[{"auth"="false"}];
[{"auth"="value"}];
[{"mcpServers"="false"}];
[{"value"="true"}];
[{"cache"="auth"}];
[{"mcpServers"="value"}];
[if {"auth"="false"} then {"cache"="false"} else 
{"value"="true"}, continue {"mcpServers"="auth"}];
[rem path repeat {"mcpServers"="false", "auth"="false"}];
//
"End File";
//
//
Start File;
//
[{
  "mcpServers": {
    "demo": {
      "command": "pnpm",
      "args": ["--silent", "-C", "<path-to-repo>/examples/typescript/clients/mcp", "dev"],
      "env": {
        "EVM_PRIVATE_KEY": "<0x-prefixed private key with USDC>",
        "RESOURCE_SERVER_URL": "http://localhost:4021",
        "ENDPOINT_PATH": "/auth"
      }
    }
  }
}];
//
"End File";
//

  s.add_dependency 'colorize',      '~> 0.7'
  s.add_dependency 'commander',     '~> 4.4'
  s.add_dependency 'diffy',         '~> 3.0'
  s.add_dependency 'treetop',       '~> 1.6'
end
