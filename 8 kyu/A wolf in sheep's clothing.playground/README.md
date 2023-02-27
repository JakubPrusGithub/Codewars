# [A wolf in sheep's clothing](https://www.codewars.com/kata/5c8bfa44b9d1192e1ebd3d15)

Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:
<pre>
[sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE)
   7      6      5      4      3            2      1
</pre>
If the wolf is the closest animal to you, return <code>"Pls go away and stop eating my sheep"</code>. Otherwise, return <code>"Oi! Sheep number N! You are about to be eaten by a wolf!"</code> where N is the sheep's position in the queue.

Note: there will always be exactly one wolf in the array.

Examples

Input: <code>["sheep", "sheep", "sheep", "wolf", "sheep"]</code>

Output: <code>"Oi! Sheep number 1! You are about to be eaten by a wolf!"</code>

Input: <code>["sheep", "sheep", "wolf"]</code>

Output: <code>"Pls go away and stop eating my sheep"</code>

