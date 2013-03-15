## March 2013 Refactor Challenge

### Running the specs

```
bundle exec rspec -c-f d request_pricing_service_spec.rb
````

### Notes
- factory pattern, user init to delegate to

RPS.rb
- includes default behavior

Unique situations
- ny.rb
- nc.rb

### steps
- create RPSFactory.new(state)
- RPSFactory.new returns an RPS instance
    - RPSFactory.new(state) -> case 'NY', 'NC' then NYRPS or NCRPS
    - RPSFactory.new(state) -> default
- RPS
- create default rps into object w/ initializer
- break out unique states into classes (passes)


class RPSFactory
    def initialize(state)
        case ...

        default
    end
end

class RPS

....
end

class NYRPS < RPS

end

class NCRPS < RPS

end