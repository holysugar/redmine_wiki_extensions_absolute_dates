Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
  next unless /\.rb$/ =~ file
  require file
end

Rails.application.config.i18n.load_path += Dir["#{File.dirname(__FILE__)}/config/locales/*.{rb,yml}"]

Redmine::Plugin.register :redmine_wiki_extensions_absolute_dates do
  name 'Redmine Wiki Extensions Absolute Dates plugin'
  author 'holysugar'
  description 'Change Redmine Wiki Extensions comment date to absolute date'
  version '0.0.6'
  url 'https://github.com/holysugar/redmine_wiki_extensions_absolute_dates'
  author_url 'https://github.com/holysugar'
end
