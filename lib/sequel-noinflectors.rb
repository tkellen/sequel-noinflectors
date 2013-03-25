##
# Disable inflectors for Sequel.
#
class Sequel::Model
  def self.implicit_table_name
    underscore(demodulize(name)).to_sym
  end
  def self.pluralize(word)
    word
  end
  def self.singularize(word)
    word
  end
end