---
title: FunctionArgument Failure
date: 2018-05-16T22:54:02.393Z
draft: false
featured: true
tags:
  - Wolfram
categories: []
projects:
  - ATSEDA
image:
  filename: featured
  focal_point: Smart
  preview_only: false
---

While developing in the [Wolfram language](https://www.wolfram.com/language/) (Mathematica) has many advantages, I found debugging hard and confusing at times. The Wolfram language is much more flexible compared to other languages because it treats everything as Symbols and therefore a function can take everything as an argument. Really everything, a sound, an image, a graph, a Number, a String, a Webpage ....
Therefore it is important to restrict the function to specific arguments, like Integers with [patterns](https://www.wolfram.com/language/elementary-introduction/2nd-ed/40-defining-your-own-functions.html).

The Wolfram Language is a bit special in the way it handles functions which have been called with wrong arguments. Most built-in functions will give a message and return unevaluated when the arguments are not correct.

Like in this example of the build in Function `Total` which expects a List as input to calculate the sum of all its elements.

![Total Example](/assets/blog/images/totaly wrong.png)

When developing complex code packages for my standalone Apps I needed a way to easily find the source of error. Since everything in the Wolfram Language can be a symbol, errors most of the time do not stop the evaluation.

Lets define a function which divides the argument by 2:

![Total Example 2](/media/blog/devidedBy2_1.png)

As expected when we give it 1 we get 0.5. But what happens if we give it an image as argument?

![Total Example 2](/media/blog/devidedBy2_media.png)

We get another image which is a bit darker. This is not what we expected therefore we need to restrict the definition of the function:

![Total Example 2](/media/blog/devidedBy2_2.png)

Now when we pass the image we get the unevaluated function back. This can be problematic when the result is used for more calculations:

![Total Example 2](/media/blog/devidedBy3.png)

Now we still get a result and no error, because the Wolfram language can handle it.

In large projects this can lead to a big mess when something went wrong during the calculations. Therefore, it is important to restrict the function arguments and handle the cases when the arguments are wrong.
Therefore, I created the [functionArgumentFailure package](https://github.com/tgoelles/functionArgumentFailure). Whenever a function is called with wrong arguments a FailureObject is returned and added to the global `failurelist`.  Each FailureObject informs where the error occurred and the reason for it.


## Basic Usage


	Needs["functionArgumentFailure`"]

	ClearAll[test];

	test[a_?StringQ] := 1;
	test[args___] := functionArgumentFailure[test, args];


So whenever the pattern of `test["some string"]` is not matched the `functionArgumentFailure` is called with 2 arguments. First the name of the failed function and second the arguments.
Make sure to use 3 `_` for the pattern test, as this allows zero or more arguments.

Here is an example where the function `test` has been called with not enough arguments:

![Failure Example](/media/blog/failure.png)

For further information see the `Examples.nb` Notebook and the unit tests in the [github repository](https://github.com/tgoelles/functionArgumentFailure).

## Further notes

In version 10 the [Failure Object](http://reference.wolfram.com/language/ref/FailureQ.html) has been introduced, and the Function [FailureQ](http://reference.wolfram.com/language/ref/FailureQ.html) has been added in version 10.2.
The FailureObject is not often used in the internal functions but I think it is ideal for error handling.

 The `functionArgumentFailure` only produces a FailureObject and a Message, but does NOT stop the evaluation.
 This must be handled when the function is called with [FailureQ](http://reference.wolfram.com/language/ref/FailureQ.html).

## Links:

[source code on github](https://github.com/tgoelles/functionArgumentFailure)

[The notebook withe code form this post](/assets/cdf/functionArgumentFailure_Post.nb)


[FailureQ documentation](http://reference.wolfram.com/language/ref/FailureQ.html)

[FailureObject documentation](http://reference.wolfram.com/language/ref/Failure.html)

[An interesting discussion on stackexchange](https://mathematica.stackexchange.com/questions/29321/what-are-the-best-practices-most-common-idiomatic-ways-to-report-errors-in-m#6563886)