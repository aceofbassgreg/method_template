module MethodTemplate

  def hook_methods(*args)
    args.each do |arg|
      define_method(arg) do
        raise NotImplementedError, "Implement :#{arg} in subclass!"
      end
    end
  end

  alias_method :hook_method, :hook_methods
end

