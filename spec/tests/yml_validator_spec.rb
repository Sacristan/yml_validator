# rspec spec/tests/yml_validator_spec.rb

require 'spec_helper'

describe YMLValidator do
  context "valid?" do
    context "should return false for " do
      context "binary file" do
        before :all do

          @yml_validator = YMLValidator.new "spec/fixtures/binary.yml"
        end
        it "" do
          expect(@yml_validator.valid?).to eq false
        end

      end

      context "RoR config_file" do
        before :all do

          @yml_validator = YMLValidator.new "spec/fixtures/conf_file.yml"
        end
        it "" do
          expect(@yml_validator.valid?).to eq false
        end

      end

      context "plain text" do
        before :all do

          @yml_validator = YMLValidator.new "spec/fixtures/plain_text.yml"
        end
        it "" do
          expect(@yml_validator.valid?).to eq false
        end

      end

      context "invalid yml" do
        before :all do

          @yml_validator = YMLValidator.new "spec/fixtures/invalid_yaml.yml"
        end
        it "" do
          expect(@yml_validator.valid?).to eq false
        end

      end
    end

    context "should return true for" do
      context "valid yml" do
        before :all do

          @yml_validator = YMLValidator.new "spec/fixtures/valid_yml.yml"
        end

        it "" do
          expect(@yml_validator.valid?).to eq true
        end

      end
    end
  end
end
