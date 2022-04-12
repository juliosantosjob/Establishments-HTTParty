require "httparty"
require "openssl"
require "cucumber"
require "rspec"
require "rufo"
require_relative "../services/estabelecimento_services.rb"

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

World(Rest)
