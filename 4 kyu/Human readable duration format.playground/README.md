# [Human readable duration format](https://www.codewars.com/kata/52742f58faf5485cae000b9a/swift)

Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

The function must accept a non-negative integer. If it is zero, it just returns <code>"now"</code>. Otherwise, the duration is expressed as a combination of <code>years</code>, <code>days</code>, <code>hours</code>, <code>minutes</code> and <code>seconds</code>.

It is much easier to understand with an example:

<pre>
* For seconds = 62, your function should return 
    "1 minute and 2 seconds"
* For seconds = 3662, your function should return
    "1 hour, 1 minute and 2 seconds"
</pre>

For the purpose of this Kata, a year is 365 days and a day is 24 hours.

Note that spaces are important.

Detailed rules

The resulting expression is made of components like <code>4 seconds</code>, <code>1 year</code>, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.

The components are separated by a comma and a space (<code>", "</code>). Except the last component, which is separated by <code>" and "</code>, just like it would be written in English.

A more significant units of time will occur before than a least significant one. Therefore, <code>1 second and 1 year</code> is not correct, but 1 year and 1 second is.

Different components have different unit of times. So there is not repeated units like in <code>5 seconds and 1 second</code>.

A component will not appear at all if its value happens to be zero. Hence, <code>1 minute and 0 seconds</code> is not valid, but it should be just <code>1 minute</code>.

A unit of time must be used "as much as possible". It means that the function should not return <code>61 seconds</code>, but <code>1 minute and 1 second</code> instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.

