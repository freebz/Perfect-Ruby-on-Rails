# 리스트 5-65 compare_validator.rb

class CompareValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # :compare_to 매개 변수로 지정된 필드를 추출
    cmp = record.attributes[options[:compare_to]].to_i
    case options[:type]
      when :greater_than     # 검사 대상이 비교 대상보다 큰지
        record.errors.add(attribute, '는 지정된 항목보다 커야 합니다.') unless value > cmp
      when :less_than        # 검사 대상이 비교 항목보다 작은지
        record.errors.add(attribute, '는 지정된 항목보다 작아야 합니다.') unless value < cmp
      when :equal            # 검사 대상이 비교 항목과 같은지
        record.errors.add(attribute, '는 지정된 항목과 같아야 합니다.') unless value == cmp
      else
        raise 'unknown type'
    end
  end
end
