module YMLValidator
  module Helpers
    def self.normalize_yaml yaml
      return '' if yaml.nil?
      return yaml if yaml.is_a? String
      return yaml.to_s if yaml.is_a? Numeric
      return yaml.to_s if !!yaml == yaml # if boolean
      return ":#{yaml.to_s}" if yaml.is_a? Symbol
      yaml = array_to_hash(yaml) if yaml.is_a? Array

      normalized = {}
      yaml.each do |key, value|
        normalized[key.to_s] = normalize_yaml(value)
      end
      normalized
    end

    private
      def self.array_to_hash(array)
        hash = {}
        array.each_with_index { |val, i| hash[i.to_s] = val }
        hash
      end
  end
end
