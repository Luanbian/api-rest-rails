# frozen_string_literal: true

class GreetingService
  def initialize(generate_use_case: GenerateGreetingUseCase.new)
    @generate_use_case = generate_use_case
  end

  def greet(name:)
    @generate_use_case.execute(name: name)
  end
end
