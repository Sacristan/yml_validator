require 'yaml'
require 'yml_validator/base'
require 'yml_validator/helpers'
require 'yml_validator/version'

module YMLValidator
  def self.new file_path
    YMLValidator::Base.new file_path
  end

  def self.valid? file_path
    YMLValidator.new(file_path).valid?
  end

end
