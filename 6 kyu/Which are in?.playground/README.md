# [Which are in?](https://www.codewars.com/kata/550554fd08b86f84fe000a58/swift)

Given two arrays of strings <code>a1</code> and <code>a2</code> return a sorted array <code>r</code> in lexicographical order of the strings of <code>a1</code> which are substrings of strings of <code>a2</code>.

Example 1:

<code>a1 = ["arp", "live", "strong"]</code>

<code>a2 = ["lively", "alive", "harp", "sharp", "armstrong"]</code>

returns <code>["arp", "live", "strong"]</code>

Example 2:

<code>a1 = ["tarp", "mice", "bull"]</code>

<code>a2 = ["lively", "alive", "harp", "sharp", "armstrong"]</code>

returns <code>[]</code>

Notes:
Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
In Shell bash <code>a1</code> and <code>a2</code> are strings. The return is a string where words are separated by commas.
Beware: In some languages <code>r</code> must be without duplicates.
