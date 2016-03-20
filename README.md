# LimitedAddition

A Swift library to perform additions and subtraction clamping to the bounds of the type.

## What does it do?

Swift has two options when performing additions and subtractions (see https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html):
- a version that causes an error in case of over/underflow (`+` and `-`)
- a version that will wrap over in case of overflow (`&+` and `&-`)

Take for example the type `Int8`, which has as a lowest value `-128` and highest value `128`.

In the first case (error-throwing +), calling `Int8.max + Int8(1)` will result in a fatal error.

In the second case (wrap on overflow &+), calling `Int8.max + Int(1)` will evaluate to `-128`, or `Int8.min`, meaning that the result reached the maximum possible value, and then "restarted" from the lowest possible value, as if `Int8.min` was the number following `Int8.max`.

This framework, `LimitedAddition`, offers a third option, which is to perform an addition and subtraction that will just return `Int8.max` or `Int8.min` if the result would be out of range for `Int8`, effectively clamping the result to the bounds of the type.

This is achieved with the operators `-∈` and `+∈` or with the methods `clampAdd(:)` and `clampSub(:)`.

To summarise:
- `Int8(118) + Int(20)` → fatal error
- `Int8(118) &+ Int(20)` → `-118`
- `Int8(118) +∈ Int(20)` or `Int8(118).clampAdd(Int8(20))` → `128` (`Int8.max`)

## Why?

There are cases were throwing errors or wrapping is not the right option when an aritmetic operation goes beyond the limits of the type.

Think about a game, where the score is constantly incremented. Eventually, the player might reach a score equal to the upper limit of the numeric type. In that case, crashing because of the error (+) or resetting the score to the minimum possible value (&+) might not be the best option.


