# rspec spec/tests/validate_using_module_spec.rb

require 'spec_helper'

describe "ValidateUsingModule" do
  context "valid?" do
    context "should return false for " do
      context "binary file" do
        it "" do
          expect(YMLValidator.valid? "spec/fixtures/binary.yml").to eq false
        end

      end

      context "RoR config_file" do

        it "" do
          expect(YMLValidator.valid? "spec/fixtures/conf_file.yml").to eq false
        end

      end

      context "plain text" do
        it "" do
          expect(YMLValidator.valid? "spec/fixtures/plain_text.yml").to eq false
        end

      end

      context "invalid yml" do
        it "" do
          expect(YMLValidator.valid? "spec/fixtures/invalid_yaml.yml").to eq false
        end

      end
    end

    context "should return true for" do
      context "valid yml" do
        it "" do
          expect(YMLValidator.valid? "spec/fixtures/valid_yml.yml").to eq true
        end
      end
    end
  end

end
