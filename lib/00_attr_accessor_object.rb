class AttrAccessorObject
  def self.my_attr_accessor(*names)
      names.each do |el|
        define_method("#{el}") do
          instance_variable_get("@#{el}")
        end
        
        define_method("#{el}=") do |new_value|
          instance_variable_set("@#{el}", new_value)
        end
      end
  end
end
