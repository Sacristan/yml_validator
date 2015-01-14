module YMLValidator
  class Base
    attr_accessor :file_path
    attr_accessor :file_to_validate
    attr_accessor :normalized_file

    def initialize file_path
      @file_path = file_path
    end

    def valid?
      begin
        @file_to_validate = YAML.load_file(@file_path)
      rescue Psych::SyntaxError => e
        return false
      end

      validate
    end

    private
      def validate
        @normalized_file = YMLValidator::Helpers.normalize_yaml @file_to_validate
        @normalized_file.is_a?(Hash) && !!@normalized_file.to_yaml
      end
  end
end
