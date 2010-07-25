class Type
  VALUES = ['acoustic', 'electric']
end

class Builder
  VALUES = ['Fender', 'Martin', 'Gibson', 'Collings', 'Olson', 'Ryan', 'PSR', 'Any']
end

class Wood
  VALUES = ['Indian_Rosewood', 'Brazillian_Rosewood', 'Mahogany', 'Maple', 'Cocobolo', 'Cedar', 'Adirondack', 'Alder', 'Sitka']
end

[Type, Builder, Wood].each do |att|

  att::VALUES.each do |value|
    temp = Class.new( att )
    temp.class_eval %Q!
    def to_s
      '#{value.gsub('_',' ')}'
    end
    !

  att.const_set( value.upcase, temp.new )
  end
end