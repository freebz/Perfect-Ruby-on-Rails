# 리스트 5-61 isbn_validator.rb

class IsbnValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, '는 제대로 된 형식이 아닙니다.') unless value =~ /\A[0-9]{3}-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9X]{1}\z/
  end
end
