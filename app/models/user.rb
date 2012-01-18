class EmailValidator < ActiveModel::EachValidator
def validate_each(record, attribute, value)
unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
record.errors[attribute] << (options[:message] || "is not an email")
end
end
end

class User < ActiveRecord::Base
#test sur la présence
validates :name, :presence => true
#test sur la longueur de 50 max
validates :name, :length => {:maximum => 50}

#test la presence de l'email
validates :email, :presence => true, :email => true
end