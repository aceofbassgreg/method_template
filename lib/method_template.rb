module MethodTemplate

  def hook_methods(*args)
    args.each do |arg|
      define_method(arg) do
        raise NotImplementedError, ":#{arg} is a required method of #{self.class}!"
      end
    end
  end

  alias_method :hook_method, :hook_methods
end

