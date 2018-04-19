# Cuis-Smalltalk-Aconcagua

Implementation of Aconcagua (measure and units) for Cuis Smalltalk
Presented at OOSPLA 2005 with the paper *Arithmetic with Measurements on Dynamically Typed Object Oriented Languages*

## What is a measure?

Basically a **measure** is a concept that groups a number and a unit. (See Taylor, Barry. Guide for the Use of the International System of Units. National Institute of Standards and Technology, Reading, April 1995 for a formal definition)
Clear examples of measures are *1 meter*, *200 kelvin*, *1 day* or *2 dollars*.  
This model represents measures as first class objects, that is, an object that encapsulates a number with its unit. This representation allows the programmer to use measures in arithmetic expressions as if they were numbers, but with the advantage of providing explicit information to the system—specifically, the measure's units.
Mathematically speaking, a measure is a number multiplied by a variable that has a interpretation in the real world. So, *1 meter*  is the same as writing _1 * meter_.

## Why is important to have measures in a program?

There are many benefits that this model provides. Among them, we can name the sense of security that it creates for the programmer when programming arithmetic expressions.
The fact that it is the system and not the programmer who must assure the results of any arithmetic operation regarding the units minimizes the error rate produced by the incorrect evaluation of formulas.  If the programmer performs incorrect operations with measures, then this error will not go unnoticed, and the system will inform it when evaluating a mathematical expression.

## How do I create measures?

The model allows to create measures very easily. For example the following Smalltalk expression creates the same measure:
```Smalltalk
2 * meter.  
meter with: 2.
Measure amount: 2 unit: meter.
```
These are three different ways of creating an object that represents the same entity: *two meters*.
Note that an object called *meter* must exist. This object is a **unit**. Note also that the first expression is the same one used in mathematics or physics.

## What can I do with measures?

The main behavior provided by measures is the arithmetic protocol. You can add, subtract, multiply and divide measures as if they were numbers, with the advantage that the system takes care of converting measures to a common unit, simplify units when necessary, etc.
The models allows also to create intervals on measures and treats them as magnitudes.
For example:
* Adding/subtracting measures:
```Smalltalk
(1 * day) + (3 * day)   --> Returns the measure 4 * day
(1 * day) + (24 * hour) --> Returns the measure 2 * day  or 48 * hour, they are equal
(10 * dollars) – (5 * dollars) --> Returns 5 * dollar
```
* Multiplying/Dividing measures
```Smalltalk
(1 * day) * (2 * day) --> Returns  2 * (day*day)
(10 * meter) / (1 * second) --> Returns the measure 10 * (meter/second)
(10 * meter) * (200 * centimeter) --> Returns 20 * (meter*meter)
(24 * month) / (1 * year) --> Returns the number 2 because month and year are units of the same domain.
```
The last expression is equal to (2 * year) / (1 * year), where the year units is reduced and the result of 2 / 1 is returned.
Because numbers are polimorphic to measures, the same operations can be perform with measures and numbers. This model treat numbers as measures whose unit is a *null unit* (see Woolf, B. The Null Object Pattern. in Pattern Languages of Program Design, R. Martin, F. Buschmann, and D. Riehle, eds., Reading, Massachusetts, Addison-Wesley, 1997).
For example:
```Smalltalk
(2 * meter) * 4 --> Returns 8 * meter
4 * 2 * meter --> Returns 8 * meter
(10 * day) + 5 --> Returns a bag of measures that represents ten days plus 5. See compound measure.
```
* Comparing measures
```Smalltalk
(1 * day) < (2 * day) --> Returns true
(1 * day) > (12 * hour) --> Returns false
```
* Creating intervals
```Smalltalk
(1 * day) to: (10 * day) --> Creates an interval from 1 day to 10 days every 1 day.
(1 * day) to: (10 * day) by: (2 * day) --> Creates an interval from 1 day to 10 days every 2 day.
(5 * meter) toYourself  --> Creates an interval from 5 meters to 5 meters.
```
Because they are intervals, they provide the same protocol as Collection. For example:
```Smalltalk
((1 * day) to: (10 * day)) select:  [ :aDayMeasure | aDayMeasure \\ 2 = 0 ] -->
  Returns a collection with 2 days, 4 days, 6 days, 8 days and 10 days.
```

## How does the model treat measures of the same domain but with different units?
The model converts measures of different units but of the same domain automatically.
For example, you could have a unit called "dollar" and another called "quarter". A quarter equals 1 / 4 of a dollar (See How do I create units? for an example on how to do this).
So, if you operate on dollars and quarters the model will do the right arithmetic. For example:
```Smalltalk
(2 * dollar) + ( 4 * quarter) --> Returns 3 * dollar, that equals to 12 * quarter
```

## How do I create units?
There are basically 3 types of units that you can create:
1. **BaseUnit**: They represent the main unit of a specific domain. There is no restriction of what unit has to be. For example, in the Length domain, it could be meter, kilometers, even miles.
2. **ProportionalDerivedUnit**:  They are equivalent to a base unit multiplied by an scalar. For example "centimeter" represents 1/100 meters.
3. **NonProportionalDerivedUnit**: Example of this units are Centigrates and Fahrenheit because the are related to Kelvin using a more complex formula that just multiplying by an scalar.
For example:
```Smalltalk
meter := BaseUnit named: 'meter'.
centimeter := ProportionalDerivedUnit
                baseUnit: meter
                conversionFactor: 1/100
                named: 'centimeter'.
mile := ProportionalDerivedUnit
                baseUnit: meter
                conversionFactor: 1609.344
                named: 'mile'.

kelvin := BaseUnit named: 'kelvin'.
celsius := NotProportionalDerivedUnit
		baseUnit: kelvin
		conversionBlock:  [:kelvin | kelvin + (5463/20)]
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius'
		sign: 'C'.
fahrenheit := NotProportionalDerivedUnit
		baseUnit: kelvin
		conversionBlock:  [:kelvin | (kelvin - 32) * (5/9)  +  (27315/100) ]
		reciprocalConversionBlock: [ :fahrenheit | (fahrenheit - (27315/100)) * 9/5 + 32 ]
		named: 'fahrenheit'
		sign: 'F'
```

## Is this model only for physical measures and units?
No, this model is not tied to physical measures and units. As a matter of fact, we use it at work to write programs of the financial domain.
It is very interesting to see how this model helped us to have multi monetary programs, automatic conversion of interest rates expressed in different time based (monthly, yearly, etc.), automatic conversion of nominal and residual quantities of bonds, etc.

## How do I convert measures of the same domain?
Measures of the same domain are those measures that share the same base unit, like meter, centimeters, miles, etc.
To convert a measure from one unit to another just use the message convertTo: .For example:
```Smalltalk
(1 * day) convertTo: hour --> Returns 24 hours. See that it returns a measure and not a number
(32 * fahrenheit) convertTo: centigrates --> Returns 0 centigrates
```

## What is a CompoundMeasure? (previously called MeasureBag)
A compound measure is an implementation of the Wallet pattern but for any kind of measure, not just money. It allows measures of different domain to be group together. For example:
```Smalltalk
(10 * apple) + (5 * orange) --> Returns a measure bag with 10 apples and 5 oranges
(100 * dollar) – (50 * euro) --> Returns a measure bag with a 100 dollars minus 50 euros.
```

## Why is important to have CompoundMeasure?
CompoundMeasures are important to model situations where having measures of units can not be automatically converted because the conversion ratio is not "static".
A clear example of this situation are measure of money, where the conversion rate of dollars and euros is not fixed or even unknown at the time of making some arithmetic operations with them.

## What are the limitations of CompoundMeasures?
MeasureBags are not completely polimorphic with Measures. The are polimorphic respect the arithmetic protocol, but they can not be treated as Magnitude (two measure bags can not be compared for less than, for example) and intervals can not be created from them.

## Does the model allows me to add meters with seconds?
Yes, the model does not make any kind of restriction when adding or subtracting Measures of different domain. In such a case returns a MeasureBag.
This could sound contradictory or even invalid in the physics domain, but remember that the model has no idea of the semantics of the units. If this type of checking should be performed, higher level abstractions has to be created by the programmer to handle this type of inconsistency. (See What is an Evaluation? for an example).

## How do I convert measures of different domain?
The model provides ways to convert measure of different domain. This is useful when you need to convert an amount of dollars to euros, or a bag of apples and oranges to fruit.
To make this kind of conversion a MeasureConverter object is provided, that uses a directed graph to perform the conversion:
```Smalltalk
| table moneyConverter |

table := ConversionTable new.
table measure: (3 * peso) isEquivalentTo: (1 * dollar).
table measure: (1 * euro) isEquivalentTo: (1.3 * dollar).
moneyConverter := MeasureConverter on: table.

moneyConverter convert: (10 * euro) to: dollar. --> Returns  13 dollar
```

## What is the meaning of 0?
Zero has an special meaning. Because of the definition of Measure, 0 or "0 * meter" are the same. A measure that represents "nothing" is equal to 0. It is like in mathematics, when you multiply "0 * A", the result is 0.
This is kind of wired, but it makes sense after sometime. This is called the "polimorphic zero" by Andrew Kennedy in Programming Languages and Dimensions. PhD Thesis, University of Cambridge. Published as Technical Report No. 391, University of Cambridge Computer Laboratory, April 1996.
The implications of this assertion is that 0 will be equal to 0 meters, to 0 dollars, etc. Even more, because of the transitivity property of the equality, 0 dollars will be equal to 0 meters or to 0 kelvin.
The best way to understand this property is to think that all of those measures represent "nothing", and nothing is equal to itself.

## How does equality works?
Equality among measures works as expected. 1 meter is equal to 1 meter, but also to 100 centimeters, to 1000 millimeters, etc. The model automatically converts the measures as needed.
Equality among unit is based on identity. Two units are equal if they are the same object. We believe that is the best way to do it because it does not make sense to have to objects that represent the unit "meter", or "dollar", etc.

## Does the model loose precision when doing arithmetic operations?
The model does not loose precision by itself. The precision depends on the representation of the amounts.
The model does not convert amounts to any type of number (Float, Fraction, etc).

## What is a Evaluation?
The class Evaluation is provided to model those concepts that represent measures but are more than that. Example of an evaluation is the concept of speed.
Speed can me represented with an instance of a Measure, for example:
```Smalltalk
(100 * kilometer) / ( 1 * hour) --> It is an instance of Measure.
```
The disadvantage of using raw measures is that we can not treat that measure as a Speed. This means that we can not ask that object for its distance or time components. For example:
```Smalltalk
((100 * kilometer) / ( 1 * hour)) distance  --> Will raise a doesNotUnderstand
```
On the other hand, if we create a subclass of **Evaluation** called **Speed**, for example:
```Smalltalk
Evaluation subclass: #Speed
	instanceVariableNames: 'distance time'

Speed class>>of: aDistance by: aTime
	^self new initializeOf: aDistance by: aTime

Speed>>distance
	^distance

Speed>>value
	^distance/time
```
Then, we can treat Speed objects as instance of Speed but also as measures. For example:
```Smalltalk
aSpeed := Speed of: (100 * kilometer) by: (1 * hour).
aSpeed distance --> Returns 100 kilometers.
```
Now, if you want to know the traveled distance after 3 hours, you can do:
```Smalltalk
aSpeed * (3 * hour) --> Returns 300 kilometers
```
The concept of Evaluation is very powerful, it allows to easily create layers on top of the *Measure model*, keeping their behavior as measures but adding the specific behavior of the concept they represent in the real world.
**Evaluation** can be used to represent interest rates, prices, etc.

## How reliable is the model?
The model was developed using Test Driven Development (TDD) and it has almost 600 tests.
The tests cover a 100 % of the model's code.

## Who wrote it?
The model was develop at Mercap Software mainly by Hernán Wilkinson but with valuable contributions from the rest of the XTrade team (Luciano Romeo, Maximiliano Taborda, Maximiliano Contieri, Juan Pablo Tirelli, Diego Fernandez, Gabriel Cotelli and Mariano Saura)

## What are the Smalltalks where it runs?
At this moment, the model works on VA Smalltalk, VisualWorks, Squeak, Pharo and GemStone.

## What is the license used to open the model?
The model is provided AS-IS, under the MIT license

## What can be improved?
One concept that we did not model is the concept of Domain. Right now two units are part of the same domain if they share the same base unit.
Also, it would be nice to have measures without the need of declaring units. For example, it would be nice to say "10 * Object" to represent that we have 10 objects, but this is not possible because the class Object is not a unit.

## Are there other models of the same problem?
Yes, there are other models of measures, in Smalltalk and other languages like Java and Scheme.
In Smalltalk, there is a VisualWorks implementation created by Travis Griggs. You can download it  from the VisualWorks public repository at http://www.glorp.org/publicRepository/Measurements.html
One of the differences with that model is that it does not provide the MeasureBag concept.
In Scheme, Gerald Jay Sussman provides an implementation but we did not have time to try it out. You can downloaded from http://swiss.csail.mit.edu/users/gjs/units/
The JSR 108 proposes to put Units in Java, but it has been withdraw. You can find it at http://www.jcp.org/en/jsr/detail?id=108 and there is a open implementation at http://jsr-108.sourceforge.net/javadoc/javax/units/Unit.html.
This proposal has too many differences with our approach and we believe the static typing characteristics of it will make it very difficult to use.
There is a new JSR, JSR 275 that it is in progress. You can see it at http://jcp.org/en/jsr/detail?id=275

## Are there any other documentation or papers about this problem?
Yes, the problem has been studied many times, and people that have been on the computer field for a long time remembers solution of this problem in languages like Fortram.
Some of the links we have are:
1. We presented this model at OOPSLA 2005 with a practitioner report named "Arithmetic with Measurements on Dynamically-Typed Object-Oriented Languages" by . Wilkinson, H., Prieto, M., Romeo, L., Companion Booklet of the 20th annual ACM SIGPLAN Conference on Object-oriented programming, systems, languages, and applications, OOPSLA 2005.
You can downloaded from: http://portal.acm.org/citation.cfm?id=1094964&coll=ACM&dl=ACM&CFID=72196433&CFTOKEN=8952623
2. Allen, E., Chase, D., Luchangco, V., Maessen, J. and Steele, G. Object-Oriented Units of Measurement, OOPSLA 2004.
3. Java Extension proposal JSR 108, Source Code at http://jsr-108.sourceforge.net Extension proposal at http://www.jcp.org/en/jsr/detail?id=108.
4. Java Extension proposal JSR 275, Extension proposal at http://www.jcp.org/en/jsr/detail?id=275.
5. Kennedy, Andrew J. Programming Languages and Dimensions. PhD Thesis, University of Cambridge. Published as Technical Report No. 391, University of Cambridge Computer Laboratory, April 1996

## Why did you created a new implementation instead of using an existing one?
There were many reasons we created this model. The first one was that we did not know about similar implementations in Smalltalk. When we discovered the Travis Griggs one, we did not like the implementation and it lacked some features we wanted to have. We also wanted to try TDD to see how it would work when implementing a model of this dimension.
We discarded the Java implementation because it is two restrictive due to its static typing characteristic and we did not liked the design of the solution.
We did not know about the Scheme implementation when we created this model, and we can not provide any judgment of it because we have not study it.

## Why is it called Aconcagua?
[Aconcagua](https://en.wikipedia.org/wiki/Aconcagua) is the name of the highest mountain in Argentina and the whole American Continent.
