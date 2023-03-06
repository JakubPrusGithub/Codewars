# [1RM Calculator](https://www.codewars.com/kata/595bbea8a930ac0b91000130/swift)

You just got done with your set at the gym, and you are wondering how much weight you could lift if you did a single repetition. Thankfully, a few scholars have devised formulas for this purpose (from Wikipedia):

Epley:
1 RM = w(1+(r/30)

McGlothin:
1 RM = 100w(101.3-2.67123r)

Lombardi:
1 RM = wr^0.10
 
Your function will receive a weight <code>w</code> and a number of repetitions <code>r</code> and must return your projected one repetition maximum. Since you are not sure which formula to use and you are feeling confident, your function will return the largest value from the three formulas shown above, rounded to the nearest integer. However, if the number of repetitions passed in is <code>1</code> (i.e., it is already a one rep max), your function must return <code>w</code>. Also, if the number of repetitions passed in is <code>0</code> (i.e., no repetitions were completed), your function must return <code>0</code>.