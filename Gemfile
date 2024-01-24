source "https://rubygems.org"

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3"

#gem "image_processing",           "1.12.2"
gem "active_storage_validations", "0.9.8"
gem "bcrypt",                     "3.1.18"
gem "faker",                      "2.21.0"
gem "will_paginate",              "3.3.1"
gem "bootstrap-will_paginate",    "1.0.0"
gem "bootstrap-sass",             "3.4.1"
gem "sassc-rails",                "2.1.2"
gem "sprockets-rails",            "3.4.2"
gem "importmap-rails",            "2.0.1"
gem "turbo-rails",                "1.5.0"
gem "stimulus-rails",             "1.3.3"
gem "jbuilder",                   "2.11.5"
gem "puma",                       "5.6.4"
gem "bootsnap",                   "1.12.0", require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]


# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers",               "5.0.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.15.0"
  gem "minitest-reporters",       "1.5.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
  gem "pg",         "1.3.5"
  gem "aws-sdk-s3", "1.114.0", require: false
end
