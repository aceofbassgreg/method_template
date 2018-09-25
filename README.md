### Purpose

When using any design pattern that requires the definition of hook methods in a
parent class (such as the [Template Pattern](https://en.wikipedia.org/wiki/Template_method_pattern), it can become tedious to define methods that only raise `NotImplementedError`. Furthermore, as a developer on the project, depending on the size of the parent class from which you are inheriting, it may not be immediately obvious which methods your subclass needs to implemenet.

An example:

```ruby
# Typical implementation of hook methods in parent classes

class BaseClass

# code omitted

  def method_a
    raise NotImplementedError, "You need to implement this method."
  end

  def method_b
    raise NotImplementedError, "You need to implement this method."
  end

  def method_c
    raise NotImplementedError, "You need to implement this method."
  end
end
  ```

`template_method` solves both of these problems. It provides a `hook_methods` (
`hook_method` works as well) macro to reduce boilerplate, and by defining `hook_methods` at the top of your
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
  hook_methods :method_a, :method_b, :method_c     #Note that #hook_method may be used as well in case there is only one method
end
```
Now, if the required hook methods are not provided in a subclass, an exception is
raised with a helpful message:

```bash
class Subclass < BaseClass; end
=> nil
s = Subclass.new
=> #<Subclass:0x00007fbbee1bc608>
s.method_a
NotImplementedError (:method_a is a required method of Subclass!)
```
