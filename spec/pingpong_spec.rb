require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
  it ("it outputs ping for numbers divisible by 3") do
    expect((3).pingpong).to(eq([1,2,"ping"]))
  end

  it ("it outputs pong for numbers divisible by 5") do
    expect((5).pingpong).to(eq([1,2,"ping",4,"pong"]))
  end

  it ("it outputs pingpong for numbers divisible by 15") do
    expect((15).pingpong).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]))
  end

  it ("it outputs the number if not divisible by 3 or 5") do
    expect((4).pingpong).to(eq([1,2,"ping",4]))
  end
end

describe('Fixnum#result') do
  it ("it outputs ping for numbers divisible by 3") do
    expect((3).result).to(eq("ping"))
  end

  it ("it outputs pong for numbers divisible by 5") do
    expect((5).result).to(eq("pong"))
  end

  it ("it outputs pingpong for numbers divisible by 15") do
    expect((15).result).to(eq("pingpong"))
  end

  it ("it outputs the number if not divisible by 3 or 5") do
    expect((4).result).to(eq(4))
  end
end
