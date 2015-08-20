class PresenceValidator

  def initialize(*attrs)
    @attrs = attrs
  end

  def validate
    @attrs.each do |attr|
      return false if attr.nil? || attr.length == 0
    end
    true
  end

end
