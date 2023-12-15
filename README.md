# Description
I created this as a tool for our daughter to learn her state capitals. This program is also available on [replit](https://replit.com/@peterhong/statecapitalsquiz).

Verison 1 of this application asked for the capital of a state. If the answer is correct, it would not ask for the capital of that state again. If the answer was incorrect, it would state the answer was not correct and will be asked for again later. The program would continue until all the capitals were correctly answered.

Version 2 as created because my daughter expressed her frustration that when she got the question wrong because she did not know the correct answer, she would get frustrated when asked again for the capital of said state. She requested that if she answered the question incorrectly, it would respond with the correct answer and not ask for the capital of the same state again.

My other thought for Version 2 was to create a hybrid of Version 1 and 2 - if the capital was incorrect, to respond with the correct answer and ask for the capital for the said state again later. 

However, since the former option was what was requested, it was what was implemented. 

## To run
To run this program, `cd` into the directory and run:
```
$ ruby state_capitals.rb
```

### Change log:
#### Version 2.1: December 14, 2023
* Remove the capital from the list if answered correctly.

#### Version 2: December 13, 2023
* Updated so all state capitals are displayed every time a question is asked.
* If incorrect answer is given, correct answer is given. The capital for the state is not asked for again.
* Program ends after capitals for all 50 states have been asked for. When program ends, count of correct responses is displayed.

#### Version 1: December 3, 2023
* Initial version release
* Asks user for the state capital. If user answers incorrectly, user is asked for the capital of said state again later.
* Keeps count of correct answers. When 50/50 is reached, program ends.
