source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'stripe', '~> 5.45'
gem 'spree_multi_vendor', '~> 2.3.0'
gem 'rails-controller-testing'

group :development, :test do
  gem 'pg'
  gem 'net-smtp', require: false
end

gemspec
