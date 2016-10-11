require 'thread'
require 'watir-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'page_helper'
require 'require_all'
require 'saucelabs'
require 'nokogiri'
require 'active_support/all'
require 'saucelabs'
require 'simplecov'
require 'simplecov-rcov'
require 'selenium/webdriver'
require 'selenium-webdriver'
require 'rubygems'
require 'date'
require 'saucelabs'
require 'thread'
require 'win32ole'
require 'CSV'
require 'yaml'

Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Mozilla Firefox\firefox.exe'


SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::RcovFormatter
]

SimpleCov.start

require './lib/page_helper'
require './lib/data_helper'

require_all './lib/pages'

World PageHelper
World DataHelper







