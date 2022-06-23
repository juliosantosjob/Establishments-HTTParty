require 'httparty'
require 'openssl'
require 'cucumber'
require 'rspec'
require_relative '../services/estabelecimento_services'
require_relative '../support/helper'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

World(Rest)
World(Helper)
