module YMLValidator
  class Base
    attr_accessor :file_path

    def initialize file_path
      @file_path = file_path
    end
    
    def self.valid? file_path
      YMLValidator.new(file_path).valid?
    end

    def valid?
      begin
        # yaml_object = YAML.load_file file_path
        !!YAML.load_file(@file_path)
      rescue Psych::SyntaxError => e
        return false
      end
    end
  end



end
