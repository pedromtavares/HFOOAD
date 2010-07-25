class Type
  VALUES = ['Acoustic', 'Electric']
end

class Builder
  VALUES = ['Fender', 'Martin', 'Gibson', 'Collings', 'Olson', 'Ryan', 'PSR', 'Any']
end

class Wood
  VALUES = ['Indian_Rosewood', 'Brazillian_Rosewood', 'Mahogany', 'Maple', 'Cocobolo', 'Cedar', 'Adirondack', 'Alder', 'Sitka']
end

class Style
  VALUES = ['F']
end

class InstrumentType
  VALUES = ['Guitar', 'Banjo', 'Mandolin', 'Dobro', 'Bass_Guitar', 'Fiddle']
end

[Type, Builder, Wood, Style, InstrumentType].each do |att|

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