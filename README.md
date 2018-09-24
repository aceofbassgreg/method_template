### Purpose

When using any design pattern that requires the definition of hook methods in a
parent class (such as the [Template Pattern](https://en.wikipedia.org/wiki/Template_method_pattern), it can become tedious to define methods that only raise `NotImplementedError`. Furthermore, as a developer on the project, depending on the size of the parent class from which you are inheriting, it may not be immediately obvious which methods your subclass needs to implmenet.

```ruby
# Typical implementation of hook methods in parent classes

class BaseClass

# code omitted

private def method_a
  raise NotImplementedError, "You need to implement this method."
end

private def method_b
  raise NotImplementedError, "You need to implement this method."
end

private def method_c
  raise NotImplementedError, "You need to implement this method."
end
```

This gem sets out to solve both of those problems. It provides a `hook_methods`
macro to reduce boilerplate, and by defining `hook_methods` at the top of your
class, you will make it clear to other developers exactly which methods need to
be implemented by subclasses.

### Usage

```bash
gem install 'method_template'
```

```ruby
require 'method_template'
class BaseClass
  extend MethodTemplate
  hook_methods :method_a, :method_b, :method_c
end
```

