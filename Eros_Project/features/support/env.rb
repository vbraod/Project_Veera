ENV['TEST_SERVER'] ||= 'st'
ENV['SERVER_NETWORK'] ||= 'private' #or public
# ENV['SPLUNK'] ||= 'true'
# ENV['PARALLEL_TEST'] ||= 'false'
ENV['LOG_LEVEL'] ||= 'error'
ENV['KEEP_LOGS'] ||= 'true'
ENV['MAX_LOG_ROLLS'] ||= '100'
ENV['BUILD_STAMP'] ||= "local_#{ENV['TEST_SERVER']}_#{Time.now.strftime('%Y%m%d%H%M%S')}"

# $splunk ||= ENV['SPLUNK'] == 'true'
LOG_LEVEL ||= ENV['LOG_LEVEL']&.to_sym || :warn
KEEP_LOG_FILE ||= ENV['KEEP_LOGS'] == 'true'
MAX_LOG_ROLLS ||= ENV['MAX_LOG_ROLLS']&.to_i || 10

# require 'bundler/setup'
# Bundler.require(:default, :webservices_database, :log, :standards_practices)
# require 'encryption'
# require "#{File.dirname(__FILE__)}/ojdbc14.jar"

# DataMagic.yml_directory = "#{File.dirname(__FILE__)}/data"

# ENV['APPLICATION_ID'] ||= DataMagic.load('data_mapping.yml')['']["#{ENV['TEST_SERVER']}_host"]

# $endpoint = DataMagic.load('endpoints.yml')[ENV['TEST_SERVER']] ||
#     raise('Invalid environment - see support/data/endpoints.yml')

# require_rel '../support'

# $logger = LoggingService.new('automation')
# $logger.level = LOG_LEVEL

# include DataMagic