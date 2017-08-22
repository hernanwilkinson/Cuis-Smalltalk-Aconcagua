'From Cuis 5.0 of 7 November 2016 [latest update: #3147] on 22 August 2017 at 4:38:21 pm'!
'Description Implementation of measure arithmethics. 

Presented at OOSPLA 2005: https://www.dropbox.com/s/7mjic72ab3a0oll/pr06-wilkinson.pdf?dl=0
You can read a FAQ here: https://www.dropbox.com/s/vcsxv26pqbzji44/Measure%20FAQ.doc?dl=0

It has some changes to the paper but there are some more I''d like to do like less exceptions and better tests'!
!provides: 'Aconcagua' 1 4!
!classDefinition: #CompoundMeasureFraction category: #'Aconcagua-MeasureModel'!
Fraction subclass: #CompoundMeasureFraction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CompoundMeasureFraction class' category: #'Aconcagua-MeasureModel'!
CompoundMeasureFraction class
	instanceVariableNames: ''!

!classDefinition: #IntervalAwareMagnitude category: #'Aconcagua-ArithmeticModel'!
Magnitude subclass: #IntervalAwareMagnitude
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'IntervalAwareMagnitude class' category: #'Aconcagua-ArithmeticModel'!
IntervalAwareMagnitude class
	instanceVariableNames: ''!

!classDefinition: #TestIntervalAwareMagnitude category: #'Aconcagua-ArithmeticModelTests'!
IntervalAwareMagnitude subclass: #TestIntervalAwareMagnitude
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'TestIntervalAwareMagnitude class' category: #'Aconcagua-ArithmeticModelTests'!
TestIntervalAwareMagnitude class
	instanceVariableNames: ''!

!classDefinition: #ArithmeticObjectInterval category: #'Aconcagua-ArithmeticModel'!
SequenceableCollection variableSubclass: #ArithmeticObjectInterval
	instanceVariableNames: 'from to by size intervalStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'ArithmeticObjectInterval class' category: #'Aconcagua-ArithmeticModel'!
ArithmeticObjectInterval class
	instanceVariableNames: ''!

!classDefinition: #IndeterminateOperationException category: #'Aconcagua-MeasureModel'!
Error subclass: #IndeterminateOperationException
	instanceVariableNames: 'operation leftOperand rightOperand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'IndeterminateOperationException class' category: #'Aconcagua-MeasureModel'!
IndeterminateOperationException class
	instanceVariableNames: ''!

!classDefinition: #InvalidProportionalUnitConversionFunctionException category: #'Aconcagua-MeasureModel'!
Error subclass: #InvalidProportionalUnitConversionFunctionException
	instanceVariableNames: 'sourceMeasure equivalentMeasure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'InvalidProportionalUnitConversionFunctionException class' category: #'Aconcagua-MeasureModel'!
InvalidProportionalUnitConversionFunctionException class
	instanceVariableNames: ''!

!classDefinition: #NoUnitConversionRuleException category: #'Aconcagua-MeasureModel'!
Error subclass: #NoUnitConversionRuleException
	instanceVariableNames: 'targetUnit sourceUnit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'NoUnitConversionRuleException class' category: #'Aconcagua-MeasureModel'!
NoUnitConversionRuleException class
	instanceVariableNames: ''!

!classDefinition: #IndexOutOfRangeException category: #'Aconcagua-ArithmeticModel'!
Error subclass: #IndexOutOfRangeException
	instanceVariableNames: 'index collection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'IndexOutOfRangeException class' category: #'Aconcagua-ArithmeticModel'!
IndexOutOfRangeException class
	instanceVariableNames: ''!

!classDefinition: #InvalidIntervalException category: #'Aconcagua-ArithmeticModel'!
Error subclass: #InvalidIntervalException
	instanceVariableNames: 'from to by'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'InvalidIntervalException class' category: #'Aconcagua-ArithmeticModel'!
InvalidIntervalException class
	instanceVariableNames: ''!

!classDefinition: #InvalidOperationException category: #'Aconcagua-ArithmeticModel'!
Error subclass: #InvalidOperationException
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'InvalidOperationException class' category: #'Aconcagua-ArithmeticModel'!
InvalidOperationException class
	instanceVariableNames: ''!

!classDefinition: #CanNotConvertMeasureException category: #'Aconcagua-MeasureModel'!
InvalidOperationException subclass: #CanNotConvertMeasureException
	instanceVariableNames: 'targetUnit sourceMeasure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CanNotConvertMeasureException class' category: #'Aconcagua-MeasureModel'!
CanNotConvertMeasureException class
	instanceVariableNames: ''!

!classDefinition: #InvalidBinaryOperationException category: #'Aconcagua-ArithmeticModel'!
InvalidOperationException subclass: #InvalidBinaryOperationException
	instanceVariableNames: 'operationName leftOperand rightOperand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'InvalidBinaryOperationException class' category: #'Aconcagua-ArithmeticModel'!
InvalidBinaryOperationException class
	instanceVariableNames: ''!

!classDefinition: #InvalidUnaryOperationException category: #'Aconcagua-ArithmeticModel'!
InvalidOperationException subclass: #InvalidUnaryOperationException
	instanceVariableNames: 'operationName operand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'InvalidUnaryOperationException class' category: #'Aconcagua-ArithmeticModel'!
InvalidUnaryOperationException class
	instanceVariableNames: ''!

!classDefinition: #UndefinedArithmeticObjectValueException category: #'Aconcagua-ArithmeticModel'!
Error subclass: #UndefinedArithmeticObjectValueException
	instanceVariableNames: 'arithmeticObject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'UndefinedArithmeticObjectValueException class' category: #'Aconcagua-ArithmeticModel'!
UndefinedArithmeticObjectValueException class
	instanceVariableNames: ''!

!classDefinition: #CannotApplyTopologicalSortToACyclicGraphException category: #'Aconcagua-GraphModel'!
Error subclass: #CannotApplyTopologicalSortToACyclicGraphException
	instanceVariableNames: 'graph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'CannotApplyTopologicalSortToACyclicGraphException class' category: #'Aconcagua-GraphModel'!
CannotApplyTopologicalSortToACyclicGraphException class
	instanceVariableNames: ''!

!classDefinition: #EdgeEndpointNotIncludedInNodesException category: #'Aconcagua-GraphModel'!
Error subclass: #EdgeEndpointNotIncludedInNodesException
	instanceVariableNames: 'invalidEdge edges nodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'EdgeEndpointNotIncludedInNodesException class' category: #'Aconcagua-GraphModel'!
EdgeEndpointNotIncludedInNodesException class
	instanceVariableNames: ''!

!classDefinition: #GraphPathNotFoundException category: #'Aconcagua-GraphModel'!
Error subclass: #GraphPathNotFoundException
	instanceVariableNames: 'source target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'GraphPathNotFoundException class' category: #'Aconcagua-GraphModel'!
GraphPathNotFoundException class
	instanceVariableNames: ''!

!classDefinition: #NodeNotFoundException category: #'Aconcagua-GraphModel'!
Error subclass: #NodeNotFoundException
	instanceVariableNames: 'node graph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'NodeNotFoundException class' category: #'Aconcagua-GraphModel'!
NodeNotFoundException class
	instanceVariableNames: ''!

!classDefinition: #ArithmeticObjectIntervalStrategyTest category: #'Aconcagua-ArithmeticModelTests'!
TestCase subclass: #ArithmeticObjectIntervalStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'ArithmeticObjectIntervalStrategyTest class' category: #'Aconcagua-ArithmeticModelTests'!
ArithmeticObjectIntervalStrategyTest class
	instanceVariableNames: ''!

!classDefinition: #ArithmeticObjectIntervalTest category: #'Aconcagua-ArithmeticModelTests'!
TestCase subclass: #ArithmeticObjectIntervalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'ArithmeticObjectIntervalTest class' category: #'Aconcagua-ArithmeticModelTests'!
ArithmeticObjectIntervalTest class
	instanceVariableNames: ''!

!classDefinition: #IntervalAwareMagnitudeTest category: #'Aconcagua-ArithmeticModelTests'!
TestCase subclass: #IntervalAwareMagnitudeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'IntervalAwareMagnitudeTest class' category: #'Aconcagua-ArithmeticModelTests'!
IntervalAwareMagnitudeTest class
	instanceVariableNames: ''!

!classDefinition: #NumberToArithmeticObjectAdapterTest category: #'Aconcagua-ArithmeticModelTests'!
TestCase subclass: #NumberToArithmeticObjectAdapterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'NumberToArithmeticObjectAdapterTest class' category: #'Aconcagua-ArithmeticModelTests'!
NumberToArithmeticObjectAdapterTest class
	instanceVariableNames: ''!

!classDefinition: #UndefinedArithmeticObjectValueExceptionTest category: #'Aconcagua-ArithmeticModelTests'!
TestCase subclass: #UndefinedArithmeticObjectValueExceptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'UndefinedArithmeticObjectValueExceptionTest class' category: #'Aconcagua-ArithmeticModelTests'!
UndefinedArithmeticObjectValueExceptionTest class
	instanceVariableNames: ''!

!classDefinition: #EdgeTest category: #'Aconcagua-GraphModelTests'!
TestCase subclass: #EdgeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModelTests'!
!classDefinition: 'EdgeTest class' category: #'Aconcagua-GraphModelTests'!
EdgeTest class
	instanceVariableNames: ''!

!classDefinition: #GraphPathFinderTest category: #'Aconcagua-GraphModelTests'!
TestCase subclass: #GraphPathFinderTest
	instanceVariableNames: 'finder graph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModelTests'!
!classDefinition: 'GraphPathFinderTest class' category: #'Aconcagua-GraphModelTests'!
GraphPathFinderTest class
	instanceVariableNames: ''!

!classDefinition: #GraphTest category: #'Aconcagua-GraphModelTests'!
TestCase subclass: #GraphTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModelTests'!
!classDefinition: 'GraphTest class' category: #'Aconcagua-GraphModelTests'!
GraphTest class
	instanceVariableNames: ''!

!classDefinition: #TopologicalSortTest category: #'Aconcagua-GraphModelTests'!
TestCase subclass: #TopologicalSortTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModelTests'!
!classDefinition: 'TopologicalSortTest class' category: #'Aconcagua-GraphModelTests'!
TopologicalSortTest class
	instanceVariableNames: ''!

!classDefinition: #BaseUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #BaseUnitTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'BaseUnitTest class' category: #'Aconcagua-MeasureModelTests'!
BaseUnitTest class
	instanceVariableNames: ''!

!classDefinition: #CircularReadStreamTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #CircularReadStreamTest
	instanceVariableNames: 'stream streamStaringInThirdElement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'CircularReadStreamTest class' category: #'Aconcagua-MeasureModelTests'!
CircularReadStreamTest class
	instanceVariableNames: ''!

!classDefinition: #CompoundMeasureTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #CompoundMeasureTest
	instanceVariableNames: 'units'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'CompoundMeasureTest class' category: #'Aconcagua-MeasureModelTests'!
CompoundMeasureTest class
	instanceVariableNames: ''!

!classDefinition: #ConversionTableTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #ConversionTableTest
	instanceVariableNames: 'units'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'ConversionTableTest class' category: #'Aconcagua-MeasureModelTests'!
ConversionTableTest class
	instanceVariableNames: ''!

!classDefinition: #DividedUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #DividedUnitTest
	instanceVariableNames: 'meter second meterOverSecond'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'DividedUnitTest class' category: #'Aconcagua-MeasureModelTests'!
DividedUnitTest class
	instanceVariableNames: ''!

!classDefinition: #EvaluationTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #EvaluationTest
	instanceVariableNames: 'formulaOfTenPesos formulaOfTwentyPesos messageName peso dollar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'EvaluationTest class' category: #'Aconcagua-MeasureModelTests'!
EvaluationTest class
	instanceVariableNames: ''!

!classDefinition: #InfinityClassTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #InfinityClassTest
	instanceVariableNames: 'meter second'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'InfinityClassTest class' category: #'Aconcagua-MeasureModelTests'!
InfinityClassTest class
	instanceVariableNames: ''!

!classDefinition: #MeasureConverterTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #MeasureConverterTest
	instanceVariableNames: 'units moneyConverter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'MeasureConverterTest class' category: #'Aconcagua-MeasureModelTests'!
MeasureConverterTest class
	instanceVariableNames: ''!

!classDefinition: #MinusInfinityClassTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #MinusInfinityClassTest
	instanceVariableNames: 'meter second'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'MinusInfinityClassTest class' category: #'Aconcagua-MeasureModelTests'!
MinusInfinityClassTest class
	instanceVariableNames: ''!

!classDefinition: #MultipliedUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #MultipliedUnitTest
	instanceVariableNames: 'meter second meterBySecond'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'MultipliedUnitTest class' category: #'Aconcagua-MeasureModelTests'!
MultipliedUnitTest class
	instanceVariableNames: ''!

!classDefinition: #NotProportionalDerivedUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #NotProportionalDerivedUnitTest
	instanceVariableNames: 'kelvin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'NotProportionalDerivedUnitTest class' category: #'Aconcagua-MeasureModelTests'!
NotProportionalDerivedUnitTest class
	instanceVariableNames: ''!

!classDefinition: #NullUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #NullUnitTest
	instanceVariableNames: 'nullUnit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'NullUnitTest class' category: #'Aconcagua-MeasureModelTests'!
NullUnitTest class
	instanceVariableNames: ''!

!classDefinition: #NumberMeasureProtocolTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #NumberMeasureProtocolTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'NumberMeasureProtocolTest class' category: #'Aconcagua-MeasureModelTests'!
NumberMeasureProtocolTest class
	instanceVariableNames: ''!

!classDefinition: #ProportionalDerivedUnitTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #ProportionalDerivedUnitTest
	instanceVariableNames: 'peso centavo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'ProportionalDerivedUnitTest class' category: #'Aconcagua-MeasureModelTests'!
ProportionalDerivedUnitTest class
	instanceVariableNames: ''!

!classDefinition: #ProportionalUnitConversionFunctionTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #ProportionalUnitConversionFunctionTest
	instanceVariableNames: 'peso dollar onePeso tenDollars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'ProportionalUnitConversionFunctionTest class' category: #'Aconcagua-MeasureModelTests'!
ProportionalUnitConversionFunctionTest class
	instanceVariableNames: ''!

!classDefinition: #SimpleMeasureTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #SimpleMeasureTest
	instanceVariableNames: 'units'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'SimpleMeasureTest class' category: #'Aconcagua-MeasureModelTests'!
SimpleMeasureTest class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionRuleTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #UnitConversionRuleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'UnitConversionRuleTest class' category: #'Aconcagua-MeasureModelTests'!
UnitConversionRuleTest class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionRuleToEdgeAdapterTest category: #'Aconcagua-MeasureModelTests'!
TestCase subclass: #UnitConversionRuleToEdgeAdapterTest
	instanceVariableNames: 'peso dollar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'UnitConversionRuleToEdgeAdapterTest class' category: #'Aconcagua-MeasureModelTests'!
UnitConversionRuleToEdgeAdapterTest class
	instanceVariableNames: ''!

!classDefinition: #UnitsTestResource category: #'Aconcagua-MeasureModelTests'!
TestResource subclass: #UnitsTestResource
	instanceVariableNames: 'units'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'UnitsTestResource class' category: #'Aconcagua-MeasureModelTests'!
UnitsTestResource class
	instanceVariableNames: ''!

!classDefinition: #CircularReadStream category: #'Aconcagua-MeasureModel'!
Object subclass: #CircularReadStream
	instanceVariableNames: 'collection position unit firstIndex lastIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CircularReadStream class' category: #'Aconcagua-MeasureModel'!
CircularReadStream class
	instanceVariableNames: ''!

!classDefinition: #ConversionTable category: #'Aconcagua-MeasureModel'!
Object subclass: #ConversionTable
	instanceVariableNames: 'graph unitConversionRules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'ConversionTable class' category: #'Aconcagua-MeasureModel'!
ConversionTable class
	instanceVariableNames: ''!

!classDefinition: #MeasureConverter category: #'Aconcagua-MeasureModel'!
Object subclass: #MeasureConverter
	instanceVariableNames: 'graphPathFinder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'MeasureConverter class' category: #'Aconcagua-MeasureModel'!
MeasureConverter class
	instanceVariableNames: ''!

!classDefinition: #Unit category: #'Aconcagua-MeasureModel'!
Object subclass: #Unit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'Unit class' category: #'Aconcagua-MeasureModel'!
Unit class
	instanceVariableNames: ''!

!classDefinition: #CompoundUnit category: #'Aconcagua-MeasureModel'!
Unit subclass: #CompoundUnit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CompoundUnit class' category: #'Aconcagua-MeasureModel'!
CompoundUnit class
	instanceVariableNames: ''!

!classDefinition: #DividedUnit category: #'Aconcagua-MeasureModel'!
CompoundUnit subclass: #DividedUnit
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'DividedUnit class' category: #'Aconcagua-MeasureModel'!
DividedUnit class
	instanceVariableNames: ''!

!classDefinition: #MultipliedUnit category: #'Aconcagua-MeasureModel'!
CompoundUnit subclass: #MultipliedUnit
	instanceVariableNames: 'factors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'MultipliedUnit class' category: #'Aconcagua-MeasureModel'!
MultipliedUnit class
	instanceVariableNames: ''!

!classDefinition: #NullUnit category: #'Aconcagua-MeasureModel'!
Unit subclass: #NullUnit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'NullUnit class' category: #'Aconcagua-MeasureModel'!
NullUnit class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #SimpleUnit category: #'Aconcagua-MeasureModel'!
Unit subclass: #SimpleUnit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'SimpleUnit class' category: #'Aconcagua-MeasureModel'!
SimpleUnit class
	instanceVariableNames: ''!

!classDefinition: #BaseUnit category: #'Aconcagua-MeasureModel'!
SimpleUnit subclass: #BaseUnit
	instanceVariableNames: 'nameForOne nameForMany sign'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'BaseUnit class' category: #'Aconcagua-MeasureModel'!
BaseUnit class
	instanceVariableNames: ''!

!classDefinition: #DerivedUnit category: #'Aconcagua-MeasureModel'!
SimpleUnit subclass: #DerivedUnit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'DerivedUnit class' category: #'Aconcagua-MeasureModel'!
DerivedUnit class
	instanceVariableNames: ''!

!classDefinition: #NotProportionalDerivedUnit category: #'Aconcagua-MeasureModel'!
DerivedUnit subclass: #NotProportionalDerivedUnit
	instanceVariableNames: 'nameForOne nameForMany sign baseUnit conversionBlock reciprocalConversionBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'NotProportionalDerivedUnit class' category: #'Aconcagua-MeasureModel'!
NotProportionalDerivedUnit class
	instanceVariableNames: ''!

!classDefinition: #ProportionalDerivedUnit category: #'Aconcagua-MeasureModel'!
DerivedUnit subclass: #ProportionalDerivedUnit
	instanceVariableNames: 'nameForOne nameForMany sign baseUnit conversionFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'ProportionalDerivedUnit class' category: #'Aconcagua-MeasureModel'!
ProportionalDerivedUnit class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionFunctionInterface category: #'Aconcagua-MeasureModel'!
Object subclass: #UnitConversionFunctionInterface
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'UnitConversionFunctionInterface class' category: #'Aconcagua-MeasureModel'!
UnitConversionFunctionInterface class
	instanceVariableNames: ''!

!classDefinition: #ProportionalUnitConversionFunction category: #'Aconcagua-MeasureModel'!
UnitConversionFunctionInterface subclass: #ProportionalUnitConversionFunction
	instanceVariableNames: 'sourceMeasure equivalentMeasure proportionalMeasure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'ProportionalUnitConversionFunction class' category: #'Aconcagua-MeasureModel'!
ProportionalUnitConversionFunction class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionRuleInterface category: #'Aconcagua-MeasureModel'!
Object subclass: #UnitConversionRuleInterface
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'UnitConversionRuleInterface class' category: #'Aconcagua-MeasureModel'!
UnitConversionRuleInterface class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionRule category: #'Aconcagua-MeasureModel'!
UnitConversionRuleInterface subclass: #UnitConversionRule
	instanceVariableNames: 'sourceUnit targetUnit function'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'UnitConversionRule class' category: #'Aconcagua-MeasureModel'!
UnitConversionRule class
	instanceVariableNames: ''!

!classDefinition: #UnitConversionRuleToEdgeAdapter category: #'Aconcagua-MeasureModel'!
UnitConversionRuleInterface subclass: #UnitConversionRuleToEdgeAdapter
	instanceVariableNames: 'unitConversionRule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'UnitConversionRuleToEdgeAdapter class' category: #'Aconcagua-MeasureModel'!
UnitConversionRuleToEdgeAdapter class
	instanceVariableNames: ''!

!classDefinition: #ArithmeticObject category: #'Aconcagua-ArithmeticModel'!
Object subclass: #ArithmeticObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'ArithmeticObject class' category: #'Aconcagua-ArithmeticModel'!
ArithmeticObject class
	instanceVariableNames: ''!

!classDefinition: #Evaluation category: #'Aconcagua-MeasureModel'!
ArithmeticObject subclass: #Evaluation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'Evaluation class' category: #'Aconcagua-MeasureModel'!
Evaluation class
	instanceVariableNames: ''!

!classDefinition: #CachedEvaluation category: #'Aconcagua-MeasureModel'!
Evaluation subclass: #CachedEvaluation
	instanceVariableNames: 'cachedValue evaluation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CachedEvaluation class' category: #'Aconcagua-MeasureModel'!
CachedEvaluation class
	instanceVariableNames: ''!

!classDefinition: #DummyEvaluation category: #'Aconcagua-MeasureModelTests'!
Evaluation subclass: #DummyEvaluation
	instanceVariableNames: 'measure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModelTests'!
!classDefinition: 'DummyEvaluation class' category: #'Aconcagua-MeasureModelTests'!
DummyEvaluation class
	instanceVariableNames: ''!

!classDefinition: #InfinityDefinition category: #'Aconcagua-MeasureModel'!
ArithmeticObject subclass: #InfinityDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'InfinityDefinition class' category: #'Aconcagua-MeasureModel'!
InfinityDefinition class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #Measure category: #'Aconcagua-MeasureModel'!
ArithmeticObject subclass: #Measure
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'Measure class' category: #'Aconcagua-MeasureModel'!
Measure class
	instanceVariableNames: ''!

!classDefinition: #CompoundMeasure category: #'Aconcagua-MeasureModel'!
Measure subclass: #CompoundMeasure
	instanceVariableNames: 'measures'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'CompoundMeasure class' category: #'Aconcagua-MeasureModel'!
CompoundMeasure class
	instanceVariableNames: ''!

!classDefinition: #SimpleMeasure category: #'Aconcagua-MeasureModel'!
Measure subclass: #SimpleMeasure
	instanceVariableNames: 'amount unit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'SimpleMeasure class' category: #'Aconcagua-MeasureModel'!
SimpleMeasure class
	instanceVariableNames: ''!

!classDefinition: #MinusInfinityDefinition category: #'Aconcagua-MeasureModel'!
ArithmeticObject subclass: #MinusInfinityDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'MinusInfinityDefinition class' category: #'Aconcagua-MeasureModel'!
MinusInfinityDefinition class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #IntervalStrategy category: #'Aconcagua-ArithmeticModel'!
Object subclass: #IntervalStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'IntervalStrategy class' category: #'Aconcagua-ArithmeticModel'!
IntervalStrategy class
	instanceVariableNames: ''!

!classDefinition: #InfinityIntervalStrategy category: #'Aconcagua-MeasureModel'!
IntervalStrategy subclass: #InfinityIntervalStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-MeasureModel'!
!classDefinition: 'InfinityIntervalStrategy class' category: #'Aconcagua-MeasureModel'!
InfinityIntervalStrategy class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #ArithmeticObjectIntervalStrategy category: #'Aconcagua-ArithmeticModel'!
IntervalStrategy subclass: #ArithmeticObjectIntervalStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'ArithmeticObjectIntervalStrategy class' category: #'Aconcagua-ArithmeticModel'!
ArithmeticObjectIntervalStrategy class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #TestIntervalStrategy category: #'Aconcagua-ArithmeticModelTests'!
IntervalStrategy subclass: #TestIntervalStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModelTests'!
!classDefinition: 'TestIntervalStrategy class' category: #'Aconcagua-ArithmeticModelTests'!
TestIntervalStrategy class
	instanceVariableNames: ''!

!classDefinition: #NumberToArithmeticObjectAdapter category: #'Aconcagua-ArithmeticModel'!
Object subclass: #NumberToArithmeticObjectAdapter
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-ArithmeticModel'!
!classDefinition: 'NumberToArithmeticObjectAdapter class' category: #'Aconcagua-ArithmeticModel'!
NumberToArithmeticObjectAdapter class
	instanceVariableNames: ''!

!classDefinition: #EdgeInterface category: #'Aconcagua-GraphModel'!
Object subclass: #EdgeInterface
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'EdgeInterface class' category: #'Aconcagua-GraphModel'!
EdgeInterface class
	instanceVariableNames: ''!

!classDefinition: #Edge category: #'Aconcagua-GraphModel'!
EdgeInterface subclass: #Edge
	instanceVariableNames: 'source target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'Edge class' category: #'Aconcagua-GraphModel'!
Edge class
	instanceVariableNames: ''!

!classDefinition: #Graph category: #'Aconcagua-GraphModel'!
Object subclass: #Graph
	instanceVariableNames: 'edges acyclic nodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'Graph class' category: #'Aconcagua-GraphModel'!
Graph class
	instanceVariableNames: ''!

!classDefinition: #GraphPathFinder category: #'Aconcagua-GraphModel'!
Object subclass: #GraphPathFinder
	instanceVariableNames: 'graph passedByEdges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'GraphPathFinder class' category: #'Aconcagua-GraphModel'!
GraphPathFinder class
	instanceVariableNames: ''!

!classDefinition: #TopologicalSort category: #'Aconcagua-GraphModel'!
Object subclass: #TopologicalSort
	instanceVariableNames: 'graph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Aconcagua-GraphModel'!
!classDefinition: 'TopologicalSort class' category: #'Aconcagua-GraphModel'!
TopologicalSort class
	instanceVariableNames: ''!


!Object methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:51:40'!
equalsCompoundMeasure: aMeasureBag

	^false! !

!Object methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:50:02'!
equalsSimpleMeasure: aMeasure

	^false! !

!Object methodsFor: '*Aconcagua-Extensions'!
isNothing

	^false! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:34:46'!
addCompoundMeasure: aMeasureBag

	^aMeasureBag addSimpleMeasure: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
addInfinity: anInfinity

	^anInfinity! !

!Number methodsFor: '*Aconcagua-Extensions'!
addMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:31:18'!
addSimpleMeasure: aMeasure

	^CompoundMeasure with: aMeasure with: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
amount

	^self! !

!Number methodsFor: '*Aconcagua-Extensions'!
baseUnit

	^NullUnit new! !

!Number methodsFor: '*Aconcagua-Extensions'!
compareGreaterThan: aNumber

	^aNumber < self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 20:03:58'!
composeWith: aMeasure

	^aMeasure composeWithNumber: self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 20:03:25'!
composeWithNumber: aNumber

	self error: 'A MeasureBag should not be created only with numbers'! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 20:04:02'!
composeWithSimpleMeasure: aMeasure

	^self isNothing 
		ifTrue: [aMeasure]
		ifFalse: [aMeasure composeWithNumber: self]! !

!Number methodsFor: '*Aconcagua-Extensions'!
convertAmountToBaseUnit

	^self! !

!Number methodsFor: '*Aconcagua-Extensions'!
convertTo: aTargetUnit 
	"A number only can be converted in a number... therefore, if the unit to which it is wanted to convert
	is the same to the one of the numbers returns self, else returns an error."
	
	^aTargetUnit = self baseUnit
		ifTrue: [ self ]
		ifFalse: [ 
			CanNotConvertMeasureException
				signalSourceMeasure: self 
				targetUnit: aTargetUnit ]! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HernanWilkinson 4/10/2014 19:07'!
convertTo: aUnit ifSuccessful: aSuccessfulBlock ifFails: aFailureBlock

	| convertedMeasure |
	
	convertedMeasure := [ self convertTo: aUnit ] 
		on: CanNotConvertMeasureException 
		do: [ :anError | ^aFailureBlock value ].
		
	^aSuccessfulBlock value: convertedMeasure ! !

!Number methodsFor: '*Aconcagua-Extensions'!
convertToBaseUnit

	^self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'SeanTAllen 11/28/2009 11:16'!
denominator

	^self asFraction denominator! !

!Number methodsFor: '*Aconcagua-Extensions'!
divideByUnit: aUnit

	^aUnit with: 1 / self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:38:20'!
divideCompoundMeasure: aMeasureBag

	^aMeasureBag divideByMeasure: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
divideInfinity: anInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions'!
divideMinusInfinity: aMinusInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:36:15'!
divideSimpleMeasure: aMeasure

	^SimpleMeasure amount: aMeasure amount / self unit: aMeasure unit! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:52:09'!
equalsCompoundMeasure: aMeasureBag

	^aMeasureBag equalsSimpleMeasure: self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:49:58'!
equalsSimpleMeasure: aMeasure

	^self isNothing and: [aMeasure isNothing]! !

!Number methodsFor: '*Aconcagua-Extensions'!
fromInfinity

	^ArithmeticObjectInterval
		from: Infinity
		to: self
		by: 1
		intervalStrategy: InfinityIntervalStrategy new! !

!Number methodsFor: '*Aconcagua-Extensions'!
fromMinusInfinity

	^ArithmeticObjectInterval
		from: MinusInfinity
		to: self
		by: 1
		intervalStrategy: InfinityIntervalStrategy new! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:53:33'!
greaterThanSimpleMeasure: aMeasure

	^self isNothing 
		ifTrue: [aMeasure < aMeasure unit nullMeasure]
		ifFalse: [(aMeasure convertTo: self baseUnit) amount < self]! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:56:20'!
isCompoundMeasure

	^false! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'mx 4/1/2007 18:06'!
isFixed

	^true! !

!Number methodsFor: '*Aconcagua-Extensions'!
isNothing

	^self = 0! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:54:59'!
lessThanSimpleMeasure: aMeasure

	^self isNothing 
		ifTrue: [aMeasure > aMeasure unit nullMeasure]
		ifFalse: [(aMeasure convertTo: self baseUnit) amount > self]! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:41:40'!
moduloCompoundMeasure: aMeasureBag

	^aMeasureBag moduloByMeasure: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
moduloInfinity: anInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions'!
moduloMinusInfinity: aMInusInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:40:18'!
moduloSimpleMeasure: aMeasure

	^SimpleMeasure amount: aMeasure amount // self unit: aMeasure unit! !

!Number methodsFor: '*Aconcagua-Extensions'!
multiplyByUnit: aUnit

	^aUnit with: self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:44:51'!
multiplyCompoundMeasure: aMeasureBag

	^aMeasureBag multiplySimpleMeasure: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
multiplyInfinity: anInfinity

	^self > 0 ifTrue: [anInfinity] ifFalse: [anInfinity negated]! !

!Number methodsFor: '*Aconcagua-Extensions'!
multiplyMinusInfinity: aMinusInfinity

	^self > 0 ifTrue: [aMinusInfinity] ifFalse: [aMinusInfinity negated]! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:43:03'!
multiplySimpleMeasure: aMeasure

	^SimpleMeasure amount: aMeasure amount * self unit: aMeasure unit! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'SeanTAllen 11/28/2009 11:16'!
numerator

	^self asFraction numerator! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 20:12:06'!
remainderCompoundMeasure: aMeasureBag

	^aMeasureBag remainderByNumber: self! !

!Number methodsFor: '*Aconcagua-Extensions'!
remainderInfinity: anInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions'!
remainderMinusInfinity: aMinusInfinity

	^0! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'HAW 3/25/2017 19:46:57'!
remainderSimpleMeasure: aMeasure

	^SimpleMeasure amount: aMeasure amount \\ self unit: aMeasure unit! !

!Number methodsFor: '*Aconcagua-Extensions'!
sameDomainAs: aMeasure

	^self unit sameDomainAs: aMeasure unit! !

!Number methodsFor: '*Aconcagua-Extensions'!
subtractFrom: aNumber

	^aNumber - self! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'mx 3/28/2007 21:54'!
subtractInfinity: anInfinity

	^anInfinity! !

!Number methodsFor: '*Aconcagua-Extensions' stamp: 'mx 3/28/2007 21:54'!
subtractMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!Number methodsFor: '*Aconcagua-Extensions'!
toInfinity

	^ArithmeticObjectInterval
		from: self
		to: Infinity
		by: 1
		intervalStrategy: InfinityIntervalStrategy new! !

!Number methodsFor: '*Aconcagua-Extensions'!
toMinusInfinity

	^ArithmeticObjectInterval
		from: self
		to: MinusInfinity
		by: 1
		intervalStrategy: InfinityIntervalStrategy new! !

!Number methodsFor: '*Aconcagua-Extensions'!
unit

	^self baseUnit! !

!Number methodsFor: '*Aconcagua-Extensions'!
unitNameOf: aUnit

	^self abs = 1 ifTrue: [aUnit nameForOne] ifFalse: [aUnit nameForMany]! !

!CompoundMeasureFraction methodsFor: 'arithmetic operations' stamp: 'GabrielOmarCotelli 9/18/2009 20:53'!
= anObject

	^self class = anObject class ifTrue:[ (numerator * anObject denominator) = (denominator * anObject numerator)  ]
	ifFalse:[super = anObject 		]! !

!CompoundMeasureFraction methodsFor: 'arithmetic operations' stamp: 'GabrielOmarCotelli 9/18/2009 20:45'!
isFraction

	^false! !

!CompoundMeasureFraction methodsFor: 'private'!
numerator: aNumerator denominator: aDenominator

	self setNumerator: aNumerator denominator: aDenominator! !

!CompoundMeasureFraction methodsFor: 'printing'!
printOn: aStream base: base

	aStream nextPut: $(.
	numerator printOn: aStream.
	aStream nextPut: $/.
	denominator printOn: aStream.
	aStream nextPut: $)! !

!CompoundMeasureFraction methodsFor: 'private'!
setNumerator: aNumerator denominator: aDenominator

	aDenominator = 0
		ifTrue: [^(ZeroDivide dividend: aNumerator) signal]
		ifFalse: 
			[numerator := aNumerator.
			denominator := aDenominator]! !

!CompoundMeasureFraction methodsFor: 'arithmetic operations'!
truncated

	InvalidUnaryOperationException signalOperationName: 'truncated' operand: self! !

!IntervalAwareMagnitude methodsFor: 'comparing'!
= anObject

	^self == anObject! !

!IntervalAwareMagnitude methodsFor: 'magnitude protocol'!
between: min andNotInclusive: max

	 ^min <= self and: [self < max]! !

!IntervalAwareMagnitude methodsFor: 'interval protocol - private'!
defaultIntervalIncrement

	self subclassResponsibility! !

!IntervalAwareMagnitude methodsFor: 'comparing'!
hash

	^self identityHash! !

!IntervalAwareMagnitude methodsFor: 'interval protocol - private'!
intervalStrategy

	self subclassResponsibility! !

!IntervalAwareMagnitude methodsFor: 'magnitude protocol'!
notInclusiveBetween: min and: max

	 ^min < self and: [self <= max]! !

!IntervalAwareMagnitude methodsFor: 'magnitude protocol'!
notInclusiveBetween: min andNotInclusive: max

	 ^min < self and: [self < max]! !

!IntervalAwareMagnitude methodsFor: 'interval protocol'!
to: aMagnitude

	^self to: aMagnitude by: self defaultIntervalIncrement! !

!IntervalAwareMagnitude methodsFor: 'interval protocol'!
to: aMagnitude by: anIncrement

	^ArithmeticObjectInterval from: self to: aMagnitude by: anIncrement intervalStrategy: self intervalStrategy! !

!IntervalAwareMagnitude methodsFor: 'interval protocol' stamp: 'HAW 5/25/2009 18:30'!
toYourself

	^self to: self! !

!TestIntervalAwareMagnitude methodsFor: 'magnitude protocol'!
< aTestIntervalAwareMagnitude

	^number < aTestIntervalAwareMagnitude number! !

!TestIntervalAwareMagnitude methodsFor: 'comparing'!
= aTestIntervalAwareMagnitude

	^self class = aTestIntervalAwareMagnitude class and: [ number = aTestIntervalAwareMagnitude number ]! !

!TestIntervalAwareMagnitude methodsFor: 'interval protocol - private'!
defaultIntervalIncrement

	^self class with: 1! !

!TestIntervalAwareMagnitude methodsFor: 'comparing'!
hash

	^self class hash bitXor: number hash! !

!TestIntervalAwareMagnitude methodsFor: 'initialization'!
initializeWith: aNumber

	number := aNumber! !

!TestIntervalAwareMagnitude methodsFor: 'interval protocol - private'!
intervalStrategy

	^TestIntervalStrategy new! !

!TestIntervalAwareMagnitude methodsFor: 'accessing'!
number

	^number! !

!TestIntervalAwareMagnitude class methodsFor: 'instance creation'!
with: aNumber

	^self new initializeWith: aNumber! !

!ArithmeticObjectInterval methodsFor: 'comparing'!
= aCollection

	^self == aCollection 
		or: [ self class = aCollection class 
				and: [ from = aCollection from 
				and: [by = aCollection by
				and: [to = aCollection to]]]]! !

!ArithmeticObjectInterval methodsFor: 'adding/removing'!
add: newObject

	self shouldNotImplement! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
at: anIndex

	(anIndex < 1 or: [ anIndex > self size ]) ifTrue: [ IndexOutOfRangeException signalIndex: anIndex collection: self ].

	^intervalStrategy advanceFrom: from steps: anIndex - 1 by: by.

! !

!ArithmeticObjectInterval methodsFor: 'adding/removing'!
at: anInteger put: anObject

	self shouldNotImplement! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
by

	^by! !

!ArithmeticObjectInterval methodsFor: 'copying' stamp: 'HAW 3/25/2017 11:42:19'!
copyAndGrowBy: anInteger

	| newSequenceableCollection |
	
	newSequenceableCollection := self species new: size + anInteger.
	self withIndexDo: [ :anObject :anIndex | newSequenceableCollection at: anIndex put: anObject ].
	^newSequenceableCollection! !

!ArithmeticObjectInterval methodsFor: 'copying'!
deepCopy

	^self shallowCopy! !

!ArithmeticObjectInterval methodsFor: 'enumerating'!
do: aBlock

	| element |

	"I have to doit this way because I should not go one element after the last one...
	For example, with TimeOfDay it generates an invalid time wich raise an excpetion
	The interval always have one element"	
	element := from.
	aBlock value: from.
	size-1 timesRepeat: [ 
		element := intervalStrategy advanceFrom: element by: by.
		aBlock value: element ].! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
from

	^from! !

!ArithmeticObjectInterval methodsFor: 'comparing'!
hash

	^from hash bitXor: (to hash bitXor: by hash)! !

!ArithmeticObjectInterval methodsFor: 'querying' stamp: 'mx 3/28/2007 21:51'!
includes: anObject

	| incrementsToObject |

	incrementsToObject := intervalStrategy stepsFrom: from to: anObject by: by.
	^0 <= incrementsToObject and: [incrementsToObject < size and: [incrementsToObject isInteger]]! !

!ArithmeticObjectInterval methodsFor: 'initialization'!
initializeFrom: aStart to: aStop by: aStep intervalStrategy: anIntervalStrategy

	from := aStart.
	to := aStop.
	by := aStep.
	intervalStrategy := anIntervalStrategy.
	
	self initializeSize.! !

!ArithmeticObjectInterval methodsFor: 'initialization'!
initializeSize

	size := (intervalStrategy stepsFrom: from to: to by: by) truncated + 1
! !

!ArithmeticObjectInterval methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: 'Interval from: '.
	self from printOn: aStream.
	aStream nextPutAll: ' to: '.
	self to printOn: aStream.
	aStream nextPutAll: ' by: '.
	self by printOn: aStream! !

!ArithmeticObjectInterval methodsFor: 'enumerating'!
reject: aBlock

	| index answer |

	index := 0.
	answer := self species new: size.
	self do: [ :anObject |
		(aBlock value: anObject) ifFalse: [
			index := index + 1.
			answer at: index put: anObject ] ].
		
	^answer copyFrom: 1 to: index! !

!ArithmeticObjectInterval methodsFor: 'adding/removing'!
remove: oldObject ifAbsent: anExceptionBlock

	self shouldNotImplement! !

!ArithmeticObjectInterval methodsFor: 'enumerating'!
reverse

	| answer index |
	
	answer := self species new: size.
	index := 1.

	self reverseDo: [ :anObject |
		answer at: index put: anObject.
		index := index + 1 ].

	^answer! !

!ArithmeticObjectInterval methodsFor: 'enumerating'!
reverseDo: aBlock

	| steps |
	steps := size - 1.
	size timesRepeat: [ 
		aBlock value: (intervalStrategy advanceFrom: from steps: steps by: by).
		steps := steps - 1. ].! !

!ArithmeticObjectInterval methodsFor: 'enumerating'!
select: aBlock

	| index answer |

	index := 0.
	answer := self species new: size.
	self do: [ :anObject |
		(aBlock value: anObject) ifTrue: [
			index := index + 1.
			answer at: index put: anObject ] ].
		
	^answer copyFrom: 1 to: index! !

!ArithmeticObjectInterval methodsFor: 'copying'!
shallowCopy

	^self class from: from to: to by: by! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
size

	^size	! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
species

	^Array! !

!ArithmeticObjectInterval methodsFor: 'storing'!
storeOn: aStream

	"Append to the argument aStream a sequence of characters that is a
	 Smalltalk expression whose evaluation creates an object similar to
	 the receiver.

	 Fail if aStream is not a kind of Stream."

	aStream
		nextPut: $( ;
		nextPutAll: self class name;
		nextPutAll: ' from: ' .
	from storeOn: aStream.
	aStream nextPutAll: ' to: ' .
	to storeOn: aStream.
	aStream nextPutAll: ' by: ' .
	by storeOn: aStream.
	aStream nextPut: $)! !

!ArithmeticObjectInterval methodsFor: 'accessing'!
to

	^to! !

!ArithmeticObjectInterval methodsFor: 'enumerating' stamp: 'HAW 3/25/2017 11:42:05'!
withIndexDo: aBlock

	| index |
	
	index := 1.
	self do: [ :anObject |
		aBlock value: anObject value: index.
		index := index + 1 ].
! !

!ArithmeticObjectInterval class methodsFor: 'instance creation'!
defaultIntervalStrategy

	^ArithmeticObjectIntervalStrategy new
! !

!ArithmeticObjectInterval class methodsFor: 'instance creation'!
from: start to: stop by: step

	^self from: start to: stop by: step intervalStrategy: self defaultIntervalStrategy
! !

!ArithmeticObjectInterval class methodsFor: 'instance creation'!
from: start to: stop by: step intervalStrategy: anIntervalStrategy

	(anIntervalStrategy isValidIntervalFrom: start to: stop by: step) 
		ifFalse: [ InvalidIntervalException signalFrom: start to: stop by: step ].
		
	^self new initializeFrom: start to: stop by: step intervalStrategy: anIntervalStrategy
! !

!IndeterminateOperationException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 12:06:53'!
description

	^'The {1} operation is indeterminate between {2} and {3}' format: { operation .leftOperand .rightOperand }! !

!IndeterminateOperationException methodsFor: 'initialization'!
initializeOperation: anOperation leftOperand: aLeftOperand rightOperand: aRightOperand

	operation := anOperation.
	leftOperand := aLeftOperand.
	rightOperand := aRightOperand! !

!IndeterminateOperationException class methodsFor: 'instance creation'!
operation: anOperation leftOperand: aLeftOperand rightOperand: aRightOperand

	^self new initializeOperation: anOperation leftOperand: aLeftOperand rightOperand: aRightOperand! !

!IndeterminateOperationException class methodsFor: 'signaling'!
signalOperation: anOperation leftOperand: aLeftOperand rightOperand: aRightOperand

	(self operation: anOperation leftOperand: aLeftOperand rightOperand: aRightOperand) signal! !

!InvalidProportionalUnitConversionFunctionException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 13:01:43'!
description

	^'The proportional relation between {1} and {2} it is not valid because {1} represents nothing or they are not of the same domain' format: { sourceMeasure .equivalentMeasure }! !

!InvalidProportionalUnitConversionFunctionException methodsFor: 'accessing'!
equivalentMeasure

	^equivalentMeasure! !

!InvalidProportionalUnitConversionFunctionException methodsFor: 'initialization'!
initializeSourceMeasure: aSourceMeasure equivalentMeasure: aEquivalentMeasure

	sourceMeasure := aSourceMeasure.
	equivalentMeasure := aEquivalentMeasure! !

!InvalidProportionalUnitConversionFunctionException methodsFor: 'accessing'!
sourceMeasure

	^sourceMeasure! !

!InvalidProportionalUnitConversionFunctionException class methodsFor: 'signaling'!
signalSourceMeasure: aSourceMeasure equivalentMeasure: aEquivalentMeasure

	(self sourceMeasure: aSourceMeasure equivalentMeasure: aEquivalentMeasure) signal! !

!InvalidProportionalUnitConversionFunctionException class methodsFor: 'instance creation'!
sourceMeasure: aSourceMeasure equivalentMeasure: aEquivalentMeasure

	^self new initializeSourceMeasure: aSourceMeasure equivalentMeasure: aEquivalentMeasure! !

!NoUnitConversionRuleException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 12:06:20'!
description

	^'Does not exist a conversion rule from {1} to {2}' format: { sourceUnit .targetUnit }! !

!NoUnitConversionRuleException methodsFor: 'initialization'!
initializeWith: aSourceUnit targetUnit: aTargetUnit

	sourceUnit := aSourceUnit.
	targetUnit := aTargetUnit! !

!NoUnitConversionRuleException methodsFor: 'accessing'!
sourceUnit 

	^sourceUnit
! !

!NoUnitConversionRuleException methodsFor: 'accessing'!
targetUnit 

	^targetUnit! !

!NoUnitConversionRuleException class methodsFor: 'signaling'!
signalWithSourceUnit: aSourceUnit targetUnit: aTargetUnit

	(self sourceUnit: aSourceUnit targetUnit: aTargetUnit) signal! !

!NoUnitConversionRuleException class methodsFor: 'instance creation'!
sourceUnit: aSourceUnit targetUnit: aTargetUnit

	^self new initializeWith: aSourceUnit targetUnit: aTargetUnit! !

!IndexOutOfRangeException methodsFor: 'accessing'!
collection

	^collection! !

!IndexOutOfRangeException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:47:51'!
description

	^index isNil 
		ifTrue: [ 'Index out of range for {1}' format: { collection } ]
		ifFalse: [ 'Index {1} out of range for {2}' format: { index .collection }]! !

!IndexOutOfRangeException methodsFor: 'accessing'!
index

	^index! !

!IndexOutOfRangeException methodsFor: 'initialization'!
initializeIndex: anIndex collection: aCollection

	index := anIndex.	
	collection := aCollection! !

!IndexOutOfRangeException class methodsFor: 'instance creating'!
index: anIndex collection: aCollection
	
	^self new initializeIndex: anIndex collection: aCollection
	
	! !

!IndexOutOfRangeException class methodsFor: 'signaling'!
signalIndex: anIndex collection: aCollection
	
	(self index: anIndex collection: aCollection) signal! !

!InvalidIntervalException methodsFor: 'accessing'!
by

	^by! !

!InvalidIntervalException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:49:29'!
description

	^'An interval cannot be created from {1} to {2} with an increase of {3}' format: {from .to .by}! !

!InvalidIntervalException methodsFor: 'accessing'!
from

	^from! !

!InvalidIntervalException methodsFor: 'initialization'!
initializeFrom: aFrom to: aTo by: aBy

	from := aFrom.
	to := aTo.
	by := aBy.! !

!InvalidIntervalException methodsFor: 'accessing'!
to

	^to! !

!InvalidIntervalException class methodsFor: 'instance creation'!
from: aFrom to: aTo by: aBy

	^self new initializeFrom: aFrom to: aTo by: aBy! !

!InvalidIntervalException class methodsFor: 'signaling'!
signalFrom: aFrom to: aTo by: aBy

	(self from: aFrom to: aTo by: aBy) signal! !

!InvalidOperationException methodsFor: 'accessing'!
operationName

	self subclassResponsibility! !

!CanNotConvertMeasureException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 12:59:16'!
description

	^'It is not possible to convert {1} to {2}' format: { sourceMeasure .targetUnit }! !

!CanNotConvertMeasureException methodsFor: 'initialization'!
initializeWith: aSourceMeasure targetUnit: aTargetUnit 

	sourceMeasure := aSourceMeasure.
	targetUnit := aTargetUnit! !

!CanNotConvertMeasureException methodsFor: 'priv handling'!
isResumable

	^true! !

!CanNotConvertMeasureException methodsFor: 'accessing'!
operationName

	^'convertTo:'! !

!CanNotConvertMeasureException methodsFor: 'accessing'!
sourceMeasure

	^sourceMeasure! !

!CanNotConvertMeasureException methodsFor: 'accessing'!
targetUnit

	^targetUnit! !

!CanNotConvertMeasureException class methodsFor: 'signaling'!
signalSourceMeasure: aSourceMeasure targetUnit: aTargetUnit

	^(self sourceMeasure: aSourceMeasure targetUnit: aTargetUnit) signal! !

!CanNotConvertMeasureException class methodsFor: 'instance creation'!
sourceMeasure: aSourceMeasure targetUnit: aTargetUnit

	^self new initializeWith: aSourceMeasure targetUnit: aTargetUnit! !

!InvalidBinaryOperationException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 12:58:35'!
description

	^'Attempt to make the operation {1} between {2} and {3} which is invalid' format: { operationName .leftOperand .rightOperand }! !

!InvalidBinaryOperationException methodsFor: 'initialization'!
initializeOperationName: anOperationName leftOperand: aLeftOperand rightOperand: aRightOperand

	operationName := anOperationName.
	leftOperand := aLeftOperand.
	rightOperand := aRightOperand.! !

!InvalidBinaryOperationException methodsFor: 'accessing'!
leftOperand

	^leftOperand! !

!InvalidBinaryOperationException methodsFor: 'accessing'!
operationName

	^operationName! !

!InvalidBinaryOperationException methodsFor: 'accessing'!
rightOperand

	^rightOperand! !

!InvalidBinaryOperationException class methodsFor: 'instance creation'!
operationName: anOperationName leftOperand: aLeftOperand rightOperand: aRightOperand

	^self new initializeOperationName: anOperationName leftOperand: aLeftOperand rightOperand: aRightOperand! !

!InvalidBinaryOperationException class methodsFor: 'signaling'!
signalOperationName: anOperationName leftOperand: aLeftOperand rightOperand: aRightOperand

	(self operationName: anOperationName leftOperand: aLeftOperand rightOperand: aRightOperand) signal! !

!InvalidUnaryOperationException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 12:59:58'!
description

	^'Attempt to make the operation  {1} with {2} which is invalid' format: { operationName .operand }! !

!InvalidUnaryOperationException methodsFor: 'initialization'!
initializeOperationName: anOperationName operand: anOperand

	operationName := anOperationName.
	operand := anOperand.! !

!InvalidUnaryOperationException methodsFor: 'accessing'!
operand

	^operand! !

!InvalidUnaryOperationException methodsFor: 'accessing'!
operationName

	^operationName! !

!InvalidUnaryOperationException class methodsFor: 'instance creation'!
operationName: anOperationName operand: anOperand

	^self new initializeOperationName: anOperationName operand: anOperand! !

!InvalidUnaryOperationException class methodsFor: 'signaling'!
signalOperationName: anOperationName operand: anOperand

	(self operationName: anOperationName operand: anOperand) signal! !

!UndefinedArithmeticObjectValueException methodsFor: 'accessing'!
arithmeticObject

	^arithmeticObject! !

!UndefinedArithmeticObjectValueException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:50:29'!
description

	^'Undefined value of arithmetical operation: "{1}"' format:  {arithmeticObject}! !

!UndefinedArithmeticObjectValueException methodsFor: 'initialization'!
initializeArithmeticObject: anArithmeticObject

	arithmeticObject := anArithmeticObject.! !

!UndefinedArithmeticObjectValueException class methodsFor: 'instance creation'!
arithmeticObject: anArithmeticObject

	^self new initializeArithmeticObject: anArithmeticObject! !

!UndefinedArithmeticObjectValueException class methodsFor: 'signaling'!
signalArithmeticObject: anArithmeticObject

	(self arithmeticObject: anArithmeticObject) signal! !

!CannotApplyTopologicalSortToACyclicGraphException methodsFor: 'accessing'!
description

	^'The algorithm of topological sort cannot be applied to a graph with cycles'! !

!CannotApplyTopologicalSortToACyclicGraphException methodsFor: 'accessing'!
graph

	^graph! !

!CannotApplyTopologicalSortToACyclicGraphException methodsFor: 'initialization'!
initializeGraph: aGraph

	graph := aGraph.! !

!CannotApplyTopologicalSortToACyclicGraphException class methodsFor: 'instance creation'!
graph: aGraph

	^self new initializeGraph: aGraph! !

!CannotApplyTopologicalSortToACyclicGraphException class methodsFor: 'signaling'!
signalGraph: aGraph

	(self graph: aGraph) signal! !

!EdgeEndpointNotIncludedInNodesException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:51:50'!
description

	^'Some of the ends of the axis {1} is not including in the set of nodes ' format: { invalidEdge }! !

!EdgeEndpointNotIncludedInNodesException methodsFor: 'accessing'!
edges

	^edges! !

!EdgeEndpointNotIncludedInNodesException methodsFor: 'initialization'!
initializeInvalidEdge: anInvalidEdge edges: anEdges nodes: aNodes

	invalidEdge := anInvalidEdge.
	edges := anEdges.
	nodes := aNodes! !

!EdgeEndpointNotIncludedInNodesException methodsFor: 'accessing'!
invalidEdge

	^invalidEdge! !

!EdgeEndpointNotIncludedInNodesException methodsFor: 'accessing'!
nodes

	^nodes! !

!EdgeEndpointNotIncludedInNodesException class methodsFor: 'instance creation'!
invalidEdge: anInvalidEdge edges: anEdges nodes: aNodes

	^self new initializeInvalidEdge: anInvalidEdge edges: anEdges nodes: aNodes! !

!EdgeEndpointNotIncludedInNodesException class methodsFor: 'signaling'!
signalInvalidEdge: anInvalidEdge edges: anEdges nodes: aNodes

	(self invalidEdge: anInvalidEdge edges: anEdges nodes: aNodes) signal! !

!GraphPathNotFoundException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:51:18'!
description

	^'A way was not from {1} to {2}' format: { source .target }! !

!GraphPathNotFoundException methodsFor: 'initialization'!
initializeWithSource: aSourceNode target: aTargetNode

	source := aSourceNode.
	target := aTargetNode! !

!GraphPathNotFoundException methodsFor: 'accessing'!
source 

	^source! !

!GraphPathNotFoundException methodsFor: 'accessing'!
target

	^target! !

!GraphPathNotFoundException class methodsFor: 'signaling'!
signalWithSource: aSourceNode target: aTargetNode

	(self source: aSourceNode target: aTargetNode) signal! !

!GraphPathNotFoundException class methodsFor: 'instance creation'!
source: aSourceNode target: aTargetNode

	^self new initializeWithSource: aSourceNode target: aTargetNode! !

!NodeNotFoundException methodsFor: 'accessing' stamp: 'HAW 3/25/2017 11:52:17'!
description

	^'The graph does not contain the node {1}' format:  {node}! !

!NodeNotFoundException methodsFor: 'accessing'!
graph

	^graph! !

!NodeNotFoundException methodsFor: 'initialization'!
initializeNode: aNode graph: aGraph

	node := aNode.
	graph := aGraph! !

!NodeNotFoundException methodsFor: 'accessing'!
node

	^node! !

!NodeNotFoundException class methodsFor: 'instance creation'!
node: aNode graph: aGraph

	^self new initializeNode: aNode graph: aGraph! !

!NodeNotFoundException class methodsFor: 'signaling'!
signalNode: aNode graph: aGraph

	(self node: aNode graph: aGraph) signal! !

!ArithmeticObjectIntervalStrategyTest methodsFor: 'test'!
testSingleton

	self assert: ArithmeticObjectIntervalStrategy new == ArithmeticObjectIntervalStrategy new! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testAccessing

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	
	self assert: interval from=1.
	self assert: interval to=10.
	self assert: interval by=2.
	! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testAdd

	self 
		should: [ (ArithmeticObjectInterval from: 1 to: 10 by: 1) add: 1]
		raise: Exception! !

!ArithmeticObjectIntervalTest methodsFor: 'test' stamp: 'HAW 3/25/2017 11:42:24'!
testAddToCollection

	| collection |
	
	collection := OrderedCollection new addAll: (ArithmeticObjectInterval from: 10 to: 20 by: 1); yourself.
	self assert: collection size = 11.
	(10 to: 20) withIndexDo: [ :value :index | self assert: (collection at: index) = value ]! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testAt

	| interval |

	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.

	self assert: (interval first) = 1.
	self assert: (interval at: 2) = 3.
	self assert: (interval at: 3) = 5.
	self assert: (interval at: 4) = 7.
	self assert: (interval at: 5) = 9.
	self should: [interval at: 11] raise: IndexOutOfRangeException! !

!ArithmeticObjectIntervalTest methodsFor: 'test comparing'!
testComparing

	| interval1 interval2 |
	
	interval1 := ArithmeticObjectInterval from: 1 to: 5 by: 2.
	interval2 := ArithmeticObjectInterval from: 1 to: 5 by: 2.
	self assert: interval1=interval2.

	interval2 := ArithmeticObjectInterval from: 1 to: 5 by: 1.
	self deny: interval1=interval2.
	! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testCopyAndGrowBy

	| original copy |
	
	original := ArithmeticObjectInterval from: 1 to: 10 by: 1.
	copy := original copyAndGrowBy: 10.
	
	self assert: copy size=20.
	1 to: 10 do: [ :aNumber | self assert: (copy at: aNumber) = aNumber ].
	11 to: 20 do: [ :aNumber | self assert: (copy at: aNumber) isNil ]
! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testDeepCopy

	| original copy |
	
	original := ArithmeticObjectInterval from: 1 to: 10 by: 1.
	copy := original deepCopy.
	
	self assert: original = copy.
	self deny: original == copy.! !

!ArithmeticObjectIntervalTest methodsFor: 'test enumerating'!
testDo

	| interval number |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	number := 1.
	interval do: [ :aNumber |
		self assert: aNumber= number.
		number := number + 2 ].

	self assert: number=11.
! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testFirst

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	
	self assert: interval first=1.
! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testHash

	self assert: (ArithmeticObjectInterval from: 1 to: 5 by: 2) hash=(ArithmeticObjectInterval from: 1 to: 5 by: 2) hash
! !

!ArithmeticObjectIntervalTest methodsFor: 'test querying'!
testIncludes

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 5 by: 2.

	self assert: (interval includes: 1).
	self assert: (interval includes: 3).
	self assert: (interval includes: 5).
	self deny: (interval includes: 0).
	self deny: (interval includes: 6).
	self deny: (interval includes: 7).
	self deny: (interval includes: 2).
	self deny: (interval includes: 4).

! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testInvalidAt

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	
	self 
		should: [ interval at: 0 ]
		raise: IndexOutOfRangeException
		withExceptionDo: [ :anException |
			self assert: anException description notNil.
			self assert: anException index = 0.
			self assert: anException collection = interval ].

	self should: [ interval at: interval size + 1 ] raise: IndexOutOfRangeException! !

!ArithmeticObjectIntervalTest methodsFor: 'test instance creation'!
testInvalidCreation

	self 
		should: [ ArithmeticObjectInterval from: 1 to: -1 by: 2]
		raise: InvalidIntervalException
		withExceptionDo: [ :anException |
			self assert: anException description notNil.
			self assert: anException from=1.
			self assert: anException to = -1.
			self assert: anException by = 2 ].
	
	self should: [ ArithmeticObjectInterval from: -1 to: 1 by: -2] raise: InvalidIntervalException.
	self should: [ ArithmeticObjectInterval from: 1  to: 2 by: -1] raise: InvalidIntervalException.
	self should: [ ArithmeticObjectInterval from: -1 to: -2 by: 1] raise: InvalidIntervalException.
	self should: [ ArithmeticObjectInterval from: 1 to: 2 by: 0] raise: InvalidIntervalException! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testLast

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	
	self assert: interval last=9.
! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testPrintOn

	self assert: (ArithmeticObjectInterval from: 1 to: 10 by: 1) printString = 'Interval from: 1 to: 10 by: 1'! !

!ArithmeticObjectIntervalTest methodsFor: 'test enumerating'!
testReject

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	self assert: (interval reject: [:a | a > 5])=(Array with: 1 with: 3 with: 5).
! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testRemoveIfAbsent

	self 
		should: [ (ArithmeticObjectInterval from: 1 to: 10 by: 1) remove: 1 ifAbsent: []]
		raise: Exception
! !

!ArithmeticObjectIntervalTest methodsFor: 'test enumerating'!
testReverse

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 5 by: 2.
	self assert: interval reverse=(Array with: 5 with: 3 with: 1).
! !

!ArithmeticObjectIntervalTest methodsFor: 'test enumerating' stamp: 'HernanWilkinson 4/4/2013 16:32'!
testReverseDo

	| interval number |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	number := 9.
	interval reverseDo: [ :aNumber |
		self assert: aNumber= number.
		number := number - 2 ].

	self assert: number = -1.
! !

!ArithmeticObjectIntervalTest methodsFor: 'test enumerating'!
testSelect

	| interval |
	
	interval := ArithmeticObjectInterval from: 1 to: 10 by: 2.
	self assert: (interval select: [:a | a < 5])=(Array with: 1 with: 3).
! !

!ArithmeticObjectIntervalTest methodsFor: 'test'!
testShallowCopy

	| original copy |
	
	original := ArithmeticObjectInterval from: 1 to: 10 by: 1.
	copy := original shallowCopy.
	
	self assert: original = copy.
	self deny: original == copy.! !

!ArithmeticObjectIntervalTest methodsFor: 'test accessing'!
testSize

	self assert: (ArithmeticObjectInterval from: 1 to: 10 by: 2) size=5.
	self assert: (ArithmeticObjectInterval from: 1 to: 10 by: 11) size=1.
	self assert: (ArithmeticObjectInterval from: 1 to: 1 by: 1) size=1.
	self assert: (ArithmeticObjectInterval from: 1 to: 1 by: 2) size=1.
	self assert: (ArithmeticObjectInterval from: -1 to: -10 by: -2) size=5.
	self assert: (ArithmeticObjectInterval from: -10 to: 10 by: 1) size=21.
	self assert: (ArithmeticObjectInterval from: -10 to: -5 by: 1) size=6.
	! !

!ArithmeticObjectIntervalTest methodsFor: 'test' stamp: 'HernanWilkinson 08/12/2014 17:55'!
testStoreOn

	| stream |
	stream := WriteStream on: String new.
	self 
		shouldnt: [ (ArithmeticObjectInterval from: 1 to: 10 by: 1) storeOn: stream ]
		raise: Error! !

!IntervalAwareMagnitudeTest methodsFor: 'test' stamp: 'HernanWilkinson 9/9/2009 16:19'!
testBetweenAndNotInclusive

	self assert: ((TestIntervalAwareMagnitude with: 1) between: (TestIntervalAwareMagnitude with: 0) andNotInclusive: (TestIntervalAwareMagnitude with: 2)).
	self assert: ((TestIntervalAwareMagnitude with: 1) between: (TestIntervalAwareMagnitude with: 1) andNotInclusive: (TestIntervalAwareMagnitude with: 2)).
	self deny: ((TestIntervalAwareMagnitude with: 1) between: (TestIntervalAwareMagnitude with: 0) andNotInclusive: (TestIntervalAwareMagnitude with: 1))! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testHash

	self assert: (TestIntervalAwareMagnitude with: 10) hash = (TestIntervalAwareMagnitude with: 10) hash! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testMax

	self assert: ((TestIntervalAwareMagnitude with: 10) max: (TestIntervalAwareMagnitude with: 11)) = (TestIntervalAwareMagnitude with: 11).
	self assert: ((TestIntervalAwareMagnitude with: 10) max: (TestIntervalAwareMagnitude with: 9)) = (TestIntervalAwareMagnitude with: 10).
	self assert: ((TestIntervalAwareMagnitude with: 10) max: (TestIntervalAwareMagnitude with: 10)) = (TestIntervalAwareMagnitude with: 10)! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testMin

	self assert: ((TestIntervalAwareMagnitude with: 10) min: (TestIntervalAwareMagnitude with: 11)) = (TestIntervalAwareMagnitude with: 10).
	self assert: ((TestIntervalAwareMagnitude with: 10) min: (TestIntervalAwareMagnitude with: 9)) = (TestIntervalAwareMagnitude with: 9).
	self assert: ((TestIntervalAwareMagnitude with: 10) min: (TestIntervalAwareMagnitude with: 10)) = (TestIntervalAwareMagnitude with: 10)! !

!IntervalAwareMagnitudeTest methodsFor: 'test' stamp: 'HernanWilkinson 9/9/2009 16:58'!
testNotInclusiveBetweenAnd

	self assert: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 0) and: (TestIntervalAwareMagnitude with: 1)).
	self assert: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 0) and: (TestIntervalAwareMagnitude with: 2)).
	self deny: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 1) and: (TestIntervalAwareMagnitude with: 1))! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testNotInclusiveBetweenAndNotInclusive

	self assert: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 0) andNotInclusive: (TestIntervalAwareMagnitude with: 2)).
	self deny: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 1) andNotInclusive: (TestIntervalAwareMagnitude with: 2)).
	self deny: ((TestIntervalAwareMagnitude with: 1) notInclusiveBetween: (TestIntervalAwareMagnitude with: 0) andNotInclusive: (TestIntervalAwareMagnitude with: 1))! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testTo

	| interval |
	
	interval := (TestIntervalAwareMagnitude with: 10) to: (TestIntervalAwareMagnitude with: 20).

	self assert: interval from = (TestIntervalAwareMagnitude with: 10).
	self assert: interval to = (TestIntervalAwareMagnitude with: 20).
	self assert: interval by = (TestIntervalAwareMagnitude with: 1)! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testToBy

	| interval |
	
	interval := (TestIntervalAwareMagnitude with: 10) to: (TestIntervalAwareMagnitude with: 20) by: (TestIntervalAwareMagnitude with: 5).

	self assert: interval from = (TestIntervalAwareMagnitude with: 10).
	self assert: interval to = (TestIntervalAwareMagnitude with: 20).
	self assert: interval by = (TestIntervalAwareMagnitude with: 5)! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testToByDo

	| number |
	
	number := 10.	
	((TestIntervalAwareMagnitude with: 10) 
		to: (TestIntervalAwareMagnitude with: 20) 
		by: (TestIntervalAwareMagnitude with: 2))
		do: [ :aTestMagnitude |
			self assert: aTestMagnitude number = number.
			number := number + 2 ].
	
	self assert: number = 22! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testToNegativeBy

	| interval number |
	
	interval := (TestIntervalAwareMagnitude with: 20) to: (TestIntervalAwareMagnitude with: 10) by: (TestIntervalAwareMagnitude with: -3).
	number := 20.
	interval do: [ :each |
		self assert: each number = number.
		number := number - 3 ].
	
	self assert: number = 8! !

!IntervalAwareMagnitudeTest methodsFor: 'test'!
testToReverse

	| coll number |
	
	coll := ((TestIntervalAwareMagnitude with: 10) 
		to: (TestIntervalAwareMagnitude with: 20) 
		by: (TestIntervalAwareMagnitude with: 3)) reverse.
	number := 19.
	coll do: [ :each |
		self assert: each number = number.
		number := number - 3 ].
	
	self assert: number = 7! !

!IntervalAwareMagnitudeTest methodsFor: 'test' stamp: 'HAW 5/25/2009 18:34'!
testToYourself

	| magnitude |
	
	magnitude := TestIntervalAwareMagnitude with: 10.
	self assert: magnitude toYourself from = magnitude.
	self assert: magnitude toYourself to = magnitude.
	
	
	! !

!NumberToArithmeticObjectAdapterTest methodsFor: 'test' stamp: 'mx 8/1/2008 16:37'!
testPrintString
	self 
		assert: (NumberToArithmeticObjectAdapter number: 10) 
				printString = 'NumberMeasureAdapter for: 10'! !

!UndefinedArithmeticObjectValueExceptionTest methodsFor: 'test'!
testSignal

	| arithmeticObject |

	arithmeticObject := 5.

	self
		should: [UndefinedArithmeticObjectValueException signalArithmeticObject: arithmeticObject]
		raise: UndefinedArithmeticObjectValueException
		withExceptionDo: [ :anException |
			self
				assert: anException description notNil;
				assert: anException arithmeticObject = arithmeticObject]! !

!EdgeTest methodsFor: 'test'!
testAccessing

	| edge |
	
	edge := Edge from: 1 to: 2.
	self assert: edge source = 1 description: 'source'.
	self assert: edge target = 2 description: 'target'! !

!EdgeTest methodsFor: 'test'!
testConverging

	| edge |
	
	edge := Edge from: 1 to: 2.
	self assert: (edge convergesTo: 2).
	self deny: (edge convergesTo: 1).
	self deny: (edge convergesTo: 3)
! !

!EdgeTest methodsFor: 'test'!
testEqual

	self assert: (Edge from: 1 to: 2) = (Edge from:1 to:2).
	self deny: (Edge from: 1 to: 2) = (Edge from:2 to:1)
! !

!EdgeTest methodsFor: 'test'!
testGoing

	| edge |
	
	edge := Edge from: 1 to: 2.
	self assert: (edge goesFrom: 1 to: 2).
	self deny: (edge goesFrom: 2 to: 1).
	self deny: (edge goesFrom: 1 to: 3)! !

!EdgeTest methodsFor: 'test'!
testHash

	self assert: (Edge from: 1 to: 2) = (Edge from:1 to:2).
	self assert: (Edge from: 1 to: 2) hash =( Edge from:1 to:2) hash! !

!EdgeTest methodsFor: 'test'!
testIsIncidentTo

	| edge |

	edge := Edge from: 'a' to: 'b'.

	self
		assert: (edge isIncidentTo: 'a');
		assert: (edge isIncidentTo: 'b');
		deny: (edge isIncidentTo: 'c')! !

!EdgeTest methodsFor: 'test'!
testPrintString

	self assert: (Edge from: 1 to: 2) printString = '1 -> 2'
! !

!EdgeTest methodsFor: 'test'!
testStarting

	| edge |
	
	edge := Edge from: 1 to: 2.
	self assert: (edge startsOn: 1 ).
	self deny: (edge startsOn: 2).
	self deny: (edge startsOn: 0)! !

!GraphPathFinderTest methodsFor: 'initialization'!
initializeFinder

	finder := GraphPathFinder on: graph! !

!GraphPathFinderTest methodsFor: 'initialization'!
initializeGraph

	| edges |
	
	edges := OrderedCollection new
		add: (Edge from: 1 to: 1);
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 5);
		yourself.
		
	graph := Graph edges: edges
! !

!GraphPathFinderTest methodsFor: 'initialization'!
setUp

	self initializeGraph.
	self initializeFinder! !

!GraphPathFinderTest methodsFor: 'testing'!
testGraphPathNotFoundException

	[ finder pathFrom: 1 to: 6.
	self assert: false. ]
		on: GraphPathNotFoundException
		do: [ :aSignal |
			self assert: aSignal source = 1.
			self assert: aSignal target = 6.
			aSignal return: nil ]! !

!GraphPathFinderTest methodsFor: 'testing'!
testInvalidPath

	#(#(3 1) #(5 1) #(4 1) #(4 2) #(3 2)) do: [ :anArray |
		self 
			should: [ finder pathFrom: anArray first to: anArray last ] 
			raise: GraphPathNotFoundException
			withExceptionDo: [ :anException |
				self assert: anException description notNil.
				self assert: anException source = anArray first.
				self assert: anException target = anArray last ]]! !

!GraphPathFinderTest methodsFor: 'testing'!
testPathToFarAwayPlaces

	| path |

	path := finder pathFrom: 1 to: 3.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3))).

	path := finder pathFrom: 1 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3)
		with: (Edge from: 3 to: 4))).
	
	path := finder pathFrom: 2 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 2 to: 3)
		with: (Edge from: 3 to: 4)))! !

!GraphPathFinderTest methodsFor: 'testing'!
testPathToNeighborPlace

	| path |

	path := finder pathFrom: 1 to: 2.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2))).

	path := finder pathFrom: 1 to: 5.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 5))).

	path := finder pathFrom: 2 to: 3.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 2 to: 3))).
	
	path := finder pathFrom: 3 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 3 to: 4)))! !

!GraphPathFinderTest methodsFor: 'testing'!
testSamePlace

	| path |

	path := finder pathFrom: 1 to: 1.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 1)))! !

!GraphPathFinderTest methodsFor: 'testing'!
testWithLoops

	| path newGraph newFinder edges |

	"Add a cycle from 2 to 2"
	edges := graph edges.
	edges add: (Edge from: 2 to: 2).
	newGraph := Graph edges: edges.
	newFinder := GraphPathFinder on: newGraph.
	
	path := newFinder pathFrom: 1 to: 2.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2))).

	path := newFinder pathFrom: 1 to: 3.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3))).
		
	path := newFinder pathFrom: 2 to: 2.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 2 to: 2))).

	"To the new graph, add a cycle from 3 to 3"	
	edges := graph edges.
	edges add: (Edge from: 3 to: 3).
	newGraph := Graph edges: edges.
	newFinder := GraphPathFinder on: newGraph.

	path := newFinder pathFrom: 1 to: 3.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3))).
		
	path := newFinder pathFrom: 1 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3)
		with: (Edge from: 3 to: 4))).
		
	path := newFinder pathFrom: 3 to: 3.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 3 to: 3))).
		
	path := newFinder pathFrom: 2 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 2 to: 3)
		with: (Edge from: 3 to: 4))).
		
	path := newFinder pathFrom: 3 to: 4.
	self assert: path = (Graph edges: (OrderedCollection 
		with: (Edge from: 3 to: 4)))! !

!GraphTest methodsFor: 'test'!
testAccessImmutability

	| graph edges edgesPreviousAdd nodesPreviousAdd |

	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 4);
		add: (Edge from: 4 to: 4);
		yourself.
	
	graph := Graph edges: edges.		

	edgesPreviousAdd := graph edges.
	nodesPreviousAdd := graph nodes.

	edges := graph edges.
	edges add: (Edge from: 4 to: 5).

	self assert: ((edges copy removeAll: graph edges; yourself) includes: (Edge from: 4 to: 5)).
	self assert: (edgesPreviousAdd copy removeAll: graph edges; yourself) isEmpty.	
	self assert: (graph edges removeAll: edgesPreviousAdd; yourself) isEmpty.	
	
	self assert: (nodesPreviousAdd copy removeAll: graph nodes; yourself) isEmpty.	
	self assert: (graph nodes removeAll:  nodesPreviousAdd; yourself) isEmpty
! !

!GraphTest methodsFor: 'test'!
testApplyUsingDepthFistSearch

	| collectedNodes expectedCollectedNodes graph |

	collectedNodes := OrderedCollection new.

	graph :=
		Graph edges: (
			OrderedCollection new
				add: (Edge from: 1 to: 2);
				add: (Edge from: 2 to: 3);
				add: (Edge from: 3 to: 4);
				add: (Edge from: 4 to: 5);
				add: (Edge from: 1 to: 6);
				add: (Edge from: 1 to: 7);
				yourself).

	graph apply: [:node | collectedNodes add: node] usingDepthFirstSearchFrom: 1.

	expectedCollectedNodes := #(1 2 3 4 5 6 7).

	self assert: collectedNodes asOrderedCollection = expectedCollectedNodes asOrderedCollection! !

!GraphTest methodsFor: 'test'!
testConvergingEdges

	| graph edges |
	
	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 4);
		add: (Edge from: 4 to: 4);
		yourself.
	
	graph := Graph edges: edges.
	
	self assert: (graph edgesConvergingTo: 1) isEmpty.
	self assert: (graph edgesConvergingTo: 2) size = 1.
	self assert: ((graph edgesConvergingTo: 2) copyWithout: (Edge from: 1 to: 2)) isEmpty.
	
	self assert: (graph edgesConvergingTo: 3) size = 1.
	self assert: ((graph edgesConvergingTo: 3) copyWithout: (Edge from: 2 to: 3)) isEmpty.

	self assert: (graph edgesConvergingTo: 4) size = 3.
	self assert: ((graph edgesConvergingTo: 4) removeAll: (OrderedCollection 
		with: (Edge from: 3 to: 4)
		with: (Edge from: 4 to: 4)
		with: (Edge from: 1 to: 4)); yourself) isEmpty.
	
	self assert: (graph edgesConvergingTo: 5) isEmpty! !

!GraphTest methodsFor: 'test'!
testCreateGraphWithInvalidEdge

	| nodes invalidEdge edges |

	nodes := Set with: 'a' with: 'b' with: 'c'.
	invalidEdge := Edge from: 'c' to: 'd'.
	edges := Set with: (Edge from: 'a' to: 'b') with: invalidEdge.

	self
		should: [Graph edges: edges nodes: nodes]
		raise: EdgeEndpointNotIncludedInNodesException
		withExceptionDo: [ :anException |
			self
				assert: anException description notEmpty;
				assert: anException invalidEdge = invalidEdge;
				assert: anException edges = edges;
				assert: anException nodes = nodes]! !

!GraphTest methodsFor: 'test'!
testCreateGraphWithUnconnectedNodes

	| nodes graph edge |

	nodes := Set with: 'a' with: 'b' with: 'c'.
	edge := Edge from: 'a' to: 'b'.

	graph := Graph edges: (Set with: edge) nodes: nodes.

	self
		assert: graph nodes size = nodes size;
		assert: (graph nodes includesAllOf: nodes);
		assert: (graph edges allSatisfy: [:each | each = edge]);
		assert: (graph nodesWithoutConvergingEdges includes: 'a');
		assert: (graph nodesWithoutConvergingEdges includes: 'c');
		assert: (graph nodesWithoutStartingEdges includes: 'c')! !

!GraphTest methodsFor: 'test'!
testCreateGraphWithoutEdges

	| nodes graph |

	nodes := (Set with: 'a' with: 'b' with: 'c').
	graph := Graph edges: #() nodes: nodes.

	self
		assert: graph nodes size = 3;
		assert: (graph nodes includesAllOf: nodes);
		assert: graph nodesWithoutStartingEdges size = nodes size;
		assert: graph nodesWithoutConvergingEdges size = nodes size;
		assert: (graph nodesWithoutStartingEdges includesAllOf: nodes);
		assert: (graph nodesWithoutConvergingEdges includesAllOf: nodes)! !

!GraphTest methodsFor: 'test' stamp: 'HAW 3/25/2017 11:53:10'!
testCreationImmutability

	| graph edges |

	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 4);
		add: (Edge from: 4 to: 4);
		yourself.
	
	graph := Graph edges: edges.		

	"Verify if modifying the entrance collection the graph follows immutable"
	edges add: (Edge from: 4 to: 5).
	self assert: 5 equals: graph edges size.
	self deny: (graph edges includes: (Edge from: 4 to: 5))! !

!GraphTest methodsFor: 'test'!
testEdgesConvergingToSelf

	| graph edges |
	
	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 4);
		add: (Edge from: 4 to: 4);
		yourself.
	
	graph := Graph edges: edges.	
	self assert: (graph edgesConvergingToSelf) size = 1.
	self assert: ((graph edgesConvergingToSelf) copyWithout: (Edge from: 4 to:4)) isEmpty! !

!GraphTest methodsFor: 'test'!
testEqual

	| graph1 graph2 |
	
	graph1 := Graph edges: (Array 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3) ).
		
	graph2 := Graph edges: (Array 
		with: (Edge from: 2 to: 3) 
		with: (Edge from: 1 to: 2) ).
	
	self assert: graph1 = graph2! !

!GraphTest methodsFor: 'test'!
testEqualsDifferentGraphs

	| graph1 graph2 |

	graph1 := Graph edges: (Array with: (Edge from: 1 to: 2) with: (Edge from: 4 to: 5)).
	graph2 := Graph edges: (Array with: (Edge from: 2 to: 3) with: (Edge from: 1 to: 2)).

	self deny: graph1 = graph2! !

!GraphTest methodsFor: 'test'!
testGraphCreation

	| graph edges |

	edges :=
		OrderedCollection new
			add: (Edge from: 1 to: 2);
			add: (Edge from: 2 to: 3);
			yourself.

	graph := Graph edges: edges.

	self assert: graph edges size = 2.
	self assert: (graph edges includes: (Edge from: 1 to: 2)).
	self assert: (graph edges includes: (Edge from: 2 to: 3)).

	self assert: (graph nodes size = 3).
	self assert: (graph nodes includes: 1).
	self assert: (graph nodes includes: 2).
	self assert: (graph nodes includes: 3)! !

!GraphTest methodsFor: 'test'!
testHash

	| graph1 graph2 |
	
	graph1 := Graph edges: (Array 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 2 to: 3) ).
		
	graph2 := Graph edges: (Array 
		with: (Edge from: 2 to: 3) 
		with: (Edge from: 1 to: 2) ).
	
	self assert: graph1 hash = graph2 hash! !

!GraphTest methodsFor: 'test'!
testIncludesNode

	| graph edges |
	
	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		yourself.
	
	graph := Graph edges: edges.
	
	self assert: (graph includesNode: 1).
	self assert: (graph includesNode: 2).
	self assert: (graph includesNode: 3).
	self deny: (graph includesNode: 4)! !

!GraphTest methodsFor: 'test'!
testIsAcyclicWhenGraphIsAcyclic

	| acyclicGraph |

	acyclicGraph :=
		Graph edges: (Array with: (Edge from: 'a' to: 'b') with: (Edge from: 'b' to: 'c')).


	self assert: acyclicGraph isAcyclic! !

!GraphTest methodsFor: 'test'!
testIsAcyclicWhenGraphIsCyclic

	| cyclicGraph |

	cyclicGraph :=
		Graph edges: (
			Array
				with: (Edge from: 'a' to: 'b')
				with: (Edge from: 'b' to: 'c')
				with: (Edge from: 'c' to: 'a')).

	self deny: cyclicGraph isAcyclic.

	cyclicGraph :=
		Graph edges: (
			Array
				with: (Edge from: 'a' to: 'b')
				with: (Edge from: 'b' to: 'c')
				with: (Edge from: 'c' to: 'b')).

	self deny: cyclicGraph isAcyclic! !

!GraphTest methodsFor: 'test'!
testIsEmpty

	| graph |

	graph := Graph edges: #() nodes: #().

	self assert: graph isEmpty! !

!GraphTest methodsFor: 'test'!
testNodesAdjacentTo

	| graph adjacentNodes |

	graph :=
		Graph edges: (
			OrderedCollection new
				add: (Edge from: 1 to: 2);
				add: (Edge from: 2 to: 3);
				add: (Edge from: 4 to: 5);
				add: (Edge from: 1 to: 6);
				add: (Edge from: 1 to: 7);
				yourself).

	adjacentNodes := #(2 6 7).

	self assert: (graph nodesAdjacentTo: 1) asOrderedCollection = adjacentNodes asOrderedCollection! !

!GraphTest methodsFor: 'test'!
testNodesWithoutEdges

	| graph edges |

	edges :=
		OrderedCollection new
			add: (Edge from: 1 to: 2);
			add: (Edge from: 2 to: 3);
			yourself.

	graph := Graph edges: edges.

	self assert: (graph nodesWithoutStartingEdges size = 1).
	self assert: (graph nodesWithoutStartingEdges includes: 3).
	self assert: (graph nodesWithoutConvergingEdges size = 1).
	self assert: (graph nodesWithoutConvergingEdges includes: 1)! !

!GraphTest methodsFor: 'test'!
testNotEmpty

	| graph |

	graph := Graph edges: #() nodes: (Set with: 'a').

	self
		assert: graph notEmpty;
		deny: graph isEmpty.

	graph := Graph edges: (Array with: (Edge from: 'a' to: 'b')).

	self
		assert: graph notEmpty;
		deny: graph isEmpty! !

!GraphTest methodsFor: 'test'!
testRemoveNode

	| nodes nodeToRemove edge edgeToRemove edges graph modifiedGraph |

	nodeToRemove := 'c'.
	nodes := Set with: 'a' with: 'b' with: nodeToRemove.
	edge := Edge from: 'a' to: 'b'.
	edgeToRemove := Edge from: 'b' to: nodeToRemove.

	edges := Set with: edge with: edgeToRemove.
	graph := Graph edges: edges nodes: nodes.

	modifiedGraph := graph removeNode: nodeToRemove.

	self
		assert: graph = (Graph edges: edges nodes: nodes)
			description: 'El grafo el inmutable, eliminar un nodo crea otro grafo';
		assert: modifiedGraph edges size = (edges size - 1);
		deny: (modifiedGraph edges includes: (edgeToRemove));
		assert: (modifiedGraph edges includes: edge);
		deny: (modifiedGraph nodes includes: nodeToRemove);
		assert: (modifiedGraph nodes includes: 'a');
		assert: (modifiedGraph nodes includes: 'b')! !

!GraphTest methodsFor: 'test'!
testRemoveNodeWithInvalidNode

	| graph |

	graph := Graph edges: (Array with: (Edge from: 'a' to: 'b')).

	self
		should: [graph removeNode: 'd']
		raise: NodeNotFoundException
		withExceptionDo: [ :anException |
			self
				assert: anException description notEmpty;
				assert: anException node = 'd';
				assert: anException graph = graph]! !

!GraphTest methodsFor: 'test'!
testRemoveNodes

	| nodes nodeToRemove edge edgeToRemove edges graph modifiedGraph anotherNodeToRemove
	  anotherEdgeToRemove |

	nodeToRemove := 'c'.
	anotherNodeToRemove := 'd'.
	nodes := Set with: 'a' with: 'b' with: nodeToRemove with: anotherNodeToRemove.
	edge := Edge from: 'a' to: 'b'.
	edgeToRemove := Edge from: 'b' to: nodeToRemove.
	anotherEdgeToRemove := Edge from: 'a' to: anotherNodeToRemove.

	edges := Set with: edge with: edgeToRemove with: anotherEdgeToRemove.
	graph := Graph edges: edges nodes: nodes.

	modifiedGraph := graph removeNodes: (Array with: nodeToRemove with: anotherNodeToRemove).

	self
		assert: graph = (Graph edges: edges nodes: nodes)
			description: 'The graph is immutable, to eliminate a node creates another graph';
		assert: modifiedGraph edges size = (edges size - 2);
		deny: (modifiedGraph edges includes: edgeToRemove);
		deny: (modifiedGraph edges includes: anotherEdgeToRemove);
		assert: (modifiedGraph edges includes: edge);
		deny: (modifiedGraph nodes includes: nodeToRemove);
		deny: (modifiedGraph nodes includes: anotherNodeToRemove);
		assert: (modifiedGraph nodes includes: 'a');
		assert: (modifiedGraph nodes includes: 'b')! !

!GraphTest methodsFor: 'test'!
testSameNodesAs

	| graph anotherGraph nodes |

	nodes := Set with: 'a' with: 'b'.
	graph := Graph edges: #() nodes: nodes.
	anotherGraph := Graph edges: #() nodes: nodes.

	self assert: (graph sameNodesAs: anotherGraph)! !

!GraphTest methodsFor: 'test'!
testStartingEdges

	| graph edges |
	
	edges := OrderedCollection new
		add: (Edge from: 1 to: 2);
		add: (Edge from: 2 to: 3);
		add: (Edge from: 3 to: 4);
		add: (Edge from: 1 to: 4);
		add: (Edge from: 4 to: 4);
		yourself.
	
	graph := Graph edges: edges.	
	
	self assert: (graph edgesStartingOn: 1) size = 2.
	self assert: ((graph edgesStartingOn: 1) removeAll: (OrderedCollection 
		with: (Edge from: 1 to: 2)
		with: (Edge from: 1 to: 4)); yourself ) isEmpty.
		
	self assert: (graph edgesStartingOn: 2) size = 1.
	self assert: ((graph edgesStartingOn: 2) copyWithout: (Edge from: 2 to: 3)) isEmpty.
	
	self assert: (graph edgesStartingOn: 3) size = 1.
	self assert: ((graph edgesStartingOn: 3) copyWithout: (Edge from: 3 to: 4)) isEmpty.

	self assert: (graph edgesStartingOn: 4) size = 1.
	self assert: ((graph edgesStartingOn: 4) copyWithout: (Edge from: 4 to: 4)) isEmpty.
	
	self assert: (graph edgesStartingOn: 5) isEmpty! !

!TopologicalSortTest methodsFor: 'test'!
testCreateWithCyclicGraph

	| cyclicGraph |

	cyclicGraph :=
		Graph edges: (
			Array
				with: (Edge from: 'a' to: 'b')
				with: (Edge from: 'b' to: 'c')
				with: (Edge from: 'c' to: 'a')).

	self deny: cyclicGraph isAcyclic.

	self
		should: [TopologicalSort for: cyclicGraph]
		raise: CannotApplyTopologicalSortToACyclicGraphException
		withExceptionDo: [ :anException |
			self
				assert: anException description notEmpty;
				assert: anException graph = cyclicGraph]! !

!TopologicalSortTest methodsFor: 'test' stamp: 'HAW 3/25/2017 12:03:37'!
testValue

	"Example from http://en.wikipedia.org/wiki/Topological_sorting"

	| graph result |

	graph :=
		Graph edges: (
			OrderedCollection new
				add: (Edge from: 7 to: 11);
				add: (Edge from: 7 to: 8);
				add: (Edge from: 11 to: 2);
				add: (Edge from: 11 to: 9);
				add: (Edge from: 11 to: 10);
				add: (Edge from: 5 to: 11);
				add: (Edge from: 3 to: 8);
				add: (Edge from: 3 to: 10);
				add: (Edge from: 8 to: 9);
				yourself).

	result := (TopologicalSort for: graph) value asOrderedCollection.

	self assert: 8 equals: result size.
	self assert: (result includesAllOf: #(3 5 7 11 8 2 9 10))! !

!TopologicalSortTest methodsFor: 'test'!
testValueWithAnotherGraph

	"Example from: http://www.cs.fsu.edu/~cop4531/slideshow/chapter23/23-4.html"

	| graph result |

	graph :=
		Graph
			edges: (
				OrderedCollection new
					add: (Edge from: 'undershorts' to: 'pants');
					add: (Edge from: 'undershorts' to: 'shoes');
					add: (Edge from: 'pants' to: 'shoes');
					add: (Edge from: 'pants' to: 'shoes');
					add: (Edge from: 'pants' to: 'belt');
					add: (Edge from: 'socks' to: 'shoes');
					add: (Edge from: 'shirt' to: 'belt');
					add: (Edge from: 'shirt' to: 'tie');
					add: (Edge from: 'tie' to: 'jacket');
					yourself)
			nodes: (
				Set new
					add: 'undershorts';
					add: 'pants';
					add: 'shoes';
					add: 'belt';
					add: 'shirt';
					add: 'tie';
					add: 'jacket';
					add: 'watch';
					add: 'socks';
					yourself).

	result := ((TopologicalSort for: graph) value) asArray.

	self
		assert: (result indexOf: 'undershorts') < (result indexOf: 'pants');
		assert: (result indexOf: 'undershorts') < (result indexOf: 'belt');
		assert: (result indexOf: 'undershorts') < (result indexOf: 'jacket');
		assert: (result indexOf: 'undershorts') < (result indexOf: 'shoes');
		assert: (result indexOf: 'shirt') < (result indexOf: 'belt');
		assert: (result indexOf: 'shirt') < (result indexOf: 'tie');
		assert: (result indexOf: 'shirt') < (result indexOf: 'jacket');
		assert: (result indexOf: 'pants') < (result indexOf: 'shoes')! !

!TopologicalSortTest methodsFor: 'test'!
testWithGraphWithoutEdges

	| graph result |

	graph := Graph edges: #() nodes: (Array with: 'a' with: 'b').

	result := (TopologicalSort for: graph) value.

	self
		assert: (result includes: 'a');
		assert: (result includes: 'b')! !

!BaseUnitTest methodsFor: 'test accessing'!
testBaseUnit

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self assert: (unit baseUnit) = unit! !

!BaseUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self assert: (unit convertAmountToBaseUnit: 0) = 0.
	self assert: (unit convertAmountToBaseUnit: 10) = 10! !

!BaseUnitTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	| unit measure |
	
	unit := BaseUnit named: 'peso'.
	measure := SimpleMeasure amount: 10 unit: unit.
	self assert: (unit convertToBaseUnit: measure) == measure! !

!BaseUnitTest methodsFor: 'test accessing'!
testDenominator

	| unit |

	unit := BaseUnit nameForOne: 'peso' nameForMany: 'pepe'.

	self assert: unit denominator = NullUnit new! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDifferentBaseUnit

	| numerator denominator |
	
	numerator := BaseUnit named: 'meter'.
	denominator := BaseUnit named: 'second'.
	self assert: (numerator / denominator) numerator = numerator.
	self assert: (numerator / denominator) denominator = denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDifferentDomainDerivedUnit

	| numerator denominator hour |
	
	numerator := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	denominator := ProportionalDerivedUnit baseUnit: hour conversionFactor: 1/60 named: 'minutes'.
	
	self assert: (numerator / denominator) numerator = numerator.
	self assert: (numerator / denominator) denominator = denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDivideUnitSameBaseUnitNumerator

	| numerator denominator hour |
	
	numerator := BaseUnit named: 'meter'.
	denominator := BaseUnit named: 'hour'.
	
	self assert: (numerator / (numerator / denominator)) = denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDivideUnitSameDomainDerivedUnitNumerator

	| meter hour centimeter |
	
	meter := BaseUnit named: 'meter'.
	centimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1/100 named: 'centimeter'.
	hour := BaseUnit named: 'hour'.
	
	self assert: (meter / (centimeter / hour)) numerator = (meter * hour).
	self assert: (meter / (centimeter / hour)) denominator = centimeter! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByInfinity

	| kelvin |

	kelvin := BaseUnit named: 'kelvin'.
	self assert: kelvin / Infinity = (kelvin with: 1 / Infinity).
	self assert: (kelvin / Infinity) numerator = 0.
	self assert: (kelvin / Infinity) denominator = 1.
	self
		should: [Infinity / kelvin]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and kelvin']! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMinusInfinity

	| kelvin |

	kelvin := BaseUnit named: 'kelvin'.
	self assert: kelvin / MinusInfinity = (kelvin with: 1 / MinusInfinity).
	self assert: (kelvin / MinusInfinity) numerator = 0.
	self assert: (kelvin / MinusInfinity) denominator = 1.
	self
		should: [MinusInfinity / kelvin]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and kelvin']! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMultipliedUnit

	| numerator denominator hour |
	
	numerator := BaseUnit named: 'meter'.
	denominator := BaseUnit named: 'hour'.
	
	self assert: (numerator / (numerator * denominator)) numerator = NullUnit new.
	self assert: (numerator / (numerator * denominator)) denominator = denominator.

	self assert: (numerator / (denominator * denominator)) numerator = numerator.
	self assert: (numerator / (denominator * denominator)) denominator = (denominator * denominator)
! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByNullUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self assert: meter / NullUnit new = meter! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideByNumber

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: kelvin / 5 = (kelvin with: 1/5).
	self assert: (kelvin / 5) numerator = (kelvin with: 1).
	self assert: (kelvin / 5) denominator = 5.
	
	self assert: kelvin / 5.5 = (kelvin with: 1/5.5).
	self assert: (kelvin / 5.5) numerator = (kelvin with: 1/5.5) numerator.
	self assert: (kelvin / 5.5) denominator = (kelvin with: 1/5.5) denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySameBaseUnit

	| numerator |
	
	numerator := BaseUnit named: 'peso'.
	self assert: numerator / numerator = NullUnit new! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySameDomainDerivedUnit

	| numerator denominator |
	
	numerator := BaseUnit named: 'meter'.
	denominator := ProportionalDerivedUnit baseUnit: numerator conversionFactor: 1/100 named: 'centimeter'.
	
	self assert: (numerator / denominator) numerator = numerator.
	self assert: (numerator / denominator) denominator = denominator.
	! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualDerivedSameBaseUnit

	| meter centimeter |

	meter := BaseUnit named: 'meter'.
	centimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1/100 named: 'centimeter'.
	
	self deny: meter = centimeter! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualDifferentBaseUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self deny: meter = hour! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualDividedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self deny: meter = (meter / hour)! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualMultipliedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self deny: meter = (meter * hour)! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualNullUnit

	| meter |

	meter := BaseUnit named: 'meter'.
	self deny: meter = NullUnit new! !

!BaseUnitTest methodsFor: 'test comparing'!
testEqualSameBaseUnit

	| meter |

	meter := BaseUnit named: 'meter'.
	self assert: meter = meter! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:20'!
testFloatDividedByUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5.5 / kelvin) = (5.5 / (kelvin with: 1)).
	self assert: (5.5 / kelvin) numerator = 5.5 numerator.
	self assert: (5.5 / kelvin) denominator = (kelvin with: 5.5 denominator)! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:23'!
testFloatDividedByUnitTwice

	| kelvin meter |
	
	kelvin := BaseUnit named: 'kelvin'.
	meter := BaseUnit named: 'meter'.
	
	self assert: (5.5 / kelvin / meter) = (5.5 / (kelvin * meter with: 1)).
	self assert: (5.5 / kelvin / meter ) numerator = 5.5 numerator.
	self assert: (5.5 / kelvin / meter) denominator = (kelvin * meter with: 5.5 denominator)! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:30'!
testFloatMultipliedByUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: 5.5 * kelvin = (kelvin with: 5.5).
	self assert: (5.5 * kelvin) numerator = (kelvin with: 5.5) numerator.
	self assert: (5.5 * kelvin) denominator = (kelvin with: 5.5) denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:31'!
testFloatMultipliedByUnitTwice

	| kelvin meter |
	
	kelvin := BaseUnit named: 'kelvin'.
	meter := BaseUnit named: 'meter'.
	
	self assert: 5.5 * kelvin * meter = (kelvin * meter with: 5.5).
	self assert: (5.5 * kelvin * meter) numerator = (kelvin * meter with: 5.5) numerator.
	self assert: (5.5 * kelvin * meter) denominator = (kelvin * meter with: 5.5) denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:11:51'!
testIntegerDividedByUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5 / kelvin) = (SimpleMeasure amount: 5 unit: NullUnit new / kelvin).
	self assert: (5 / (kelvin with: 1)) = (SimpleMeasure amount: 5 unit: NullUnit new / kelvin).
	self assert: (5 / kelvin) numerator = 5.
	self assert: (5 / kelvin) denominator = (kelvin with: 1).
	self assert: (5 / (kelvin with: 1)) numerator = 5.
	self assert: (5 / (kelvin with: 1)) denominator = (kelvin with: 1).
	
! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:11:51'!
testIntegerDividedByUnitTwice

	| kelvin meter |
	
	kelvin := BaseUnit named: 'kelvin'.
	meter := BaseUnit named: 'meter'.
	
	self assert: (5 / kelvin / meter) = (SimpleMeasure amount: 5 unit: NullUnit new / (kelvin * meter)).
	self assert: (5 / kelvin / meter) numerator = 5.
	self assert: (5 / kelvin / meter) denominator = (kelvin * meter with: 1).
	
! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:30'!
testIntegerMultipliedByUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5 * kelvin) = (kelvin with: 5).
	self assert: (5 * kelvin) numerator = (kelvin with: 5).
	self assert: (5 * kelvin) denominator = 1.
	self assert: (5 * (kelvin with: 1)) numerator = (kelvin with: 5).
	self assert: (5 * (kelvin with: 1)) denominator = 1.
	
! !

!BaseUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:31'!
testIntegerMultipliedByUnitTwice

	| kelvin meter |
	
	kelvin := BaseUnit named: 'kelvin'.
	meter := BaseUnit named: 'meter'.
	
	self assert: 5 * kelvin * meter = (kelvin * meter with: 5).
	self assert: (5 * kelvin * meter) numerator = (kelvin * meter with: 5).
	self assert: (5 * kelvin * meter) denominator = 1.
! !

!BaseUnitTest methodsFor: 'test measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
testMeasureCreation

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self assert: (meter with: 10) = (SimpleMeasure amount: 10 unit: meter)! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByDividedUnit

	| meter second kelvin |
	
	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meter * (second / kelvin)) numerator = (meter * second).
	self assert: (meter * (second / kelvin)) denominator = kelvin! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByInfinity

	| kelvin |

	kelvin := BaseUnit named: 'kelvin'.
	self assert: kelvin * Infinity = (kelvin with: Infinity).
	self assert: Infinity * kelvin = (kelvin with: Infinity).
	self assert: (kelvin * Infinity) numerator = (kelvin with: Infinity).
	self assert: (kelvin * Infinity) denominator = 1! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMinusInfinity

	| kelvin |

	kelvin := BaseUnit named: 'kelvin'.
	self assert: kelvin * MinusInfinity = (kelvin with: MinusInfinity).
	self assert: MinusInfinity * kelvin = (kelvin with: MinusInfinity).
	self assert: (kelvin * MinusInfinity) numerator = (kelvin with: MinusInfinity).
	self assert: (kelvin * MinusInfinity) denominator = 1! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMultipliedUnit

	| meter second kelvin |
	
	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meter * (second * kelvin)) factorsSize = 3.
	self assert: ((meter * (second * kelvin)) factors includes: meter).
	self assert: ((meter * (second * kelvin)) factors includes: second).
	self assert: ((meter * (second * kelvin)) factors includes: kelvin)! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNullUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.

	self assert: (meter * NullUnit new) = meter.
! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNumber

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: kelvin * 5 = (kelvin with: 5).
	
	self assert: (kelvin * 5) numerator = (kelvin with: 5).
	self assert: (kelvin * 1) denominator = 1.
	
	self assert: kelvin * 5.5 = (kelvin with: 5.5).
	self assert: (kelvin * 5.5) numerator = (kelvin with: 5.5) numerator.
	self assert: (kelvin * 5.5) denominator = (kelvin with: 5.5) denominator! !

!BaseUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyBySimpleUnit

	| meter second|
	
	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'.
	
	self assert: (meter * second) factorsSize = 2.
	self assert: ((meter * second) factors includes: meter).
	self assert: ((meter * second) factors includes: second)! !

!BaseUnitTest methodsFor: 'test accessing'!
testName

	self assert: (BaseUnit named: 'peso') name = 'peso'! !

!BaseUnitTest methodsFor: 'test accessing'!
testNameFor

	| unit |

	unit := BaseUnit nameForOne: 'peso' nameForMany: 'pepe'.

	self
		assert: (unit nameFor: 0) = unit nameForMany;
		assert: (unit nameFor: 1) = unit nameForOne;
		assert: (unit nameFor: 2) = unit nameForMany;
		assert: (unit nameFor: 1.87) = unit nameForMany;
		assert: (unit nameFor: 0.11) = unit nameForMany! !

!BaseUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: (BaseUnit named: 'peso') nameForMany = 'pesos'.
	self assert: (BaseUnit named: 'peso' sign: '$') nameForMany = 'pesos'.
	self assert: (BaseUnit nameForOne: 'peso' nameForMany: 'pepe') nameForMany = 'pepe'.	
	self assert: (BaseUnit nameForOne: 'peso' nameForMany: 'pepe' sign: '$') nameForMany = 'pepe'.	! !

!BaseUnitTest methodsFor: 'test accessing'!
testNameForOne

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self assert: unit name = unit nameForOne.! !

!BaseUnitTest methodsFor: 'test accessing'!
testNameForUndefinedAmount

	| baseUnit |

	baseUnit := BaseUnit nameForOne: 'peso' nameForMany: 'pesos'.
	self assert: baseUnit nameForUndefinedAmount = baseUnit nameForMany! !

!BaseUnitTest methodsFor: 'test accessing'!
testNothingAmount

	self assert: (BaseUnit named: 'peso') nothingAmount = 0.
! !

!BaseUnitTest methodsFor: 'test accessing'!
testNullMeasure

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self assert: unit nullMeasure amount = 0.
	self assert: unit nullMeasure unit = unit.
! !

!BaseUnitTest methodsFor: 'test accessing'!
testNumerator

	| unit |

	unit := BaseUnit nameForOne: 'peso' nameForMany: 'pepe'.

	self assert: unit numerator = unit! !

!BaseUnitTest methodsFor: 'test accessing'!
testReciprocal

	| peso |
	peso := BaseUnit named: 'peso'.
	self assert: peso reciprocal = (NullUnit new / peso)! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsDerivedUnit

	| meter centimeter |

	meter := BaseUnit named: 'meter'.
	centimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1/100 named: 'centimeter'.
	
	self assert: (meter sameDomainAs: centimeter).	
	
	
! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsDerivedUnitOfOtherDomain

	| meter hour minute|

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	minute := ProportionalDerivedUnit baseUnit: hour conversionFactor: 1/60 named: 'minute'.
	
	self deny: (meter sameDomainAs: minute).	
	
	! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsDifferentBaseUnit

	| unit metro |
	
	unit := BaseUnit named: 'peso'.
	metro := BaseUnit named: 'metro'.
	self deny: (unit sameDomainAs: metro)
	
	
! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsDividedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (meter sameDomainAs: (meter / hour))
	
	! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsMultipliedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (meter sameDomainAs: (meter * hour))
	
	! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsNullUnit

	| meter |

	meter := BaseUnit named: 'meter'.
	self deny: (meter sameDomainAs: NullUnit new)
	
	! !

!BaseUnitTest methodsFor: 'test querying'!
testSameDomainAsSameBaseUnit

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self assert: (unit sameDomainAs: unit).
	
	
	
! !

!BaseUnitTest methodsFor: 'test accessing'!
testSign

	self assert: (BaseUnit named: 'peso') sign=BaseUnit defaultSign.
	self assert: (BaseUnit named: 'peso' sign: '$') sign = '$'.
	self assert: (BaseUnit nameForOne: 'peso' nameForMany: 'pepe' sign: '$') sign = '$'! !

!CircularReadStreamTest methodsFor: 'initialization' stamp: 'mx 11/21/2007 10:40'!
setUp

	stream := CircularReadStream on: #(1 2 3 4 5) moving: NullUnit new.
	streamStaringInThirdElement := CircularReadStream on: #(1 2 3 4 5) moving: NullUnit new startingCircleAt: 3! !

!CircularReadStreamTest methodsFor: 'test testing' stamp: 'mx 11/21/2007 09:06'!
testAtBegin

	self assert: stream atBegin.
	stream upToEnd.
	self deny: stream atBegin.
	stream upToBegin.
	self assert: stream atBegin.
	
	self assert: streamStaringInThirdElement atBegin.
	self assert: streamStaringInThirdElement current = 3.
	streamStaringInThirdElement upToEnd.
	self deny: streamStaringInThirdElement atBegin.
	self assert: streamStaringInThirdElement current = 2.
	streamStaringInThirdElement upToBegin.
	self assert: streamStaringInThirdElement atBegin.
	self assert: streamStaringInThirdElement current = 3! !

!CircularReadStreamTest methodsFor: 'test testing' stamp: 'mx 11/21/2007 09:06'!
testAtEnd

	self deny: stream atEnd.
	stream upToEnd.
	self assert: stream atEnd.
	stream upToBegin.
	self deny: stream atEnd.
	
	self deny: streamStaringInThirdElement atEnd.
	self deny: streamStaringInThirdElement current = 2.
	streamStaringInThirdElement  upToEnd.
	self assert: streamStaringInThirdElement atEnd.
	self assert: streamStaringInThirdElement current = 2.
	streamStaringInThirdElement upToBegin.
	self deny: streamStaringInThirdElement atEnd.
	self deny: streamStaringInThirdElement current = 2! !

!CircularReadStreamTest methodsFor: 'test accessing' stamp: 'mx 11/21/2007 09:12'!
testCurrent

	self assert: stream current = 1.
	stream next: 2.
	self assert: stream current = 3.
	stream previous: 3.
	self assert: stream current = 5.
	
	self assert: streamStaringInThirdElement current = 3.
	streamStaringInThirdElement next: 2.
	self assert: streamStaringInThirdElement current = 5.
	streamStaringInThirdElement previous: 3.
	self assert: streamStaringInThirdElement current = 2! !

!CircularReadStreamTest methodsFor: 'test querying' stamp: 'mx 10/6/2007 15:24'!
testDistanceFrom

	self assert: (stream distanceFrom: 1) = 0.
	self assert: (stream distanceFrom: 2) = 4.
	self assert: (stream distanceFrom: 3) = 3.
	self assert: (stream distanceFrom: 4) = 2.
	self assert: (stream distanceFrom: 5) = 1! !

!CircularReadStreamTest methodsFor: 'test querying' stamp: 'mx 11/19/2007 13:38'!
testDistanceFromTo

	self assert: (stream distanceFrom: 1 to: 1) = 0.
	self assert: (stream distanceFrom: 1 to: 2) = 1.
	self assert: (stream distanceFrom: 1 to: 3) = 2.
	self assert: (stream distanceFrom: 1 to: 4) = 3.
	self assert: (stream distanceFrom: 1 to: 5) = 4! !

!CircularReadStreamTest methodsFor: 'test querying' stamp: 'mx 10/1/2007 21:04'!
testDistanceTo

	self assert: (stream distanceTo: 1) = 0.
	self assert: (stream distanceTo: 2) = 1.
	self assert: (stream distanceTo: 3) = 2.
	self assert: (stream distanceTo: 4) = 3.
	self assert: (stream distanceTo: 5) = 4! !

!CircularReadStreamTest methodsFor: 'test querying' stamp: 'mx 10/1/2007 20:59'!
testDistanceToFrom

	self assert: (stream distanceTo: 1 from: 1) = 0.
	self assert: (stream distanceTo: 2 from: 1) = 1.
	self assert: (stream distanceTo: 3 from: 1) = 2.
	self assert: (stream distanceTo: 4 from: 1) = 3.
	self assert: (stream distanceTo: 5 from: 1) = 4! !

!CircularReadStreamTest methodsFor: 'test enumerating' stamp: 'mx 11/1/2007 18:41'!
testNext

	self assert: stream next = 2.
	self assert: stream next = 3.
	self assert: stream next = 4.
	self assert: stream next = 5.
	self assert: stream next = 1! !

!CircularReadStreamTest methodsFor: 'test enumerating' stamp: 'mx 11/1/2007 18:41'!
testNextANumberOfSomething

	self assert: (stream next: 1) = 2.
	self assert: (stream next: 2) = 4.
	self assert: (stream next: 3) = 2.
	self assert: (stream next: 4) = 1.
	self assert: (stream next: 5) = 1.
	
	self assert: (stream next: -1) = 5.
	self assert: (stream next: -2) = 3.
	self assert: (stream next: -3) = 5.
	self assert: (stream next: -4) = 1.
	self assert: (stream next: -5) = 1! !

!CircularReadStreamTest methodsFor: 'test enumerating' stamp: 'mx 9/27/2007 22:19'!
testPrevious

	self assert: stream previous = 5.
	self assert: stream previous = 4.
	self assert: stream previous = 3.
	self assert: stream previous = 2.
	self assert: stream previous = 1.
	self assert: stream previous = 5! !

!CircularReadStreamTest methodsFor: 'test enumerating' stamp: 'mx 9/30/2007 17:49'!
testPreviousANumberOfSomething

	self assert: (stream previous: 1) = 5.
	self assert: (stream previous: 2) = 3.
	self assert: (stream previous: 3) = 5.
	self assert: (stream previous: 4) = 1.
	self assert: (stream previous: 5) = 1.
	
	self assert: (stream previous: -1) = 2.
	self assert: (stream previous: -2) = 4.
	self assert: (stream previous: -3) = 2.
	self assert: (stream previous: -4) = 1.
	self assert: (stream previous: -5) = 1! !

!CircularReadStreamTest methodsFor: 'test querying' stamp: 'mx 10/6/2007 15:29'!
testRelativeDistanceFromTo

	self assert: (stream relativeDistanceFrom: 1 to: 1) = 0.
	self assert: (stream relativeDistanceFrom: 1 to: 2) = 1.
	self assert: (stream relativeDistanceFrom: 1 to: 3) = 2.
	self assert: (stream relativeDistanceFrom: 1 to: 4) = 3.
	self assert: (stream relativeDistanceFrom: 1 to: 5) = 4.
	
	self assert: (stream relativeDistanceFrom: 1 to: 1) = 0.
	self assert: (stream relativeDistanceFrom: 2 to: 1) = -1.
	self assert: (stream relativeDistanceFrom: 3 to: 1) = -2.
	self assert: (stream relativeDistanceFrom: 4 to: 1) = -3.
	self assert: (stream relativeDistanceFrom: 5 to: 1) = -4! !

!CompoundMeasureTest methodsFor: 'mock undefined arithmetic object' stamp: 'HAW 3/25/2017 19:34:37'!
addCompoundMeasure: aMeasureBag

	^aMeasureBag addSimpleMeasure: self! !

!CompoundMeasureTest methodsFor: 'accessing temperature units'!
celsius

	^units celsius! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
centavo
	
	^units centavo! !

!CompoundMeasureTest methodsFor: 'accessing distance units'!
centimeter
	
	^units centimeter! !

!CompoundMeasureTest methodsFor: 'bag creation' stamp: 'HAW 3/25/2017 20:02:17'!
composeWith: aMeasure 
	
	^aMeasure composeWithSimpleMeasure: self! !

!CompoundMeasureTest methodsFor: 'mock undefined arithmetic object' stamp: 'HAW 3/25/2017 20:01:34'!
composeWithSimpleMeasure: aMeasure

	^CompoundMeasure with: self with: aMeasure! !

!CompoundMeasureTest methodsFor: 'mock undefined arithmetic object'!
convertToBaseUnit

	^self! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
dollar

	^units dollar! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
euro

	^units euro! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
euroCent
	
	^units euroCent! !

!CompoundMeasureTest methodsFor: 'accessing temperature units'!
fahrenheit

	^units fahrenheit! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fiveDollars

	^SimpleMeasure amount: 5 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fivePesos

	^SimpleMeasure amount: 5 unit: self peso! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fortyDollars

	^SimpleMeasure amount: 40 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing distance units'!
kilometer
	
	^units kilometer! !

!CompoundMeasureTest methodsFor: 'accessing distance units'!
meter

	^units meter! !

!CompoundMeasureTest methodsFor: 'accessing distance units'!
metro

	^units metro! !

!CompoundMeasureTest methodsFor: 'accessing distance units'!
millimeter
	
	^units millimeter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
minusTenDollars

	^SimpleMeasure amount: -10 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
minusTenPesos
	
	^SimpleMeasure amount: -10 unit: self peso! !

!CompoundMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneCelsius

	^SimpleMeasure amount: 1 unit: self celsius! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneDollar
	
	^SimpleMeasure amount: 1 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneFahrenheit

	^SimpleMeasure amount: 1 unit: self fahrenheit! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneKilometer
	
	^SimpleMeasure amount: 1 unit: self kilometer! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneMeter
	
	^SimpleMeasure amount: 1 unit: self meter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
onePeso

	^SimpleMeasure amount: 1 unit: self peso! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneQuarter
	
	^SimpleMeasure amount: 1 unit: self quarter! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
peso

	^units peso! !

!CompoundMeasureTest methodsFor: 'accessing monetary units'!
quarter
	
	^units quarter! !

!CompoundMeasureTest methodsFor: 'mock undefined arithmetic object'!
sameDomainAs: aMeasure 
	
	^false! !

!CompoundMeasureTest methodsFor: 'initialization'!
setUp

	units := UnitsTestResource current! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenCentavos
	
	^SimpleMeasure amount: 10 unit: self centavo! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenDollars

	^SimpleMeasure amount: 10 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenEuros

	^SimpleMeasure amount: 10 unit: self euro! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenMeters

	^SimpleMeasure amount: 10 unit: self meter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenPesos
	
	^SimpleMeasure amount: 10 unit: self peso! !

!CompoundMeasureTest methodsFor: 'test integer remainder'!
tesRemainderFractionByMeasure

	self should: [ (1/3) \\  ( self tenPesos + self tenMeters )  ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test add'!
testAdd

	| measureBag |

	measureBag := self tenPesos + self twentyDollars.
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars.
	
	measureBag := self tenPesos + self twentyDollars + self tenEuros.
	self assert: measureBag numberOfMeasures = 3.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (measureBag atSameBaseUnitAs: self euro) = self tenEuros! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddAssociativity

	self assert: ((self tenPesos + self twentyDollars) + self tenEuros) = (self tenPesos + (self twentyDollars + self tenEuros))! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddBags

	| result |
	
	result := (self tenPesos + self twentyDollars) + (self tenEuros + self tenPesos).
	self assert: (result atSameBaseUnitAs: self peso) = self twentyPesos.
	self assert: (result atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (result atSameBaseUnitAs: self euro) = self tenEuros.
	self assert: result numberOfMeasures = 3.
	
	result := (self tenPesos + self twentyDollars) + self tenEuros.
	self assert: (result atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (result atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (result atSameBaseUnitAs: self euro) = self tenEuros.
	self assert: result numberOfMeasures = 3	! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddCommutativity

	self assert: (self tenPesos + self twentyDollars) = (self twentyDollars + self tenPesos).
	self assert: (self tenPesos + self twentyDollars + self tenEuros) = (self tenEuros + self tenPesos + self twentyDollars ).
	self assert: (self tenPesos + self twentyDollars + self tenEuros) = (self twentyDollars + self tenEuros + self tenPesos ).
	self assert: (self tenPesos + self twentyDollars + self tenEuros) = (self twentyDollars + self tenPesos + self tenEuros ).
! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddEquality

	self assert: (self tenPesos + self twentyDollars)  = (self tenPesos + self twentyDollars).
	self assert: (self tenEuros + self tenPesos + self twentyDollars) = (self tenEuros + self tenPesos + self twentyDollars)! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddExistingUnit

	| measureBag |

	measureBag := self tenPesos + self twentyDollars.
	measureBag := measureBag + self tenPesos.
	
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self twentyPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddFloatWithMeasure

	self assert: ((10.01 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((10.01 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: ((10.01 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = 10.01! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddFractionWithMeasure

	self assert: ((1/3 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((1/3 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: ((1/3 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = (1/3)! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddImmutability

	| a10pesosPlus20Dollars |

	a10pesosPlus20Dollars := self tenPesos + self twentyDollars.
	a10pesosPlus20Dollars + self tenPesos.
	self assert: a10pesosPlus20Dollars = (self tenPesos + self twentyDollars).
	
	! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddIntegerWithMeasure

	self assert: ((10 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((10 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: ((10 + (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = 10.	! !

!CompoundMeasureTest methodsFor: 'test add'!
testAddNothing

	self assert: (self zeroPesos + self twentyDollars) = self twentyDollars.
	self assert: (self zeroPesos + self zeroDollars) = self zeroPesos.
	self assert: (self zeroPesos + self zeroDollars) = self zeroDollars.
	! !

!CompoundMeasureTest methodsFor: 'test accessing' stamp: 'HAW 3/25/2017 19:21:38'!
testAtSameBaseUnitAsWithBaseUnits

	| measureBag |
	
	measureBag := CompoundMeasure with: self tenPesos with: self twentyDollars.
	
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (measureBag atSameBaseUnitAs: self euro) = 0
	! !

!CompoundMeasureTest methodsFor: 'test accessing' stamp: 'HAW 3/25/2017 19:21:38'!
testAtSameBaseUnitAsWithDerivedUnits

	| measureBag |
	
	measureBag := CompoundMeasure with: self tenCentavos with: self oneQuarter.
	
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenCentavos.
	self assert: (measureBag atSameBaseUnitAs: self centavo) = self tenCentavos.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenCentavos convertToBaseUnit.
	self assert: (measureBag atSameBaseUnitAs: self centavo) = self tenCentavos convertToBaseUnit.
	
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self oneQuarter.
	self assert: (measureBag atSameBaseUnitAs: self quarter) = self oneQuarter.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self oneQuarter convertToBaseUnit.
	self assert: (measureBag atSameBaseUnitAs: self quarter) = self oneQuarter convertToBaseUnit.

	self assert: (measureBag atSameBaseUnitAs: self euroCent) = 0! !

!CompoundMeasureTest methodsFor: 'test instance creation' stamp: 'HAW 3/25/2017 20:21:30'!
testCompoundMeasureImmutability

	| measureBag measures |
	
	measureBag := CompoundMeasure with: self tenPesos with: self twentyDollars.
	measures := measureBag measures.
	measures add: self tenEuros.
	
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars! !

!CompoundMeasureTest methodsFor: 'test'!
testConvertAmountToBaseUnit

	self
		should: [(self tenPesos + self tenDollars) convertAmountToBaseUnit]
		raise: Exception
		withExceptionDo: [ :anException |
			self assert: ('*Unit of a MeasureBag is not defined' match: anException description)]! !

!CompoundMeasureTest methodsFor: 'test instance creation' stamp: 'HAW 3/25/2017 19:21:38'!
testCreationWithMeasures

	| measures measureBag |

	measures := OrderedCollection with: self tenPesos with: self twentyDollars with: self tenEuros.	
	measureBag := CompoundMeasure measures: measures.
	
	self assert: measureBag numberOfMeasures = 3.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (measureBag atSameBaseUnitAs: self euro) = self tenEuros! !

!CompoundMeasureTest methodsFor: 'test' stamp: 'HAW 3/25/2017 19:21:38'!
testCreationWithMeasuresCopiesCollection
	"This test verifies that when bag is created using the private message  #measures:,
	the collection that goes as collaborating is copied"
	
	| measures measureBag |

	measures := OrderedCollection
		with: self tenPesos
		with: self twentyDollars
		with: self tenEuros.
	measureBag := CompoundMeasure measures: measures.

	measures add: self oneMeter.
	self assert: measureBag numberOfMeasures = 3.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (measureBag atSameBaseUnitAs: self euro) = self tenEuros


! !

!CompoundMeasureTest methodsFor: 'test division'!
testDivideByMeasure

	self assert: ((self tenPesos + self twentyDollars) / self tenPesos ) =((self twentyDollars / self tenPesos) + 1)! !

!CompoundMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:11:51'!
testDivision

	self assert: ((self tenPesos + self twentyDollars) / 10) = (self onePeso + self twoDollars).
	self assert: ((self tenPesos + self twentyDollars) / -10) = (self onePeso negated - self twoDollars).
	self assert: ((self tenPesos + self twentyDollars) / 3) = 	((SimpleMeasure amount: (10/3) unit: self peso) + (SimpleMeasure amount: (20/3) unit: self dollar))! !

!CompoundMeasureTest methodsFor: 'test division'!
testDivisionDistributivity

	self assert: (self tenPesos + self tenDollars ) / ( self tenPesos + self tenDollars ) =
		(((self tenPesos + self tenDollars ) / self tenPesos) + ((self tenPesos + self tenDollars ) / self tenDollars ))! !

!CompoundMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:25:21'!
testDivisionFloatByMeasure

	self assert: (1.01 / (self tenPesos + self tenDollars)) = (CompoundMeasureFraction numerator: 1.01 denominator: (self tenPesos + self tenDollars))

! !

!CompoundMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:25:16'!
testDivisionFractionByMeasure

	self assert: ((1/3) / (self tenPesos + self tenDollars)) = (CompoundMeasureFraction numerator: (1/3) denominator: (self tenPesos + self tenDollars))

! !

!CompoundMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:25:25'!
testDivisionIntegerByMeasure

	self assert: (1 / (self tenPesos + self tenDollars)) = (CompoundMeasureFraction numerator: 1 denominator: (self tenPesos + self tenDollars))

! !

!CompoundMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 20:23:27'!
testDivisionMeasureByCompoundMeasure

	self assert: (self tenPesos / (self tenPesos + self tenDollars)) = (CompoundMeasureFraction numerator: self tenPesos denominator: (self tenPesos + self tenDollars))

! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqual

	self assert: (CompoundMeasure with: self tenPesos with: self twentyDollars) = (CompoundMeasure with: self tenPesos with: self twentyDollars).
	self assert: (CompoundMeasure with: self tenPesos with: self twentyDollars) = (CompoundMeasure with: self twentyDollars with: self tenPesos ).
	self assert: (CompoundMeasure measures: (OrderedCollection with: self tenPesos with: self twentyDollars with: self tenEuros)) =
		(CompoundMeasure measures: (OrderedCollection with: self tenEuros with: self twentyDollars with: self tenPesos)).
	
	self deny: (CompoundMeasure with: self tenPesos with: self twentyDollars) = (CompoundMeasure with: (self tenPesos+self onePeso) with: self twentyDollars)
	! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqualAllNothing

	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) = (CompoundMeasure with: self zeroPesos with: self zeroDollars).
	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) = self zeroPesos.
	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) = self zeroDollars	! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqualNumber

	self assert: (CompoundMeasure with: self zeroPesos with: 1) = 1.
	self assert: 1 = (CompoundMeasure with: self zeroPesos with: 1)! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqualOneNothing

	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) = (CompoundMeasure with: self zeroPesos with: self tenDollars).
	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) = (CompoundMeasure with: self tenDollars with: self zeroPesos).
	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) = self tenDollars.
	self assert: (CompoundMeasure with: self tenDollars with: self zeroPesos) = self tenDollars! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqualWithDifferentBagSizeButRepresentSameEntity

	self assert: (CompoundMeasure with: self onePeso with: self zeroDollars) =
		(CompoundMeasure measures: (Array with: self onePeso))! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testEqualWithDifferentBagSizeIsNothing

	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) =
		(CompoundMeasure measures: (Array with: self zeroPesos))! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testHash

	self assert: (CompoundMeasure with: self tenPesos with: self twentyDollars) hash = (CompoundMeasure with: self tenPesos with: self twentyDollars) hash.
	self assert: (CompoundMeasure with: self tenPesos with: self twentyDollars) hash = (CompoundMeasure with: self twentyDollars with: self tenPesos ) hash.
	self assert: (CompoundMeasure measures: (OrderedCollection with: self tenPesos with: self twentyDollars with: self tenEuros)) hash=
		(CompoundMeasure measures: (OrderedCollection with: self tenEuros with: self twentyDollars with: self tenPesos)) hash.
	
	self deny: (CompoundMeasure with: self tenPesos with: self twentyDollars) hash = (CompoundMeasure with: (self tenPesos+self onePeso) with: self twentyDollars) hash! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:24'!
testHashAllNothing

	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) hash = (CompoundMeasure with: self zeroPesos with: self zeroDollars) hash.
	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) hash = self zeroPesos hash.
	self assert: (CompoundMeasure with: self zeroPesos with: self zeroDollars) hash = self zeroDollars hash! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testHashOneNothing

	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) hash = (CompoundMeasure with: self zeroPesos with: self tenDollars) hash.
	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) hash = (CompoundMeasure with: self tenDollars with: self zeroPesos) hash.
	self assert: (CompoundMeasure with: self zeroPesos with: self tenDollars) hash = self tenDollars hash.
	self assert: (CompoundMeasure with: self tenDollars with: self zeroPesos ) hash = self tenDollars hash! !

!CompoundMeasureTest methodsFor: 'test truncated'!
testInvalidTruncated

	self 
		should: [ (3 / (self tenPesos + self tenDollars)) truncated ]
		raise: InvalidUnaryOperationException
		withExceptionDo: [ :anException |
			self assert: anException description notNil.
			self assert: anException operand = (3 / (self tenPesos + self tenDollars)).
			self assert: anException operationName = 'truncated' ]! !

!CompoundMeasureTest methodsFor: 'test testing' stamp: 'HAW 3/25/2017 20:21:11'!
testIsCompoundMeasurement

	self assert: ((self peso with: 10.01) + (self dollar with: 20.5)) isCompoundMeasure! !

!CompoundMeasureTest methodsFor: 'test' stamp: 'GabrielOmarCotelli 9/18/2009 20:56'!
testIsFraction

	self deny: ((self peso with: 10.01) + (self dollar with: 20.5)) isFraction! !

!CompoundMeasureTest methodsFor: 'test testing'!
testIsNothing

	self assert: (self zeroPesos + self zeroDollars) isNothing.
	self assert: ((self tenPesos + self tenDollars) - (self tenPesos + self tenDollars)) isNothing! !

!CompoundMeasureTest methodsFor: 'test magnitude protocol'!
testLessThan
	"Not supported in bags..."

	self should: [ (self tenPesos + self tenDollars) < (self tenPesos + self tenDollars) ] raise: Exception! !

!CompoundMeasureTest methodsFor: 'test accessing' stamp: 'HAW 3/25/2017 19:21:38'!
testMeasures

	| measureBag |

	measureBag := CompoundMeasure with: self tenPesos with: self twentyDollars.

	self assert: measureBag measures size = 2.
	self assert: (measureBag measures includes: self tenPesos).
	self assert: (measureBag measures includes: self twentyDollars).
	self deny: (measureBag measures includes: 0)! !

!CompoundMeasureTest methodsFor: 'test integer division' stamp: 'HAW 3/25/2017 19:11:51'!
testModulo

	self assert: ((self tenPesos + self twentyDollars) // 8) = (self onePeso + self twoDollars).
	self assert:
		((self tenPesos + self twentyDollars) // -11) = (self onePeso negated - self twoDollars).
	self assert:
		((self tenPesos + self twentyDollars) // 3) = (
			(SimpleMeasure amount: (10 // 3) unit: self peso) +
				(SimpleMeasure amount: (20 // 3) unit: self dollar))! !

!CompoundMeasureTest methodsFor: 'test integer division' stamp: 'HAW 3/25/2017 20:24:08'!
testModuloCompoundMeasure

	self should: [ (self tenPesos + self tenDollars) // (self tenPesos + self tenDollars) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer division'!
testModuloFloatByMeasure

	self should: [ 1.01 // ( self tenPesos + self tenMeters ) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer division'!
testModuloFractionByMeasure

	self should: [ (1/3) // ( self tenPesos + self tenMeters ) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer division'!
testModuloIntegerByMeasure

	self should: [ 1 // ( self tenPesos + self tenMeters ) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer division'!
testModuloMeasure

	self should: [ self tenPesos // (self tenPesos + self tenDollars) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplication

	self assert: ((self tenPesos + self twentyDollars) * 2) = (self twentyPesos + self fortyDollars).
	self assert: ((self tenPesos + self twentyDollars + self tenEuros) * 2) = (self twentyPesos + self fortyDollars + self twentyEuros).
	
	! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplicationByMeasure

	self assert: ((self tenPesos + self twentyDollars) * self tenPesos) = ((self tenPesos * self tenPesos) + (self tenPesos * self twentyDollars))

	
	! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplicationByZero

	self assert: ((self tenPesos + self twentyDollars) * 0) isNothing.
	self assert: (((self tenPesos + self twentyDollars) * 0) + self tenPesos) = self tenPesos.
	self assert: (((self tenPesos + self twentyDollars) * 0) - self tenPesos) = self tenPesos negated 
! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplicationCommutativity

	self assert: ((self tenPesos + self twentyDollars) * (25/10)) = ((25/10) * (self tenPesos + self twentyDollars)).
	self assert: (self tenPesos * (self tenPesos + self tenDollars)) = ((self tenPesos + self tenDollars) * self tenPesos ).
! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplicationDistributivity

	self assert: ((self tenPesos + self twentyDollars) * 2) = ((self tenPesos * 2) + (self twentyDollars * 2)).
	self assert: ((self tenPesos + self twentyDollars) * 2) = ((self tenPesos + self twentyDollars) + (self tenPesos + self twentyDollars)) .
	self assert: (((self tenPesos + self twentyDollars) + (self tenPesos + self twentyDollars)) * 2) = (((self tenPesos + self twentyDollars) * 2) + ((self tenPesos + self twentyDollars) * 2)).
	self assert: (self tenPesos + self tenDollars ) * ( self tenPesos + self tenDollars ) =
		(((self tenPesos + self tenDollars )* self tenPesos) + ((self tenPesos + self tenDollars ) * self tenDollars ))! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplyFloatByMeasure

	self assert: (1.01 *  ( self tenPesos + self tenMeters ) ) = ((self tenPesos * 1.01) + (self tenMeters * 1.01))

! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplyFractionByMeasure

	self assert: ((1/3) *  ( self tenPesos + self tenMeters ) ) = ((1/3* self tenPesos) + (1/3*self tenMeters)) 

! !

!CompoundMeasureTest methodsFor: 'test multiplication'!
testMultiplyIntegerByMeasure

	self assert: (3 * (self tenPesos + self tenMeters )) =  ((3*self tenPesos) + (3*self tenMeters)) 

! !

!CompoundMeasureTest methodsFor: 'test multiplication' stamp: 'HAW 3/25/2017 20:23:55'!
testMultiplyMeasureByCompoundMeasure

	self assert: (self tenPesos * (self tenPesos + self tenDollars)) = ((self tenPesos * self tenPesos) + (self tenPesos * self tenDollars))! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testNegated

	self assert: (self minusTenPesos + self minusTenDollars) = (self tenPesos + self tenDollars) negated! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testNegatedDistribution

	self assert: (self tenPesos negated + self tenDollars negated) = (self tenPesos + self tenDollars) negated.
	self assert: (self tenPesos + self twentyDollars) negated negated = (self tenPesos + self twentyDollars)! !

!CompoundMeasureTest methodsFor: 'test subtract' stamp: 'GabrielOmarCotelli 9/18/2009 20:48'!
testNegatedZeroBag

	self assert: ((self tenPesos + self twentyDollars) - (self tenPesos + self twentyDollars) ) negated isNothing.
! !

!CompoundMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:21:38'!
testNotEqual

	self deny: (CompoundMeasure with: self zeroPesos with: 1) = 'hello'.
	self deny: 'hello' = (CompoundMeasure with: self zeroPesos with: 1).

	self deny: (CompoundMeasure with: self zeroPesos with: 1) = Object new.
	self deny: Object new = (CompoundMeasure with: self zeroPesos with: 1)! !

!CompoundMeasureTest methodsFor: 'test accessing' stamp: 'HAW 3/25/2017 19:21:38'!
testNumberOfMeasures

	| measureBag |
	
	measureBag := CompoundMeasure with: self tenPesos with: self twentyDollars.
	
	self assert: measureBag numberOfMeasures = 2.
	self assert: measureBag numberOfMeasures = measureBag measures size! !

!CompoundMeasureTest methodsFor: 'test printing'!
testPrintingForMany

	self assert: self tenPesos printString = '10 pesos' description: 'Printing for many with correct creation'.
	self assert: self tenDollars printString = '10 dollars' description: 'Printing for many with invalid creation'.
	
	! !

!CompoundMeasureTest methodsFor: 'test printing'!
testPrintingForOne

	self assert: self onePeso printString = '1 peso' description: 'Printing for one with correct creation'.
	self assert: self oneDollar printString = '1 dollar' description: 'Printing for one with invalid creation'.
	
	! !

!CompoundMeasureTest methodsFor: 'test'!
testRemFrom

	self
		should: [(self oneKilometer + self fivePesos) remFrom: self oneKilometer]
		raise: InvalidBinaryOperationException! !

!CompoundMeasureTest methodsFor: 'test integer remainder' stamp: 'HAW 3/25/2017 19:11:51'!
testRemainder

	self assert: ((self tenPesos + self twentyDollars) \\ 9) = (self onePeso + self twoDollars).
	self assert: ((self tenPesos + self twentyDollars) \\ -11) = (self onePeso negated - self twoDollars).
	self assert: ((self tenPesos + self twentyDollars) \\ 3) = ((SimpleMeasure amount: (10\\3) unit: self peso) + (SimpleMeasure amount: (20\\3) unit: self dollar))! !

!CompoundMeasureTest methodsFor: 'test integer remainder' stamp: 'HAW 3/25/2017 20:23:39'!
testRemainderCompoundMeasure

	self should: [ (self tenPesos + self tenDollars) \\ (self tenPesos + self tenDollars) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer remainder'!
testRemainderFloatByMeasure

	self should: [ 1.01 \\ ( self tenPesos + self tenMeters )  ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer remainder'!
testRemainderIntegerByMeasure

	self should: [ 1 \\  ( self tenPesos + self tenMeters ) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test integer remainder'!
testRemainderMeasure

	self should: [ self tenPesos \\ (self tenPesos + self tenDollars) ] raise: InvalidOperationException

! !

!CompoundMeasureTest methodsFor: 'test'!
testRoundTo

	self assert: ((self oneKilometer + self fivePesos) roundTo: 1) = (self oneKilometer + self fivePesos)! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtract

	| measureBag |

	measureBag := self tenPesos - self twentyDollars.
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars negated.
	
	measureBag := self tenPesos - self twentyDollars - self tenEuros.
	self assert: measureBag numberOfMeasures = 3.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars negated.
	self assert: (measureBag atSameBaseUnitAs: self euro) = self tenEuros negated! !

!CompoundMeasureTest methodsFor: 'test subtract' stamp: 'GabrielOmarCotelli 9/18/2009 20:49'!
testSubtractBags

	| result |

	result := (self tenPesos + self twentyDollars) - (self tenEuros + self tenPesos).
	self assert: (result atSameBaseUnitAs: self peso) isNothing.
	self assert: (result atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (result atSameBaseUnitAs: self euro) = self tenEuros negated.
	self assert: result numberOfMeasures = 2.

	result := (self tenPesos + self twentyDollars) - self tenEuros.
	self assert: (result atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (result atSameBaseUnitAs: self dollar) = self twentyDollars.
	self assert: (result atSameBaseUnitAs: self euro) = self tenEuros negated.
	self assert: result numberOfMeasures = 3! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractEquality

	self assert: (self tenPesos - self twentyDollars)  = (self tenPesos - self twentyDollars).
	self assert: (self tenEuros - self tenPesos - self twentyDollars)  = (self tenEuros - self tenPesos - self twentyDollars).
	
! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractExistingUnit

	| measureBag measure |

	measureBag := self tenPesos - self twentyDollars.
	measure := measureBag - self tenPesos.

	self assert: measure = self twentyDollars negated

! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractFloatWithMeasure

	self assert: ((10.01 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((10.01 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos negated.
	self assert: ((10.01 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = 10.01.	! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractFractionWithMeasure

	self assert: ((1/3 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((1/3 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos negated.
	self assert: ((1/3 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = (1/3).	! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractIntegerWithMeasure

	self assert: ((10 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((10 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: self peso) = self tenPesos negated.
	self assert: ((10 - (self tenMeters + self tenPesos) ) atSameBaseUnitAs: NullUnit new) = 10.	! !

!CompoundMeasureTest methodsFor: 'test multiplication' stamp: 'HAW 3/25/2017 20:21:49'!
testSubtractMeasureByCompoundMeasure

	self assert: (self tenMeters - (self tenPesos + self tenDollars)) = (self tenMeters - self tenPesos - self tenDollars)

! !

!CompoundMeasureTest methodsFor: 'test subtract'!
testSubtractNothing

	self assert: (self zeroPesos - self twentyDollars) = self twentyDollars negated.
	self assert: (self zeroPesos - self zeroDollars) = self zeroPesos.
	self assert: (self zeroPesos - self zeroDollars) = self zeroDollars.
	! !

!CompoundMeasureTest methodsFor: 'test truncated'!
testTruncated

	self assert: ((self peso with: 10.01) + (self dollar with: 20.5)) truncated = (self tenPesos + self twentyDollars)! !

!CompoundMeasureTest methodsFor: 'test'!
testUnitNameOf

	self
		should: [(self tenPesos + self tenDollars) unitNameOf: self dollar]
		raise: Exception
		withExceptionDo: [ :anException |
			self assert: ('*Unit of a MeasureBag is not defined' match: anException description)]! !

!CompoundMeasureTest methodsFor: 'test instance creation' stamp: 'HAW 3/25/2017 19:21:38'!
testWithWithBaseUnits

	| measureBag |
	
	measureBag := CompoundMeasure with: self tenPesos with: self twentyDollars.
	
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self peso) = self tenPesos.
	self assert: (measureBag atSameBaseUnitAs: self dollar) = self twentyDollars! !

!CompoundMeasureTest methodsFor: 'test instance creation' stamp: 'HAW 3/25/2017 19:21:38'!
testWithWithDerivedUnits

	| measureBag |
	
	measureBag := CompoundMeasure with: self tenCentavos with: self oneQuarter.
	
	self assert: measureBag numberOfMeasures = 2.
	self assert: (measureBag atSameBaseUnitAs: self centavo) amount = (10/100).
	self assert: (measureBag atSameBaseUnitAs: self peso) amount = (10/100).
	self assert: (measureBag atSameBaseUnitAs: self quarter) amount = (1/4).
	self assert: (measureBag atSameBaseUnitAs: self dollar) amount = (1/4)! !

!CompoundMeasureTest methodsFor: 'test division'!
testZeroDivision

	self assert: ((self zeroPesos + self zeroDollars) / 1) = self zeroPesos.
	self assert: ((self zeroPesos + self zeroDollars) / 1) = self zeroDollars! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
thirtyPesos

	^SimpleMeasure amount: 30 unit: self peso! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
thousandMillimeters
	
	^SimpleMeasure amount: 1000 unit: self millimeter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twentyDollars

	^SimpleMeasure amount: 20 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twentyEuros
	
	^SimpleMeasure amount: 20 unit: self euro! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twentyPesos
	
	^SimpleMeasure amount: 20 unit: self peso! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twoDollars

	^SimpleMeasure amount: 2 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'mock undefined arithmetic object'!
unit
	
	^BaseUnit named: 'Mock Unit'! !

!CompoundMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroCelsius

	^SimpleMeasure amount: 0 unit: self celsius! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroCentimeters

	^SimpleMeasure amount: 0 unit: self centimeter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroDollars
	
	^SimpleMeasure amount: 0 unit: self dollar! !

!CompoundMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroFahrenheit

	^SimpleMeasure amount: 0 unit: self fahrenheit! !

!CompoundMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroMeters

	^SimpleMeasure amount: 0 unit: self meter! !

!CompoundMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroPesos

	^SimpleMeasure amount: 0 unit: self peso! !

!CompoundMeasureTest class methodsFor: 'resources'!
resources

	^Array with: UnitsTestResource! !

!ConversionTableTest methodsFor: 'accessing monetary units'!
cents

	^units centavo! !

!ConversionTableTest methodsFor: 'accessing monetary units'!
dollar

	^units dollar! !

!ConversionTableTest methodsFor: 'accessing monetary measurements'!
oneDollar
	
	^self dollar with: 1! !

!ConversionTableTest methodsFor: 'accessing monetary measurements'!
oneHundredCents

	^self cents with: 100! !

!ConversionTableTest methodsFor: 'accessing monetary measurements'!
onePeso

	^self peso with: 1! !

!ConversionTableTest methodsFor: 'accessing monetary units'!
peso

	^units peso! !

!ConversionTableTest methodsFor: 'initialization'!
setUp

	units := UnitsTestResource current
! !

!ConversionTableTest methodsFor: 'accessing monetary measurements'!
tenDollars
	
	^self dollar with: 10! !

!ConversionTableTest methodsFor: 'testing accessing'!
testAccessing

	| table rule |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.

	rule := table unitConversionRuleFrom: self peso to: self dollar.
	self assert: rule sourceUnit = self peso.
	self assert: rule targetUnit = self dollar.
	self assert: rule function = (ProportionalUnitConversionFunction measure: self onePeso isProportionalTo: self tenDollars).
	
	self 
		should: [ table unitConversionRuleFrom: self dollar to: self peso]
		raise: NoUnitConversionRuleException.
		! !

!ConversionTableTest methodsFor: 'testing accessing'!
testAccessingImmutability

	| table rules |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.
	rules := table unitConversionRules.
	rules add: 1.
	self assert: table unitConversionRules size = 1! !

!ConversionTableTest methodsFor: 'testing table setup'!
testAddUnitConversionRule
	"This test verifies that if two rules of conversion for the same measures are added, it is left the last one. 
	That is the behavior defined for the table."	

	| table convertionBlock |

	table := ConversionTable new.
	table addUnitConversionRule: 	(UnitConversionRule 
		from: self peso 
		to: self dollar 
		use: [ :aValue | aValue ]).
	convertionBlock := [ :aValue | aValue * self tenDollars / self onePeso ].
	table addUnitConversionRule: 	(UnitConversionRule 
		from: self peso
		to: self dollar
		use: convertionBlock).

	self assert: table unitConversionRules size = 1.
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self tenDollars! !

!ConversionTableTest methodsFor: 'testing table setup'!
testBreakEquivalence

	| table |

	table := ConversionTable new.
	table measure: self onePeso isEquivalentTo: self tenDollars.
	table from: self peso to: self dollar use: [:aValue | aValue * self oneDollar / self onePeso ].
	
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self oneDollar.
	self assert: ((table unitConversionRuleFrom: self dollar to: self peso) value: self oneDollar) = (self onePeso/10)! !

!ConversionTableTest methodsFor: 'testing table setup'!
testConvertsTo

	| table |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.
	
	self assert: table unitConversionRules size = 1.
	self assert: (table unitConversionRules includes: 
		(UnitConversionRule 
			from: self peso
			to: self dollar 
			use: (ProportionalUnitConversionFunction measure: self onePeso isProportionalTo: self tenDollars))).
			
	self deny: (table unitConversionRules includes: 
		(UnitConversionRule 
			from: self dollar
			to: self peso
			use: (ProportionalUnitConversionFunction measure:  self tenDollars isProportionalTo: self onePeso)))! !

!ConversionTableTest methodsFor: 'testing table setup'!
testDerivedUnitIsEquivalentTo

	| table quarter fortyQuarters |
	
	quarter := units quarter.
	fortyQuarters := quarter with: 40.
	
	table := ConversionTable new.
	table measure: self oneHundredCents isEquivalentTo: self tenDollars.
	
	self assert: table unitConversionRules size = 2.
	self shouldnt: [ table unitConversionRuleFrom: self peso to: self dollar ] raise: NoUnitConversionRuleException.
	self shouldnt: [ table unitConversionRuleFrom: self dollar to: self peso ] raise: NoUnitConversionRuleException.
	self shouldnt: [ table unitConversionRuleFrom: self cents to: self dollar ] raise: NoUnitConversionRuleException.
	self shouldnt: [ table unitConversionRuleFrom: self dollar to: self cents ] raise: NoUnitConversionRuleException.
	self shouldnt: [ table unitConversionRuleFrom: self cents to: quarter ] raise: NoUnitConversionRuleException.
	self shouldnt: [ table unitConversionRuleFrom: quarter to: self cents ] raise: NoUnitConversionRuleException.
	
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self tenDollars.
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self oneHundredCents) = self tenDollars.

	self assert: ((table unitConversionRuleFrom: self cents to: self dollar) value: self onePeso) = self tenDollars.
	self assert: ((table unitConversionRuleFrom: self cents to: self dollar) value: self oneHundredCents) = self tenDollars.

	self assert: ((table unitConversionRuleFrom: self dollar to: self peso) value: self tenDollars) = self onePeso.
	self assert: ((table unitConversionRuleFrom: self dollar to: self cents) value: self tenDollars) = self oneHundredCents.

	self assert: ((table unitConversionRuleFrom: quarter to: self peso) value: fortyQuarters) = self onePeso.
	self assert: ((table unitConversionRuleFrom: quarter to: self cents ) value: fortyQuarters) = self oneHundredCents! !

!ConversionTableTest methodsFor: 'testing table setup'!
testFromToUse

	| table convertionBlock |
	
	table := ConversionTable new.
	convertionBlock := [ :aValue | aValue * self tenDollars / self onePeso ].
	table from: self peso to: self dollar use: convertionBlock.
	
	self assert: table unitConversionRules size = 1.
	self assert: (table unitConversionRules includes: 
		(UnitConversionRule 
			from: self peso
			to: self dollar
			use: convertionBlock))! !

!ConversionTableTest methodsFor: 'testing graph'!
testGraph

	| table graph |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.
	graph := table graph.
	
	self assert: graph nodes size = 2.
	self assert: (graph nodes includes: self peso).
	self assert: (graph nodes includes: self dollar).
	
	self assert: graph edges size = 1.
	self assert: (graph edgesConvergingTo: self dollar) size = 1.
	self assert: (graph edgesConvergingTo: self dollar) first source = self peso.
	self assert: (graph edgesStartingOn: self peso) size = 1.
	self assert: (graph edgesStartingOn: self peso) first target = self dollar! !

!ConversionTableTest methodsFor: 'testing graph'!
testGraphChange

	| table graph |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.
	graph := table graph.
	self assert: graph edges size = 1.

	table measure: self tenDollars convertsTo: self onePeso.
	self assert: table graph edges size = 2.
	self deny: table graph == graph! !

!ConversionTableTest methodsFor: 'testing table setup'!
testIsEquivalentTo

	| table |
	
	table := ConversionTable new.
	table measure: self onePeso isEquivalentTo: self tenDollars.
	
	self assert: table unitConversionRules size = 2.
	self assert: (table unitConversionRules includes: 
		(UnitConversionRule 
			from: self peso 
			to: self dollar
			use: (ProportionalUnitConversionFunction measure: self onePeso isProportionalTo: self tenDollars))).
			
	self assert: (table unitConversionRules includes: 
		(UnitConversionRule 
			from: self dollar
			to: self peso
			use: (ProportionalUnitConversionFunction measure: self tenDollars isProportionalTo: self onePeso)))! !

!ConversionTableTest methodsFor: 'testing exceptions'!
testNoUnitConversionRule

	| table |
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self tenDollars.

	self 
		should: [table unitConversionRuleFrom: self dollar to: self peso ]
		raise: NoUnitConversionRuleException
		withExceptionDo: [ :anException |
			self assert: anException sourceUnit = self dollar.
			self assert: anException targetUnit = self peso.
			self assert: anException description notNil ]! !

!ConversionTableTest methodsFor: 'testing table setup'!
testRemove

	| table |
	
	table := ConversionTable new.

	table measure: self onePeso convertsTo: self tenDollars.
	table removeUnitConversionRuleFrom: self peso to: self dollar.
	self assert: table unitConversionRules isEmpty.

	table measure: self onePeso convertsTo: self tenDollars.
	self 
		should: [ table removeUnitConversionRuleFrom: self dollar to: self peso]
		raise: NoUnitConversionRuleException
		withExceptionDo: [ :anException |
			self assert: anException sourceUnit = self dollar.
			self assert: anException targetUnit = self peso.
			self assert: anException description notNil ]! !

!ConversionTableTest methodsFor: 'testing table setup'!
testUnitConversionRuleUniqueness

	| table |

	table := ConversionTable new.
	table from: self peso to: self dollar use: [:aValue | aValue * self oneDollar / self onePeso ].
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self oneDollar.

	table measure: self onePeso isEquivalentTo: self tenDollars.
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self tenDollars.
	self assert: ((table unitConversionRuleFrom: self dollar to: self peso) value: self oneDollar) = (self onePeso/10).
	
	table := ConversionTable new.
	table measure: self onePeso convertsTo: self oneDollar.
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self oneDollar.

	table measure: self onePeso isEquivalentTo: self tenDollars.
	self assert: ((table unitConversionRuleFrom: self peso to: self dollar) value: self onePeso) = self tenDollars.
	self assert: ((table unitConversionRuleFrom: self dollar to: self peso) value: self oneDollar) = (self onePeso/10)! !

!ConversionTableTest class methodsFor: 'resources'!
resources

	^Array with: UnitsTestResource! !

!DividedUnitTest methodsFor: 'initialization'!
setUp

	meter := BaseUnit named: 'meter' sign: 'm'.
	second := BaseUnit named: 'second' sign: 's'.
	meterOverSecond := meter / second! !

!DividedUnitTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: (meterOverSecond baseUnit) = meterOverSecond
! !

!DividedUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	self assert: (meterOverSecond convertAmountToBaseUnit: 0) = 0.
	self assert: (meterOverSecond convertAmountToBaseUnit: 10) = 10! !

!DividedUnitTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	| measure |
	
	measure := SimpleMeasure amount: 10 unit: meterOverSecond.
	self assert: (meterOverSecond convertToBaseUnit: measure) == measure! !

!DividedUnitTest methodsFor: 'test accessing'!
testDenominator

	self assert: meterOverSecond denominator = second! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDividedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterOverSecond / meterOverSecond) = NullUnit new.
	self assert: (meterOverSecond / (kelvin / liter)) numerator = (meter * liter).
	self assert: (meterOverSecond / (kelvin / liter)) denominator = (second * kelvin)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:19'!
testDivideByFloat

	self assert: (meterOverSecond / 5.5) = (meterOverSecond with: 1/5.5).
	self assert: (meterOverSecond / 5.5) numerator = (meter with: (1/5.5) numerator).
	self assert: (meterOverSecond / 5.5) denominator = (second with: (1/5.5) denominator)! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByInfinity

	self assert: meterOverSecond / Infinity = (meterOverSecond with: 0).
	self assert: (meterOverSecond / Infinity) numerator = (meter with: 0).
	self assert: (meterOverSecond / Infinity) denominator = (second with: 1).
	self
		should: [Infinity / meterOverSecond]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and meter/second']! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:18'!
testDivideByInteger

	self assert: (meterOverSecond / 5) = (meterOverSecond with: 1/5).
	self assert: (meterOverSecond / 5) numerator = (meter with: 1).
	self assert: (meterOverSecond / 5) denominator = (second with: 5).
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMinusInfinity

	self assert: meterOverSecond / MinusInfinity = (meterOverSecond with: 0).
	self assert: (meterOverSecond / MinusInfinity) numerator = (meter with: 0).
	self assert: (meterOverSecond / MinusInfinity) denominator = (second with: 1).
	self
		should: [MinusInfinity / meterOverSecond]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and meter/second']! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySimpleUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meterOverSecond / second) numerator = meter.
	self assert: (meterOverSecond / second) denominator = (second * second).
	self assert: (meterOverSecond / kelvin) numerator = meter.
	self assert: (meterOverSecond / kelvin) denominator = (second * kelvin).
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDividedByMultipliedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterOverSecond / (meter * second)) numerator = NullUnit new.
	self assert: (meterOverSecond / (meter * second)) denominator = (second * second).
	self assert: (meterOverSecond / (kelvin * liter)) numerator = meter.
	self assert: (meterOverSecond / (kelvin * liter)) denominator = (second * kelvin * liter)
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testDividedByNullUnit

	self assert: (meterOverSecond / NullUnit new) = meterOverSecond.
! !

!DividedUnitTest methodsFor: 'test comparing'!
testEqualDividedUnit

	| kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.
	liter :=  BaseUnit named: 'liter'.
	
	self assert: meterOverSecond = meterOverSecond.
	self assert: meterOverSecond = (meter / second).

	self deny: meterOverSecond = (meter / kelvin).
	self deny: meterOverSecond = (meter / second / kelvin).
	self deny: meterOverSecond = (kelvin / liter)! !

!DividedUnitTest methodsFor: 'test comparing'!
testEqualMultipliedUnit

	self deny: meterOverSecond = (meter * second)! !

!DividedUnitTest methodsFor: 'test comparing'!
testEqualNullUnit

	self deny: meterOverSecond = NullUnit new! !

!DividedUnitTest methodsFor: 'test comparing'!
testEqualSimpleUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	self deny: meterOverSecond = kelvin! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:23'!
testFloatDividedByUnit

	| secondOverMeter |
	secondOverMeter := meterOverSecond reciprocal.
	
	self assert: (5.5 / meterOverSecond) = (secondOverMeter with: 5.5).
	self assert: (5.5 / meterOverSecond) numerator = (second with: 5.5 numerator).
	self assert: (5.5 / meterOverSecond) denominator = (meter with: 5.5 denominator)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:22'!
testFloatDividedByUnitTwice

	| secondOverMeter kelvin |
	secondOverMeter := meterOverSecond reciprocal.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5.5 / kelvin / meterOverSecond) = (secondOverMeter * (NullUnit new / kelvin) with: 5.5).
	self assert: (5.5 / kelvin / meterOverSecond) numerator = (second with: 5.5 numerator).
	self assert: (5.5 / kelvin / meterOverSecond) denominator = (kelvin * meter with: 5.5 denominator)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:22'!
testFloatMultipliedByUnit

	self assert: (5.5 * meterOverSecond) = (meterOverSecond with: 5.5).
	self assert: (5.5 * meterOverSecond) numerator = (meter with: 5.5 numerator).
	self assert: (5.5 * meterOverSecond) denominator = (second with: 5.5 denominator)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:21'!
testFloatMultipliedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5.5 * kelvin * meterOverSecond) = (kelvin * meterOverSecond with: 5.5).
	self assert: (5.5 * kelvin * meterOverSecond) numerator = (kelvin * meter with: 5.5 numerator).
	self assert: (5.5 * kelvin * meterOverSecond) denominator = (second with: 5.5 denominator)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:20'!
testIntegerDividedByUnit

	| secondOverMeter |
	secondOverMeter := meterOverSecond reciprocal.
	
	self assert: (5 / meterOverSecond) = (secondOverMeter with: 5).
	self assert: (5 / meterOverSecond) numerator = (second with: 5).
	self assert: (5 / meterOverSecond) denominator = (meter with: 1).
	! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:20'!
testIntegerDividedByUnitTwice

	| secondOverMeter kelvin |
	secondOverMeter := meterOverSecond reciprocal.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5 / kelvin / meterOverSecond) = (secondOverMeter * (NullUnit new / kelvin) with: 5).
	self assert: (5 / kelvin / meterOverSecond) numerator = (second with: 5).
	self assert: (5 / kelvin / meterOverSecond) denominator = (kelvin * meter with: 1).
	
! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:22'!
testIntegerMultipliedByUnit

	self assert: (5 * meterOverSecond) = (meterOverSecond with: 5).
	self assert: (5 * meterOverSecond) numerator = (meter with: 5).
	self assert: (5 * meterOverSecond) denominator = (second with: 1).
! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:22'!
testIntegerMultipliedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5 * kelvin * meterOverSecond) = (kelvin * meterOverSecond with: 5).
	self assert: (5 * kelvin * meterOverSecond) numerator = (kelvin * meter with: 5).
	self assert: (5 * kelvin * meterOverSecond) denominator = (second with: 1).
	
! !

!DividedUnitTest methodsFor: 'test measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
testMeasureCreation

	self assert: (meterOverSecond with: 10) = (SimpleMeasure amount: 10 unit: meterOverSecond)! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByDividedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterOverSecond * meterOverSecond) numerator = (meter * meter).
	self assert: (meterOverSecond * meterOverSecond) denominator= (second * second).
	self assert: (meterOverSecond * (second / meter)) = NullUnit new.
	self assert: (meterOverSecond * (kelvin / liter)) numerator = (meter * kelvin).
	self assert: (meterOverSecond * (kelvin / liter)) denominator = (second * liter)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:19'!
testMultiplyByFloat

	self assert: (meterOverSecond * 5) = (meterOverSecond with: 5).
	self assert: (meterOverSecond * 5) numerator = (meter with: 5).
	self assert: (meterOverSecond * 5) denominator = (second with: 1).
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByInfinity

	self assert: meterOverSecond * Infinity = (meterOverSecond with: Infinity).
	self assert: Infinity * meterOverSecond = (meterOverSecond with: Infinity).
	self assert: (meterOverSecond * Infinity) numerator = (meter with: Infinity).
	self assert: (meterOverSecond * Infinity) denominator = (second with: 1)! !

!DividedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:19'!
testMultiplyByInteger

	self assert: (meterOverSecond * 5) = (meterOverSecond with: 5).
	self assert: (meterOverSecond * 5) numerator = (meter with: 5).
	self assert: (meterOverSecond * 5) denominator = (second with: 1).
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMinusInfinity

	self assert: meterOverSecond * MinusInfinity = (meterOverSecond with: MinusInfinity).
	self assert: MinusInfinity * meterOverSecond = (meterOverSecond with: MinusInfinity).
	self assert: (meterOverSecond * MinusInfinity) numerator = (meter with: MinusInfinity).
	self assert: (meterOverSecond * MinusInfinity) denominator = (second with: 1)! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMultipliedUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meterOverSecond * (meter * second))= (meter * meter).
	self assert: (meterOverSecond * (kelvin * kelvin)) numerator = (meter * kelvin * kelvin).
	self assert: (meterOverSecond * (kelvin * kelvin)) denominator = second
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNullUnit

	self assert: (meterOverSecond * NullUnit new) = meterOverSecond.
! !

!DividedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyBySimpleUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meterOverSecond * second) = meter.
	self assert: (meterOverSecond * meter) numerator = (meter * meter).
	self assert: (meterOverSecond * meter) denominator = second.

	self assert: (meterOverSecond * kelvin) numerator = (meter * kelvin).
	self assert: (meterOverSecond * kelvin) denominator = second! !

!DividedUnitTest methodsFor: 'test accessing'!
testName

	self assert: meterOverSecond name = 'meter/second'! !

!DividedUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: meterOverSecond nameForMany = 'meters/seconds'! !

!DividedUnitTest methodsFor: 'test accessing'!
testNameForOne

	self assert: meterOverSecond name = 'meter/second'! !

!DividedUnitTest methodsFor: 'test accessing'!
testNothingAmount

	self assert: meterOverSecond nothingAmount = 0! !

!DividedUnitTest methodsFor: 'test accessing'!
testNullMeasure

	self assert: meterOverSecond nullMeasure amount = 0.
	self assert: meterOverSecond nullMeasure unit = meterOverSecond.
! !

!DividedUnitTest methodsFor: 'test accessing'!
testNumerator

	self assert: meterOverSecond numerator = meter! !

!DividedUnitTest methodsFor: 'test accessing'!
testReciprocal

	| secondOverMeter |
	secondOverMeter := second / meter.
	self assert: meterOverSecond reciprocal = secondOverMeter! !

!DividedUnitTest methodsFor: 'test querying'!
testSameDomainAsDividedUnit

	self assert: (meterOverSecond sameDomainAs: meterOverSecond).
	self deny: (meterOverSecond sameDomainAs: (second / meter))
	
	! !

!DividedUnitTest methodsFor: 'test querying'!
testSameDomainAsMultipliedUnit

	self deny: (meterOverSecond sameDomainAs: (meter * second))! !

!DividedUnitTest methodsFor: 'test querying'!
testSameDomainAsNullUnit

	self deny: (meterOverSecond sameDomainAs: NullUnit new)
	
	! !

!DividedUnitTest methodsFor: 'test querying'!
testSameDomainAsSameSimpleUnit

	self deny: (meterOverSecond sameDomainAs: meter).
	
	
	
! !

!DividedUnitTest methodsFor: 'test accessing'!
testSign

	self assert: meterOverSecond sign = 'm/s'! !

!EvaluationTest methodsFor: 'test support'!
assertAllTestShouldPassFor: aMessageName

	self shouldPass: self genericTestsMessageNames for: aMessageName! !

!EvaluationTest methodsFor: 'accessing'!
genericTestsMessageNames

	^(self class selectors select: [:aSelector | 'performWith*' match: aSelector])
		asOrderedCollection! !

!EvaluationTest methodsFor: 'accessing'!
messageName: aMessageName

	messageName := aMessageName

	! !

!EvaluationTest methodsFor: 'generic tests' stamp: 'HAW 3/25/2017 20:24:29'!
performWithCompoundMeasureWithFormula

	self assert: ((self tenDollars + self tenPesos) perform: messageName with: formulaOfTenPesos) value = 
		((self tenDollars + self tenPesos) value perform: messageName with:formulaOfTenPesos value )! !

!EvaluationTest methodsFor: 'generic tests' stamp: 'SeanTAllen 11/26/2009 12:40'!
performWithFloatWithFormula

	self assert: (1.01 perform: messageName with: formulaOfTenPesos) value =
		(1.01 value perform: messageName with: formulaOfTenPesos value)
	! !

!EvaluationTest methodsFor: 'generic tests' stamp: 'HAW 3/25/2017 20:25:10'!
performWithFormulaWithCompoundMeasure

	self assert: (formulaOfTenPesos perform: messageName with: (self tenDollars + self tenPesos)) value = 
		(formulaOfTenPesos value perform: messageName with: (self tenDollars + self tenPesos) value)! !

!EvaluationTest methodsFor: 'generic tests' stamp: 'SeanTAllen 11/26/2009 12:41'!
performWithFormulaWithFloat

	self assert: (formulaOfTenPesos perform: messageName with: 1.01) value = 
		(formulaOfTenPesos value perform: messageName with: 1.01 value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithFormulaWithFraction

	self assert: (formulaOfTenPesos perform: messageName with: (1/3)) value = 
		(formulaOfTenPesos value perform: messageName with: (1/3) value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithFormulaWithInteger

	self assert: (formulaOfTenPesos perform: messageName with: 1) value = 
		(formulaOfTenPesos value perform: messageName with: 1 value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithFormulaWithMeasure

	self assert: (formulaOfTenPesos perform: messageName with: self twentyPesos) value = 
		(formulaOfTenPesos value perform: messageName with: self twentyPesos value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithFormulas

	self assert: (formulaOfTenPesos perform: messageName with: formulaOfTwentyPesos) value = 
		(formulaOfTenPesos value perform: messageName with: formulaOfTwentyPesos value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithFractionWithFormula

	self assert: (1/3 perform: messageName with: formulaOfTenPesos) value = 
		((1/3) value perform: messageName with: formulaOfTenPesos value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithIntegerWithFormula

	self assert: (1 perform: messageName with: formulaOfTenPesos) value = 
		(1 value perform: messageName with: formulaOfTenPesos value)! !

!EvaluationTest methodsFor: 'generic tests'!
performWithMeasureWithFormula

	self assert: (self twentyPesos perform: messageName with: formulaOfTenPesos) value = 
		(self twentyPesos value perform: messageName with: formulaOfTenPesos value)! !

!EvaluationTest methodsFor: 'initialization'!
setUp
	
	peso := BaseUnit named: 'Peso'.
	dollar := BaseUnit named: 'Dollar'.
	formulaOfTenPesos := DummyEvaluation of: self tenPesos.
	formulaOfTwentyPesos := DummyEvaluation of: self twentyPesos! !

!EvaluationTest methodsFor: 'test support'!
shouldFail: aTestsToFail for: aMessageName

	messageName := aMessageName.
	aTestsToFail do: [:aTest |
		self 
			should: [self perform: aTest]
			raise: InvalidOperationException
			withExceptionDo: [ :anException | 
				self assert: anException description notNil.
				self assert: anException operationName notNil.
				(anException isKindOf: InvalidUnaryOperationException) 
					ifTrue: [self assert: anException operand notNil].
				(anException isKindOf: InvalidBinaryOperationException) 
					ifTrue: [
						self assert: anException leftOperand notNil.
						self assert: anException rightOperand notNil]]]! !

!EvaluationTest methodsFor: 'test support'!
shouldFail: testsToFail shouldPassRestFor: aMessageName

	| testToPass |
	
	testToPass := self genericTestsMessageNames.
	testToPass removeAll: testsToFail.
	self shouldPass: testToPass for: aMessageName.
	self shouldFail: testsToFail for: aMessageName! !

!EvaluationTest methodsFor: 'test support'!
shouldPass: testsToPass for: aMessageName

	messageName := aMessageName.
	testsToPass do: [ :aTestMessageName | self perform: aTestMessageName ]! !

!EvaluationTest methodsFor: 'accessing'!
tenDollars
	
	^dollar with: 10! !

!EvaluationTest methodsFor: 'accessing'!
tenPesos

	^peso with: 10! !

!EvaluationTest methodsFor: 'testing'!
testAdd

	self assertAllTestShouldPassFor: #+! !

!EvaluationTest methodsFor: 'testing'!
testDivide

	self assertAllTestShouldPassFor: #/! !

!EvaluationTest methodsFor: 'testing' stamp: 'HAW 3/25/2017 20:29:40'!
testIsCompoundMeasure

	self deny: formulaOfTenPesos isCompoundMeasure.
	self assert: (DummyEvaluation of: (peso with: 1) + (dollar with: 1)) isCompoundMeasure! !

!EvaluationTest methodsFor: 'testing' stamp: 'HAW 3/25/2017 20:25:28'!
testModulo

	| testsToFail |

	testsToFail := #(performWithFormulaWithCompoundMeasure).
	self shouldFail: testsToFail shouldPassRestFor: #//! !

!EvaluationTest methodsFor: 'testing'!
testMultiply

	self assertAllTestShouldPassFor: #*! !

!EvaluationTest methodsFor: 'testing'!
testNegated

	self assert: formulaOfTenPesos negated value = formulaOfTenPesos value negated.
	self assert: formulaOfTenPesos negated negated value = formulaOfTenPesos value! !

!EvaluationTest methodsFor: 'testing' stamp: 'HAW 3/25/2017 20:25:58'!
testRemainder

	| testsToFail |
	
	testsToFail := #(
		#performWithFormulaWithCompoundMeasure
		#performWithCompoundMeasureWithFormula		
		).	
	self shouldFail: testsToFail shouldPassRestFor: #\\! !

!EvaluationTest methodsFor: 'testing'!
testSubtract

	self assertAllTestShouldPassFor: #-! !

!EvaluationTest methodsFor: 'testing'!
testTruncated

	| formula |
	
	formula := DummyEvaluation of: (peso with: 1.3).
	self assert: formula truncated = (peso with: 1)! !

!EvaluationTest methodsFor: 'accessing'!
twentyPesos

	^peso with: 20! !

!InfinityClassTest methodsFor: 'initialization'!
setUp

	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testAdd

	self assert: Infinity + Infinity = Infinity.
	self assert: 9 + Infinity = Infinity.
	self assert: Infinity + 9 = Infinity.
	self
		should: [Infinity + MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Sum operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity + Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Sum operation is indeterminate between Minus Infinity and Infinity']! !

!InfinityClassTest methodsFor: 'test accessing'!
testAmount

	self assert: Infinity = Infinity! !

!InfinityClassTest methodsFor: 'test bag creation' stamp: 'HAW 3/25/2017 19:57:05'!
testBagCreationWithNumber

	| bag otherBag |

	bag := 10 + (Infinity * second).
	otherBag := (Infinity * meter) + 10.

	self assert: bag isCompoundMeasure.
	self assert: (bag measures includes: 10).
	self assert: (bag measures includes: Infinity * second).

	self assert: otherBag isCompoundMeasure.
	self assert: (otherBag measures includes: Infinity * meter).
	self assert: (otherBag measures includes: 10)! !

!InfinityClassTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: Infinity baseUnit = NullUnit new! !

!InfinityClassTest methodsFor: 'test magnitude protocol'!
testBetweenAnd

	self assert: (Infinity between: 1 and: Infinity).
	self deny: (Infinity between: 1 and: 10)! !

!InfinityClassTest methodsFor: 'test bag creation' stamp: 'HAW 3/25/2017 20:19:43'!
testCompoundMeasureCreationWithMeasure

	| bag |

	bag := (10 * meter) + (Infinity * second).

	self assert: bag isCompoundMeasure.
	self assert: (bag measures includes: 10 * meter).
	self assert: (bag measures includes: Infinity * second)! !

!InfinityClassTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	self assert: Infinity convertAmountToBaseUnit = 0! !

!InfinityClassTest methodsFor: 'test converting'!
testConvertTo

	| unit |

	unit := BaseUnit named: 'peso'.
	self
		should: [Infinity convertTo: unit]
		raise: CanNotConvertMeasureException
		withExceptionDo: [:anException |
			self assert: anException description = 'It is not possible to convert Infinity to peso']! !

!InfinityClassTest methodsFor: 'test converting'!
testConvertToBaseUnit

	self assert: Infinity convertToBaseUnit = Infinity! !

!InfinityClassTest methodsFor: 'test accessing'!
testDenominator

	self assert: Infinity denominator = 1! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testDivide

	self
		should: [Infinity / Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and Infinity'].
	self
		should: [Infinity / MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity / Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and Infinity'].
	self assert: 9 / Infinity = 0.
	self
		should: [Infinity / 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and 9']! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testDivideByUnit

	self assert: (Infinity divideByUnit: meter) = (0 * meter)! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:37:07'!
testDivideMeasure

	self assert: (Infinity divideSimpleMeasure: meter * 5) = 0! !

!InfinityClassTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 20:30:16'!
testEqualsCompoundMeasure

	| measureBag |

	measureBag := ((BaseUnit named: 'peso') with: 5) + ((BaseUnit named: 'dollar') with: 5).
	self assert: (Infinity equalsCompoundMeasure: Infinity).
	self deny: (Infinity equalsCompoundMeasure: measureBag)! !

!InfinityClassTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:50:18'!
testEqualsMeasure

	| measure |

	measure := (BaseUnit named: 'peso') with: 5.
	self assert: (Infinity equalsSimpleMeasure: Infinity).
	self deny: (Infinity equalsSimpleMeasure: measure)! !

!InfinityClassTest methodsFor: 'test testing' stamp: 'HAW 3/25/2017 19:57:28'!
testIsCompoundMeasure

	self deny: Infinity isCompoundMeasure! !

!InfinityClassTest methodsFor: 'test testing'!
testIsNothing

	self deny: Infinity isNothing! !

!InfinityClassTest methodsFor: 'test magnitude protocol' stamp: 'HernanWilkinson 9/9/2009 17:00'!
testMax

	self assert: (Infinity max: 5) = Infinity.
	self assert: (5 max: Infinity) = Infinity.
	self assert: (Infinity max: MinusInfinity) = Infinity.
	self assert: (MinusInfinity max: Infinity) = Infinity.
	self assert: (Infinity max: Infinity) = Infinity! !

!InfinityClassTest methodsFor: 'test magnitude protocol'!
testMin

	self assert: (Infinity min: 5) = 5.
	self assert: (5 min: Infinity) = 5.
	self assert: (Infinity min: MinusInfinity) = MinusInfinity.
	self assert: (MinusInfinity min: Infinity) = MinusInfinity.
	self assert: (Infinity min: Infinity) = Infinity! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'mx 3/26/2007 21:57'!
testModulo

	self
		should: [Infinity // Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and Infinity'].
	self
		should: [Infinity // MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity // Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and Infinity'].

	self assert: 9 // Infinity = 0.

	self
		should: [Infinity // 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and 9']! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:40:38'!
testModuloMeasure

	self assert: (Infinity moduloSimpleMeasure: 5 * meter) = 0! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testMultiplication

	self assert: Infinity * Infinity = Infinity.
	self assert: 9 * Infinity = Infinity.
	self assert: -9 * Infinity = MinusInfinity.
	self assert: Infinity * 9 = Infinity.
	self assert: Infinity * -9 = MinusInfinity.
	self assert: Infinity * MinusInfinity = MinusInfinity.
	self assert: MinusInfinity * Infinity = MinusInfinity.

	self
		should: [0 * Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity'].

	self
		should: [Infinity * 0]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity']! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testMultiplyByUnit

	self assert: (Infinity multiplyByUnit: meter) = (Infinity * meter)! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:43:39'!
testMultiplyMeasure

	self assert: (Infinity multiplySimpleMeasure: 5 * meter) = Infinity! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testNegated

	self assert: Infinity negated = MinusInfinity! !

!InfinityClassTest methodsFor: 'test testing'!
testNegative

	self deny: Infinity negative! !

!InfinityClassTest methodsFor: 'test accessing'!
testNumerator

	self assert: Infinity numerator = Infinity! !

!InfinityClassTest methodsFor: 'test testing'!
testPositive

	self assert: Infinity positive! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testRemainder

	self
		should: [Infinity \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and Infinity'].
	self
		should: [Infinity \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity \\ 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and 9'].
	self
		should: [9 \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity']! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:47:33'!
testRemainderMeasure

	self
		should: [Infinity remainderSimpleMeasure: 5 * meter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity']! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testRoundTo

	self assert: (Infinity roundTo: 2) = Infinity! !

!InfinityClassTest methodsFor: 'test testing'!
testSameDomainAs

	self assert: (Infinity sameDomainAs: 1).
	self deny: (Infinity sameDomainAs: ((BaseUnit named: 'peso') with: 1))! !

!InfinityClassTest methodsFor: 'test testing'!
testSameUnitAs

	self assert: (Infinity sameUnitAs: 1).
	self deny: (Infinity sameUnitAs: ((BaseUnit named: 'peso') with: 1))! !

!InfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'mx 3/28/2007 21:55'!
testSubtract

	self
		should: [Infinity - Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Infinity and Infinity'].
	self
		should: [Infinity - MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity - Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Minus Infinity and Infinity'].
	self assert: 9 - Infinity = MinusInfinity.
	self assert: Infinity - 9 = Infinity! !

!InfinityClassTest methodsFor: 'test interval protocol'!
testToBy

	| interval |

	interval := Infinity to: Infinity by: 5.
	self
		assert: interval from = Infinity;
		assert: interval to = Infinity;
		assert: interval size = Infinity;
		assert: interval by = 5! !

!InfinityClassTest methodsFor: 'test interval protocol'!
testToFromFixed

	| interval |

	interval := 5 toInfinity.
	self
		assert: interval from = 5;
		assert: interval to = Infinity;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!InfinityClassTest methodsFor: 'test interval protocol'!
testToInfinity

	| interval |

	interval := Infinity to: Infinity.
	self
		assert: interval from = Infinity;
		assert: interval to = Infinity;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!InfinityClassTest methodsFor: 'test interval protocol'!
testToToFixed

	| interval |

	interval := Infinity to: 5.
	self
		assert: interval from = Infinity;
		assert: interval to = 5;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!InfinityClassTest methodsFor: 'test arithmetic operations'!
testTruncated

	self assert: Infinity truncated = Infinity! !

!InfinityClassTest methodsFor: 'test accessing'!
testUnit

	self assert: Infinity unit = NullUnit new! !

!InfinityClassTest methodsFor: 'test accessing'!
testUnitNameOf

	| unit |

	unit := BaseUnit named: 'meter'.
	self assert: (Infinity unitNameOf: unit) = 'meters'! !

!MeasureConverterTest methodsFor: 'initialization'!
createUnits

	^UnitsTestResource current! !

!MeasureConverterTest methodsFor: 'accessing monetary units'!
dollar

	^units dollar! !

!MeasureConverterTest methodsFor: 'accessing monetary units'!
euro
	
	^units euro! !

!MeasureConverterTest methodsFor: 'initialization'!
initializeMoneyConverter

	moneyConverter := MeasureConverter on: self moneyConversionTable! !

!MeasureConverterTest methodsFor: 'initialization'!
initializeUnitRegistry

	units := self createUnits! !

!MeasureConverterTest methodsFor: 'initialization'!
moneyConversionTable

	| table |
	
	table := ConversionTable new.
	table measure: self threePesos isEquivalentTo: self oneDollar.
	table measure: self oneEuro isEquivalentTo: self onePointThreeDollars.
	
	^table! !

!MeasureConverterTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneDollar
	
	^SimpleMeasure amount: 1 unit: self dollar! !

!MeasureConverterTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneEuro
	
	^SimpleMeasure amount: 1 unit: self euro! !

!MeasureConverterTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
onePeso
	
	^SimpleMeasure amount: 1 unit: self peso! !

!MeasureConverterTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
onePointThreeDollars
	
	^SimpleMeasure amount: (13/10) unit: self dollar
! !

!MeasureConverterTest methodsFor: 'accessing monetary units'!
peso

	^units peso! !

!MeasureConverterTest methodsFor: 'initialization'!
setUp

	self initializeUnitRegistry.
	self initializeMoneyConverter! !

!MeasureConverterTest methodsFor: 'test'!
testCanConvertTo

	self assert: (moneyConverter canConvert: self onePeso to: self dollar)! !

!MeasureConverterTest methodsFor: 'testing' stamp: 'HAW 3/25/2017 20:29:22'!
testCompoundMeasureConversion

	self assert: (moneyConverter convert: (self threePesos + self oneDollar) to: self dollar) = (self oneDollar * 2).
	self assert: (moneyConverter convert: (self threePesos + self oneDollar) to: self peso) = (self threePesos * 2).
	self assert: (moneyConverter convert: (self threePesos + self oneDollar + self oneEuro) to: self dollar) = ((self oneDollar * 2) + (self oneDollar * (13/10)))! !

!MeasureConverterTest methodsFor: 'test'!
testConvertToUsing

	self assert: (moneyConverter findPathAndConvert: self onePeso to: self onePeso) = self onePeso.
	self assert: (moneyConverter findPathAndConvert: self threePesos to: self onePeso) = self threePesos! !

!MeasureConverterTest methodsFor: 'testing'!
testDefaultGraphPathFinder

	self assert: MeasureConverter defaultGraphPathFinder = GraphPathFinder! !

!MeasureConverterTest methodsFor: 'testing' stamp: 'GabrielOmarCotelli 9/18/2009 20:56'!
testDirectSearching

	self assert: (moneyConverter convert: self onePeso to: self dollar) = (self dollar with: 1/3).
	self assert: (moneyConverter convert: self oneEuro to: self dollar) = (self dollar with: 13/10)! !

!MeasureConverterTest methodsFor: 'testing'!
testIndirectSearching

	self assert: (moneyConverter convert: self onePeso to: self euro) = (self euro with: 10/39).
	self assert: (moneyConverter convert: self oneEuro to: self peso) = (self peso with: 39/10)! !

!MeasureConverterTest methodsFor: 'testing'!
testInvalidConversion

	| patacon |
	
	patacon := BaseUnit named: 'patacon'.
	
	self 
		should: [ moneyConverter convert: self onePeso to: patacon ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = self onePeso.
			self assert: anException targetUnit = patacon.
			self assert: anException description notNil]! !

!MeasureConverterTest methodsFor: 'testing'!
testSameDomainConversion

	| cents |
	
	cents := ProportionalDerivedUnit baseUnit: self peso conversionFactor: 1/100 named: 'cent'.
	
	self assert: (moneyConverter convert: self onePeso to: self peso) = self onePeso.
	self assert: (moneyConverter convert: self onePeso to: cents) = (cents with: 100)! !

!MeasureConverterTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
threePesos

	^SimpleMeasure amount: 3 unit: self peso! !

!MeasureConverterTest class methodsFor: 'resources'!
resources

	^Array with: UnitsTestResource! !

!MinusInfinityClassTest methodsFor: 'initialization'!
setUp

	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testAdd

	self assert: MinusInfinity + MinusInfinity = MinusInfinity.
	self assert: 9 + MinusInfinity = MinusInfinity.
	self assert: MinusInfinity + 9 = MinusInfinity.
	self
		should: [MinusInfinity + Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Sum operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity + MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Sum operation is indeterminate between Infinity and Minus Infinity']! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testAmount

	self assert: MinusInfinity = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test bag creation' stamp: 'HAW 3/25/2017 19:57:43'!
testBagCreationWithNumber

	| bag otherBag |

	bag := 10 + (MinusInfinity * second).
	otherBag := (MinusInfinity * meter) + 10.

	self assert: bag isCompoundMeasure.
	self assert: (bag measures includes: 10).
	self assert: (bag measures includes: MinusInfinity * second).

	self assert: otherBag isCompoundMeasure.
	self assert: (otherBag measures includes: MinusInfinity * meter).
	self assert: (otherBag measures includes: 10)! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: MinusInfinity baseUnit = NullUnit new! !

!MinusInfinityClassTest methodsFor: 'test magnitude protocol' stamp: 'HernanWilkinson 9/9/2009 16:27'!
testBetweenAnd


	self assert: (MinusInfinity between: MinusInfinity and: 1).
	self assert: (MinusInfinity between: MinusInfinity and: MinusInfinity).
	self deny: (MinusInfinity between: 1 and: 10)! !

!MinusInfinityClassTest methodsFor: 'test bag creation' stamp: 'HAW 3/25/2017 20:19:53'!
testCompoundMeasureCreationWithMeasure

	| bag |

	bag := (10 * meter) + (MinusInfinity * second).

	self assert: bag isCompoundMeasure.
	self assert: (bag measures includes: 10 * meter).
	self assert: (bag measures includes: MinusInfinity * second)! !

!MinusInfinityClassTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	self assert: MinusInfinity convertAmountToBaseUnit = 0! !

!MinusInfinityClassTest methodsFor: 'test converting'!
testConvertTo

	| unit |

	unit := BaseUnit named: 'peso'.
	self
		should: [MinusInfinity convertTo: unit]
		raise: CanNotConvertMeasureException
		withExceptionDo: [:anException |
			self assert:
				anException description = 'It is not possible to convert Minus Infinity to peso']! !

!MinusInfinityClassTest methodsFor: 'test converting'!
testConvertToBaseUnit

	self assert: MinusInfinity convertToBaseUnit = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testDenominator

	self assert: MinusInfinity denominator = 1! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testDivide

	self
		should: [MinusInfinity / MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and Minus Infinity'].
	self
		should: [MinusInfinity / Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity / MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and Minus Infinity'].
	self assert: 9 / MinusInfinity = 0.
	self
		should: [MinusInfinity / 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and 9']! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testDivideByUnit

	self assert: (MinusInfinity divideByUnit: meter) = (0 * meter)! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:37:11'!
testDivideMeasure

	self assert: (MinusInfinity divideSimpleMeasure: meter * 5) = 0! !

!MinusInfinityClassTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 20:30:23'!
testEqualsCompoundMeasure

	| measureBag |

	measureBag := ((BaseUnit named: 'peso') with: 5) + ((BaseUnit named: 'dollar') with: 5).
	self assert: (MinusInfinity equalsCompoundMeasure: MinusInfinity).
	self deny: (MinusInfinity equalsCompoundMeasure: measureBag)! !

!MinusInfinityClassTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:50:25'!
testEqualsMeasure

	| measure |

	measure := (BaseUnit named: 'peso') with: 5.
	self assert: (MinusInfinity equalsSimpleMeasure: MinusInfinity).
	self deny: (MinusInfinity equalsSimpleMeasure: measure)! !

!MinusInfinityClassTest methodsFor: 'test testing' stamp: 'HAW 3/25/2017 20:29:49'!
testIsCompoundMeasure

	self deny: MinusInfinity isCompoundMeasure! !

!MinusInfinityClassTest methodsFor: 'test testing'!
testIsNothing

	self deny: MinusInfinity isNothing! !

!MinusInfinityClassTest methodsFor: 'test magnitude protocol'!
testMax

	self assert: (MinusInfinity max: 5) = 5.
	self assert: (5 max: MinusInfinity) = 5.
	self assert: (Infinity max: MinusInfinity) = Infinity.
	self assert: (MinusInfinity max: Infinity) = Infinity.
	self assert: (MinusInfinity max: MinusInfinity) = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test magnitude protocol'!
testMin

	self assert: (MinusInfinity min: 5) = MinusInfinity.
	self assert: (5 min: MinusInfinity) = MinusInfinity.
	self assert: (Infinity min: MinusInfinity) = MinusInfinity.
	self assert: (MinusInfinity min: Infinity) = MinusInfinity.
	self assert: (MinusInfinity min: MinusInfinity) = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'mx 3/26/2007 21:57'!
testModulo

	self
		should: [MinusInfinity // MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and Minus Infinity'].
	self
		should: [MinusInfinity // Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity // MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and Minus Infinity'].
	self assert: 9 // MinusInfinity = 0.
	self
		should: [MinusInfinity // 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and 9']! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:40:42'!
testModuloMeasure

	self assert: (MinusInfinity moduloSimpleMeasure: 5 * meter) = 0! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testMultiplication

	self assert: MinusInfinity * MinusInfinity = Infinity.
	self assert: 9 * MinusInfinity = MinusInfinity.
	self assert: -9 * MinusInfinity = Infinity.
	self assert: MinusInfinity * 9 = MinusInfinity.
	self assert: MinusInfinity * -9 = Infinity.
	self assert: MinusInfinity * Infinity = MinusInfinity.
	self assert: Infinity * MinusInfinity = MinusInfinity.

	self
		should: [0 * MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity'].

	self
		should: [MinusInfinity * 0]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity']! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testMultiplyByUnit

	self assert: (MinusInfinity multiplyByUnit: meter) = (MinusInfinity * meter)! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:43:42'!
testMultiplyMeasure

	self assert: (MinusInfinity multiplySimpleMeasure: 5 * meter) = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testNegated

	self assert: MinusInfinity negated = Infinity! !

!MinusInfinityClassTest methodsFor: 'test testing'!
testNegative

	self deny: MinusInfinity negative! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testNumerator

	self assert: MinusInfinity numerator = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test testing'!
testPositive

	self assert: MinusInfinity positive! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testRemainder

	self
		should: [MinusInfinity \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and Minus Infinity'].
	self
		should: [MinusInfinity \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and Minus Infinity'].
	self
		should: [MinusInfinity \\ 9]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and 9'].
	self
		should: [9 \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity']! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'HAW 3/25/2017 19:47:37'!
testRemainderMeasure

	self
		should: [MinusInfinity remainderSimpleMeasure: 5 * meter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity']! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testRoundTo

	self assert: (MinusInfinity roundTo: 2) = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test testing'!
testSameDomainAs

	self assert: (MinusInfinity sameDomainAs: 1).
	self deny: (MinusInfinity sameDomainAs: ((BaseUnit named: 'peso') with: 1))! !

!MinusInfinityClassTest methodsFor: 'test testing'!
testSameUnitAs

	self assert: (MinusInfinity sameUnitAs: 1).
	self deny: (MinusInfinity sameUnitAs: ((BaseUnit named: 'peso') with: 1))! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations' stamp: 'mx 3/28/2007 21:57'!
testSubtract

	self
		should: [MinusInfinity - MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Minus Infinity and Minus Infinity'].
	self
		should: [MinusInfinity - Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Minus Infinity and Infinity'].
	self
		should: [Infinity - MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Subtract operation is indeterminate between Infinity and Minus Infinity'].
	self assert: 9 - MinusInfinity = Infinity.
	self assert: MinusInfinity - 9 = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test interval protocol' stamp: 'SeanTAllen 11/27/2009 14:14'!
testToBy
 
	| interval |

	interval := MinusInfinity to: MinusInfinity by: 5.
	self
		assert: interval from = MinusInfinity;
		assert: interval to = MinusInfinity;
		assert: interval size = Infinity;
		assert: interval by = 5! !

!MinusInfinityClassTest methodsFor: 'test interval protocol'!
testToFromFixed

	| interval |

	interval := 5 toMinusInfinity.
	self
		assert: interval from = 5;
		assert: interval to = MinusInfinity;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!MinusInfinityClassTest methodsFor: 'test interval protocol'!
testToInfinity

	| interval |

	interval := MinusInfinity to: MinusInfinity.
	self
		assert: interval from = MinusInfinity;
		assert: interval to = MinusInfinity;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!MinusInfinityClassTest methodsFor: 'test interval protocol'!
testToToFixed

	| interval |

	interval := MinusInfinity to: 5.
	self
		assert: interval from = MinusInfinity;
		assert: interval to = 5;
		assert: interval size = Infinity;
		assert: interval by = 1! !

!MinusInfinityClassTest methodsFor: 'test arithmetic operations'!
testTruncated

	self assert: MinusInfinity truncated = MinusInfinity! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testUnit

	self assert: MinusInfinity unit = NullUnit new! !

!MinusInfinityClassTest methodsFor: 'test accessing'!
testUnitNameOf

	| unit |

	unit := BaseUnit named: 'meter'.
	self assert: (MinusInfinity unitNameOf: unit) = 'meters'! !

!MultipliedUnitTest methodsFor: 'initialization'!
setUp

	meter := BaseUnit named: 'meter' sign: 'm'.
	second := BaseUnit named: 'second' sign: 's'.
	meterBySecond := meter * second! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: (meterBySecond baseUnit) = meterBySecond! !

!MultipliedUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	self assert: (meterBySecond convertAmountToBaseUnit: 0) = 0.
	self assert: (meterBySecond convertAmountToBaseUnit: 10) = 10! !

!MultipliedUnitTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	| measure |
	
	measure := SimpleMeasure amount: 10 unit: meterBySecond.
	self assert: (meterBySecond convertToBaseUnit: measure) == measure.
	
	
! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testDenominator

	self assert: meterBySecond denominator = NullUnit new! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDividedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterBySecond / (meter / second)) = (second * second).
	self assert: (meterBySecond / (second / meter)) = (meter * meter).
	self assert: (meterBySecond / (kelvin / liter)) numerator = (meter * second * liter).
	self assert: (meterBySecond / (kelvin / liter)) denominator = kelvin! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:21'!
testDivideByFloat

	self assert: (meterBySecond / 5.5) = (meterBySecond with: 1/5.5).
	self assert: (meterBySecond / 5.5) numerator = (meterBySecond with: (1/5.5) numerator).
	self assert: (meterBySecond / 5.5) denominator = (1/5.5) denominator! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 16:08'!
testDivideByInfinity
 
	self assert: meterBySecond / Infinity = (meterBySecond with: 0).
	self
		should: [Infinity / meterBySecond]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and meter.second'].
	self assert: (meterBySecond / Infinity) numerator = (meterBySecond with: 0).
	self assert: (meterBySecond / Infinity) denominator = 1! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:15'!
testDivideByInteger

	self assert: (meterBySecond / 5) = (meterBySecond with: 1/5).
	self assert: (meterBySecond / 5) numerator = (meterBySecond with: 1).
	self assert: (meterBySecond / 5) denominator = 5.
	
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMinusInfinity

	self assert: meterBySecond / MinusInfinity = (meterBySecond with: 0).
	self
		should: [MinusInfinity / meterBySecond]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and meter.second'].
	self assert: (meterBySecond / MinusInfinity) numerator = (meterBySecond with: 0).
	self assert: (meterBySecond / MinusInfinity) denominator = 1! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySimpleUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (meterBySecond / second) = meter.
	self assert: (meterBySecond / meter) = second.
	self assert: (meterBySecond / kelvin) numerator = meterBySecond.
	self assert: (meterBySecond / kelvin) denominator = kelvin! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testDividedByMultipliedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterBySecond / meterBySecond) = NullUnit new.
	self assert: (meterBySecond / (kelvin * liter)) numerator = meterBySecond.
	self assert: (meterBySecond / (kelvin * liter)) denominator = (kelvin * liter)! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testDividedByNullUnit

	self assert: (meterBySecond / NullUnit new) = meterBySecond.
! !

!MultipliedUnitTest methodsFor: 'test comparing'!
testEqualDividedUnit

	self deny: meterBySecond = (meter / second)! !

!MultipliedUnitTest methodsFor: 'test comparing'!
testEqualMultipliedUnit

	| kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.
	liter :=  BaseUnit named: 'liter'.
	
	self assert: meterBySecond = meterBySecond.
	self assert: meterBySecond = (second * meter).

	self deny: meterBySecond = (meter * kelvin).
	self deny: meterBySecond = (meter * second * kelvin).
	self deny: meterBySecond = (kelvin * liter)! !

!MultipliedUnitTest methodsFor: 'test comparing'!
testEqualNullUnit

	self deny: meterBySecond = NullUnit new! !

!MultipliedUnitTest methodsFor: 'test comparing'!
testEqualSimpleUnit

	| kelvin |
	
	kelvin := BaseUnit named: 'kelvin'.
	self deny: meterBySecond = kelvin! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:20'!
testFloatDividedByUnit

	self assert: (5.5 / meterBySecond) = (5.5 / (meterBySecond with: 1)).
	self assert: (5.5 / meterBySecond) numerator = 5.5 numerator.
	self assert: (5.5 / meterBySecond) denominator = (meterBySecond with: 5.5 denominator)! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:24'!
testFloatDividedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5.5 / kelvin / meterBySecond) = (5.5 / (kelvin * meterBySecond with: 1)).
	self assert: (5.5 / kelvin / meterBySecond) numerator = 5.5 numerator.
	self assert: (5.5 / kelvin / meterBySecond) denominator = (kelvin * meterBySecond with: 5.5 denominator)! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:23'!
testFloatMultipliedByUnit

	self assert: (5.5 * meterBySecond) = (meterBySecond with: 5.5).
	self assert: (5.5 * meterBySecond) numerator = (meterBySecond with: 5.5 numerator).
	self assert: (5.5 * meterBySecond) denominator = 5.5 denominator! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:23'!
testFloatMultipliedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.

	self assert: (5.5 * kelvin * meterBySecond) = (kelvin * meterBySecond with: 5.5).
	self assert: (5.5 * kelvin * meterBySecond) numerator = (kelvin * meterBySecond with: 5.5 numerator).
	self assert: (5.5 * kelvin * meterBySecond) denominator = 5.5 denominator! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:11'!
testIntegerDividedByUnit

	self assert: (5 / meterBySecond) = (5 / (meterBySecond with: 1)).
	self assert: (5 / meterBySecond) numerator = 5.
	self assert: (5 / meterBySecond) denominator = (meterBySecond with: 1).
	
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:11'!
testIntegerDividedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (5 / kelvin / meterBySecond) = (5 / (kelvin * meterBySecond with: 1)).
	self assert: (5 / kelvin / meterBySecond) numerator = 5.
	self assert: (5 / kelvin / meterBySecond) denominator = (kelvin * meterBySecond with: 1).
	
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:12'!
testIntegerMultipliedByUnit

	self assert: (5 * meterBySecond) = (meterBySecond with: 5).
	self assert: (5 * meterBySecond) numerator = (meterBySecond with: 5).
	self assert: (5 * meterBySecond) denominator = 1.
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:14'!
testIntegerMultipliedByUnitTwice

	| kelvin |
	kelvin := BaseUnit named: 'kelvin'.

	self assert: (5 * kelvin * meterBySecond) = (kelvin * meterBySecond with: 5).
	self assert: (5 * kelvin * meterBySecond) numerator = (kelvin * meterBySecond with: 5).
	self assert: (5 * kelvin * meterBySecond) denominator = 1.
	
	! !

!MultipliedUnitTest methodsFor: 'test measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
testMeasureCreation

	self assert: (meterBySecond with: 10) = (SimpleMeasure amount: 10 unit: meterBySecond)! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByDividedUnit

	|  kelvin liter |
	
	kelvin := BaseUnit named: 'kelvin'.	
	liter := BaseUnit named: 'liter'.	
	
	self assert: (meterBySecond * (meter / second)) = (meter * meter).
	self assert: (meterBySecond * (second / meter)) = (second * second).
	self assert: (meterBySecond * (kelvin / liter)) numerator = (meter * second * kelvin).
	self assert: (meterBySecond * (kelvin / liter)) denominator = liter! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/28/2009 11:20'!
testMultiplyByFloat

	self assert: (meterBySecond * 5.5) = (meterBySecond with: 5.5).
	self assert: (meterBySecond * 5.5) numerator = (meterBySecond with: 5.5 numerator).
	self assert: (meterBySecond * 5.5) denominator = 5.5 denominator! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByInfinity

	self assert: meterBySecond * Infinity = (meterBySecond with: Infinity).
	self assert: Infinity * meterBySecond = (meterBySecond with: Infinity).
	self assert: (meterBySecond * Infinity) numerator = (meterBySecond with: Infinity).
	self assert: (meterBySecond * Infinity) denominator = 1! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations' stamp: 'SeanTAllen 11/26/2009 12:15'!
testMultiplyByInteger

	self assert: (meterBySecond * 5) = (meterBySecond with: 5).
	self assert: (meterBySecond * 5) numerator = (meterBySecond with: 5).
	self assert: (meterBySecond * 5) denominator = 1.
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMinusInfinity

	self assert: meterBySecond * MinusInfinity = (meterBySecond with: MinusInfinity).
	self assert: MinusInfinity * meterBySecond = (meterBySecond with: MinusInfinity).
	self assert: (meterBySecond * MinusInfinity) numerator = (meterBySecond with: MinusInfinity).
	self assert: (meterBySecond * MinusInfinity) denominator = 1! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMultipliedUnit

	self assert: (meterBySecond * meterBySecond) factorsSize = 4.
	self assert: ((meterBySecond * meterBySecond) factors at: 1) = meter.
	self assert: ((meterBySecond * meterBySecond) factors at: 2) = second.
	self assert: ((meterBySecond * meterBySecond) factors at: 3) = meter.
	self assert: ((meterBySecond * meterBySecond) factors at: 4) = second! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNullUnit

	self assert: (meterBySecond * NullUnit new) = meterBySecond.
! !

!MultipliedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyBySimpleUnit

	self assert: (meterBySecond * second) factorsSize = 3.
	self assert: ((meterBySecond * second) factors at: 1) = meter.
	self assert: ((meterBySecond * second) factors at: 2) = second.
	self assert: ((meterBySecond * second) factors at: 3) = second! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testName

	self assert: meterBySecond name = 'meter.second'! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: meterBySecond nameForMany = 'meters.seconds'! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testNameForOne

	self assert: meterBySecond name = 'meter.second'! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testNothingAmount

	self assert: meterBySecond nothingAmount = 0.
! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testNullMeasure

	self assert: meterBySecond nullMeasure amount = 0.
	self assert: meterBySecond nullMeasure unit = meterBySecond.
! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testNumerator

	self assert: meterBySecond numerator = meterBySecond! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testReciprocal

	self assert: meterBySecond reciprocal = (NullUnit new / meterBySecond)! !

!MultipliedUnitTest methodsFor: 'test querying'!
testSameDomainAsDividedUnit

	self deny: (meterBySecond sameDomainAs: (meter / second))	
	! !

!MultipliedUnitTest methodsFor: 'test querying'!
testSameDomainAsMultipliedUnit

	| liter |

	liter := BaseUnit named: 'liter'.
	
	self assert: (meterBySecond sameDomainAs: meterBySecond).
	self deny: (meterBySecond sameDomainAs: (meter * liter)).
	self deny: (meterBySecond sameDomainAs: (liter * liter))
	
	! !

!MultipliedUnitTest methodsFor: 'test querying'!
testSameDomainAsNullUnit

	self deny: (meterBySecond sameDomainAs: NullUnit new)
	
	! !

!MultipliedUnitTest methodsFor: 'test querying'!
testSameDomainAsSameSimpleUnit

	| unit |
	
	unit := BaseUnit named: 'peso'.
	self deny: (meterBySecond sameDomainAs: unit).
	
	
	
! !

!MultipliedUnitTest methodsFor: 'test accessing'!
testSign

	self assert: meterBySecond sign = 'm.s'! !

!NotProportionalDerivedUnitTest methodsFor: 'initialization'!
setUp

	kelvin := BaseUnit named: 'kelvin'! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testBaseUnit

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit baseUnit = kelvin! !

!NotProportionalDerivedUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	| unit |
	
	unit :=  NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:celsius | celsius + (5463/20)] 
		reciprocalConversionBlock: [ :kelvins | kelvins - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: (unit convertAmountToBaseUnit: 0) = (5463/20).
	self assert: (unit convertAmountToBaseUnit: 100) = (7463/20)! !

!NotProportionalDerivedUnitTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	| unit measure |
	
	unit :=  NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:celsius | celsius + (5463/20)] 
		reciprocalConversionBlock: [ :kelvins | kelvins - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	measure := SimpleMeasure amount: 0 unit: unit.
	self assert: (unit convertToBaseUnit: measure) amount = (5463/20).
	self assert: (unit convertToBaseUnit: measure) unit = kelvin
	
	
! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testDenominator

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit denominator = NullUnit new! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testName

	self assert: ( NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius') name = 'celcius'! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius') nameForMany = 'celciuss'.
	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius' 
		sign: '¦Ç¬¨¦Ç¬ù') nameForMany = 'celciuss'.
	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		nameForOne: 'celcius'
		nameForMany: 'celcius'
		sign: '¦Ç¬¨¦Ç¬ù') nameForMany = 'celcius'! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNameForOne

	self assert: ( NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius') nameForOne = 'celcius'! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNothingAmount

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit nothingAmount = (-5463/20)
! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNullMeasure

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit nullMeasure amount = 0.
	self assert: unit nullMeasure unit = kelvin.
! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNumerator

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit numerator = unit! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testReciprocal

	| unit |
	
	unit := NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
		
	self assert: unit reciprocal = (NullUnit new / unit)
! !

!NotProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAs

	| unit metro |
	
	unit :=  NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:celsius | celsius + (5463/20)] 
		reciprocalConversionBlock: [ :kelvins | kelvins - (5463/20) ]
		named: 'celsius' 
		sign: '¦Ç¬¨¦Ç¬ù'.
	self assert: (unit sameDomainAs: kelvin).

	metro := BaseUnit named: 'metro'.
	self deny: (unit sameDomainAs: metro).
	self deny: (unit sameDomainAs: (ProportionalDerivedUnit baseUnit: metro conversionFactor: 1/100 named: 'centimetro')).
	self deny: (unit sameDomainAs: (
		NotProportionalDerivedUnit 
			baseUnit: metro 
			conversionBlock:  [:celsius | ] 
			reciprocalConversionBlock: [ :kelvins | ]
			named: 'xxx' 
			sign: '¦Ç¬¨¦Ç¬ù'))! !

!NotProportionalDerivedUnitTest methodsFor: 'test accessing'!
testSign

	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius') sign = NotProportionalDerivedUnit defaultSign.
	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: 'celcius' 
		sign: '¦Ç¬¨¦Ç¬ù') sign = '¦Ç¬¨¦Ç¬ù'.
	self assert: (NotProportionalDerivedUnit 
		baseUnit: kelvin 
		conversionBlock:  [:kelvins | kelvins + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		nameForOne: 'celcius'
		nameForMany: 'celcius'
		sign: '¦Ç¬¨¦Ç¬ù') sign = '¦Ç¬¨¦Ç¬ù'! !

!NullUnitTest methodsFor: 'initialization' stamp: 'HernanWilkinson 3/23/2017 16:03'!
setUp

	nullUnit := NullUnit new
	! !

!NullUnitTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: (nullUnit baseUnit) = nullUnit
! !

!NullUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	self assert: (nullUnit convertAmountToBaseUnit: 0) = 0.
	self assert: (nullUnit convertAmountToBaseUnit: 10) = 0! !

!NullUnitTest methodsFor: 'test converting'!
testConvertToBaseUnit

	self assert: (nullUnit convertToBaseUnit: 0) == 0! !

!NullUnitTest methodsFor: 'test accessing'!
testDenominator

	self assert: nullUnit denominator = nullUnit! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDividedUnit

	| meter hour |
	
	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self assert: (nullUnit / (meter / hour)) numerator = hour.
	self assert: (nullUnit / (meter / hour)) denominator = meter! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMultipliedUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self assert: (nullUnit / (meter * meter)) numerator = nullUnit.
	self assert: (nullUnit / (meter * meter)) denominator = (meter*meter)! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testDivideByNullUnit

	self assert: (nullUnit / nullUnit) = nullUnit! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySimpleUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self assert: (nullUnit / meter) numerator = nullUnit.
	self assert: (nullUnit / meter) denominator = meter! !

!NullUnitTest methodsFor: 'test comparing'!
testEqualBaseUnit

	| meter |

	meter := BaseUnit named: 'meter'.
	self deny: nullUnit = meter! !

!NullUnitTest methodsFor: 'test comparing'!
testEqualDerivedUnit

	| meter centimeter |

	meter := BaseUnit named: 'meter'.
	centimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1/100 named: 'centimeter'.
	
	self deny: nullUnit = centimeter! !

!NullUnitTest methodsFor: 'test comparing'!
testEqualDividedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self deny: nullUnit = (meter / hour)! !

!NullUnitTest methodsFor: 'test comparing'!
testEqualMultipliedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	self deny: nullUnit = (meter * hour)! !

!NullUnitTest methodsFor: 'test comparing'!
testEqualNullUnit

	self assert: nullUnit = nullUnit.
	self assert: NullUnit new = NullUnit new! !

!NullUnitTest methodsFor: 'test measurement creation'!
testMeasureCreation

	self assert: (nullUnit with: 10) = 10! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByDividedUnit

	| meter second |
	
	meter := BaseUnit named: 'meter'.
	second := BaseUnit named: 'second'.
	
	self assert: (nullUnit * (meter / second )) numerator = meter.
	self assert: (nullUnit * (meter / second )) denominator = second! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMultipliedUnit

	| second kelvin |

	second := BaseUnit named: 'second'.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (nullUnit * (second * kelvin)) factorsSize = 2.
	self assert: ((nullUnit * (second * kelvin)) factors includes: second).
	self assert: ((nullUnit * (second * kelvin)) factors includes: kelvin)! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNullUnit

	self assert: (nullUnit * nullUnit) = nullUnit! !

!NullUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyBySimpleUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	
	self assert: (nullUnit * meter) = meter! !

!NullUnitTest methodsFor: 'test accessing'!
testName

	self assert: nullUnit name = ''! !

!NullUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: nullUnit nameForMany = ''! !

!NullUnitTest methodsFor: 'test accessing'!
testNameForOne

	self assert: nullUnit nameForOne = ''! !

!NullUnitTest methodsFor: 'test accessing'!
testNumerator

	self assert: nullUnit numerator = nullUnit! !

!NullUnitTest methodsFor: 'test accessing'!
testReciprocal

	self assert: nullUnit reciprocal = nullUnit! !

!NullUnitTest methodsFor: 'test querying'!
testSameDomainAsBaseUnit

	| metro |
	
	metro := BaseUnit named: 'metro'.
	self deny: (nullUnit sameDomainAs: metro)! !

!NullUnitTest methodsFor: 'test querying'!
testSameDomainAsDerivedUnit

	| meter centimeter |

	meter := BaseUnit named: 'meter'.
	centimeter := ProportionalDerivedUnit baseUnit: meter conversionFactor: 1/100 named: 'centimeter'.
	
	self deny: (nullUnit sameDomainAs: centimeter)! !

!NullUnitTest methodsFor: 'test querying'!
testSameDomainAsDividedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (nullUnit sameDomainAs: (meter / hour))! !

!NullUnitTest methodsFor: 'test querying'!
testSameDomainAsMultipliedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (nullUnit sameDomainAs: (meter * hour))! !

!NullUnitTest methodsFor: 'test querying'!
testSameDomainAsNullUnit

	self assert: (nullUnit sameDomainAs: nullUnit)
	
	! !

!NullUnitTest methodsFor: 'test accessing'!
testSign

	self assert: nullUnit sign = NullUnit defaultSign! !

!NumberMeasureProtocolTest methodsFor: 'test accessing'!
testAmount

	self assert: 1 amount = 1! !

!NumberMeasureProtocolTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: 1 baseUnit = NullUnit new! !

!NumberMeasureProtocolTest methodsFor: 'test'!
testConvertTo

	self assert: (1 convertTo: NullUnit new) = 1.
	self assert: (1 convertTo: 1 baseUnit) = 1.
	self
		should: [(1 convertTo: (BaseUnit named: 'The base is'))]
		raise: CanNotConvertMeasureException! !

!NumberMeasureProtocolTest methodsFor: 'test converting'!
testConvertToBaseUnit

	self assert: 1 convertToBaseUnit = 1! !

!NumberMeasureProtocolTest methodsFor: 'test' stamp: 'HernanWilkinson 4/10/2014 19:10'!
testConvertToIfSuccessfullDoIfFails

	self assert: (1 convertTo: NullUnit new ifSuccessful: [ :aNumber | true] ifFails: [ false ]).
	self deny: (1 convertTo: (BaseUnit named: 'The base is') ifSuccessful: [ :aNumber | true] ifFails: [ false ]).
! !

!NumberMeasureProtocolTest methodsFor: 'test querying'!
testIsNothing

	self assert: 0 isNothing.
	self deny: 1 isNothing.! !

!NumberMeasureProtocolTest methodsFor: 'test accessing'!
testUnit

	self assert: 1 unit = NullUnit new! !

!ProportionalDerivedUnitTest methodsFor: 'initialization'!
setUp

	peso := BaseUnit named: 'peso'.
	centavo := ProportionalDerivedUnit baseUnit: peso conversionFactor: (1/100) named: 'centavo'! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testBaseUnit

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit baseUnit = peso! !

!ProportionalDerivedUnitTest methodsFor: 'test converting'!
testConversionFactor

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit conversionFactor = (1/100)! !

!ProportionalDerivedUnitTest methodsFor: 'test converting'!
testConvertAmountToBaseUnit

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/ 100 named: 'centavo'.
	self assert: (unit convertAmountToBaseUnit: 0) = 0.
	self assert: (unit convertAmountToBaseUnit: 1) = (1/100).
	self assert: (unit convertAmountToBaseUnit: 100) = 1! !

!ProportionalDerivedUnitTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	| unit measure |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/ 100 named: 'centavo'.
	measure := SimpleMeasure amount: 100 unit: unit.
	self assert: (unit convertToBaseUnit: measure) amount = 1.
	self assert: (unit convertToBaseUnit: measure) unit = peso! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testDenominator

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit denominator = NullUnit new! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDifferentBaseUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self assert: (centavo / meter) numerator = centavo.
	self assert: (centavo / meter) denominator = meter! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDifferentDomainDerivedUnit

	| minutes hour |
	
	hour := BaseUnit named: 'hour'.
	minutes := ProportionalDerivedUnit baseUnit: hour conversionFactor: 1/60 named: 'minutes'.
	
	self assert: (centavo / minutes) numerator = centavo.
	self assert: (centavo / minutes) denominator = minutes! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDivideUnitSameDerivedUnitNumerator

	| meter |
	
	meter := BaseUnit named: 'meter'.
	
	self assert: (centavo / (centavo/meter)) = meter! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByDividedUnitSameBaseUnitNumerator

	|  hour |
	
	hour := BaseUnit named: 'hour'.
	
	self assert: (centavo / (peso / hour)) numerator = (centavo * hour).
	self assert: (centavo / (peso / hour)) denominator = peso! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByMultipliedUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	
	self assert: (centavo / (centavo * meter)) numerator = NullUnit new.
	self assert: (centavo / (centavo * meter)) denominator = meter.

	self assert: (centavo / (meter * meter)) numerator = centavo.
	self assert: (centavo / (meter * meter)) denominator = (meter * meter)! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideByNullUnit

	self assert: centavo / NullUnit new = centavo! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySameBaseUnit

	self assert: centavo / centavo = NullUnit new! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testDivideBySameDomainDerivedUnit

	| tenCents |
	
	tenCents := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/10 named: 'diez centavos'.
	
	self assert: (centavo / tenCents) numerator = centavo.
	self assert: (centavo / tenCents) denominator = tenCents! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualDerivedSameBaseUnit

	| tenCents |
	
	tenCents := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/10 named: 'diez centavos'.	
	self deny: centavo = tenCents! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualDifferentBaseUnit

	| meter |

	meter := BaseUnit named: 'meter'.
	self deny: centavo = meter! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualDividedUnit

	|  hour |

	hour := BaseUnit named: 'hour'.
	self deny: centavo = (centavo / hour)! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualMultipliedUnit

	| hour |

	hour := BaseUnit named: 'hour'.
	self deny: centavo = (centavo * hour)! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualNullUnit

	self deny: centavo = NullUnit new! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualSameBaseUnit

	self deny: centavo = peso! !

!ProportionalDerivedUnitTest methodsFor: 'test comparing'!
testEqualSameDerivedUnit

	self assert: centavo = centavo! !

!ProportionalDerivedUnitTest methodsFor: 'test measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
testMeasureCreation

	self assert: (centavo with: 10) = (SimpleMeasure amount: 10 unit: centavo)! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByDividedUnit

	| second kelvin |

	second := BaseUnit named: 'second'.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (centavo * (second / kelvin)) numerator = (centavo * second).
	self assert: (centavo * (second / kelvin)) denominator = kelvin! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByMultipliedUnit

	| second kelvin |

	second := BaseUnit named: 'second'.
	kelvin := BaseUnit named: 'kelvin'.
	
	self assert: (centavo * (second * kelvin)) factorsSize = 3.
	self assert: ((centavo * (second * kelvin)) factors includes: centavo).
	self assert: ((centavo * (second * kelvin)) factors includes: second).
	self assert: ((centavo * (second * kelvin)) factors includes: kelvin)! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyByNullUnit

	self assert: (centavo * NullUnit new) = centavo! !

!ProportionalDerivedUnitTest methodsFor: 'test arithmetic operations'!
testMultiplyBySimpleUnit

	| second|
	
	second := BaseUnit named: 'second'.
	
	self assert: (centavo * second) factorsSize = 2.
	self assert: ((centavo * second) factors includes: centavo).
	self assert: ((centavo * second) factors includes: second)! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testName

	self assert: (ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo') name = 'centavo'! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNameForMany

	self assert: (ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo') nameForMany = 'centavos'.
	self assert: (ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo' sign: '$') nameForMany = 'centavos'.
	self assert: (ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 nameForOne: 'centavo' nameForMany: 'pepe' sign: '$') nameForMany = 'pepe'! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNameForOne

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit name = unit nameForOne! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNothingAmount

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit nothingAmount = 0! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNullMeasure

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit nullMeasure amount = 0.
	self assert: unit nullMeasure unit = peso! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testNumerator

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit numerator = unit! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testReciprocal

	| unit |
	
	unit := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'centavo'.
	self assert: unit reciprocal = (NullUnit new / unit)! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsDerivedUnit

	| tenCents |
	
	tenCents := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/10 named: 'diez centavos'.	
	
	self assert: (centavo sameDomainAs: tenCents).	
	
	
! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsDerivedUnitOfOtherDomain

	| hour minute|

	hour := BaseUnit named: 'hour'.
	minute := ProportionalDerivedUnit baseUnit: hour conversionFactor: 1/60 named: 'minute'.
	
	self deny: (centavo sameDomainAs: minute).	
	
	! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsDifferentBaseUnit

	| meter |
	
	meter := BaseUnit named: 'meter'.
	self deny: (centavo sameDomainAs: meter)
	
	
! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsDividedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (centavo sameDomainAs: (meter / hour))	! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsMultipliedUnit

	| meter hour |

	meter := BaseUnit named: 'meter'.
	hour := BaseUnit named: 'hour'.
	
	self deny: (centavo sameDomainAs: (meter * hour))	! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsNullUnit

	self deny: (centavo sameDomainAs: NullUnit new)
	
	! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsSameBaseUnit

	self assert: (centavo sameDomainAs: peso)! !

!ProportionalDerivedUnitTest methodsFor: 'test querying'!
testSameDomainAsUnit

	self assert: (centavo sameDomainAs: centavo)! !

!ProportionalDerivedUnitTest methodsFor: 'test accessing'!
testSign

	self assert:
		(ProportionalDerivedUnit baseUnit: peso conversionFactor: 1 / 100 named: 'centavo') sign =
			ProportionalDerivedUnit defaultSign.
	self assert:
		(ProportionalDerivedUnit
			baseUnit: peso
			conversionFactor: 1 / 100
			named: 'centavo'
			sign: '$')
				sign = '$'.
	self assert:
		(ProportionalDerivedUnit
			baseUnit: peso
			conversionFactor: 1 / 100
			nameForOne: 'peso'
			nameForMany: 'pepe'
			sign: '$')
				sign = '$'! !

!ProportionalUnitConversionFunctionTest methodsFor: 'initialization'!
setUp

	peso := BaseUnit named: 'peso'.
	dollar := BaseUnit named: 'dollar'.	
	onePeso := peso with: 1.
	tenDollars := dollar with: 10! !

!ProportionalUnitConversionFunctionTest methodsFor: 'testing'!
testAccessing

	| function |
	
	function := ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars.
	self assert: function sourceMeasure = onePeso.
	self assert: function equivalentMeasure = tenDollars.
	self assert: function proportionalMeasure = (tenDollars/onePeso).
	self assert: function printString = '10 dollars / 1 peso* valueToConvert'! !

!ProportionalUnitConversionFunctionTest methodsFor: 'testing'!
testEqual

	| function |
	
	function := ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars.
	self assert: function = (ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars).
	self deny: function = (ProportionalUnitConversionFunction measure: tenDollars isProportionalTo: onePeso)! !

!ProportionalUnitConversionFunctionTest methodsFor: 'testing'!
testHash

	self assert: (ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars) hash =
		(ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars) hash! !

!ProportionalUnitConversionFunctionTest methodsFor: 'testing'!
testInvalidValues

	| cent |
	
	self 
		should: [ ProportionalUnitConversionFunction measure: (peso with:0) isProportionalTo: tenDollars ] 
		raise: InvalidProportionalUnitConversionFunctionException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = (peso with: 0).
			self assert: anException equivalentMeasure = tenDollars.
			self assert: anException description notNil ].
		
	cent := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1/100 named: 'cent'.
	self 
		should: [ ProportionalUnitConversionFunction measure: onePeso isProportionalTo: (cent with: 100) ] 
		raise: InvalidProportionalUnitConversionFunctionException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = onePeso.
			self assert: anException equivalentMeasure = (cent with: 100).
			self assert: anException description notNil ]! !

!ProportionalUnitConversionFunctionTest methodsFor: 'testing'!
testValidValues

	| function |
	
	function := ProportionalUnitConversionFunction measure: onePeso isProportionalTo: tenDollars.
	self assert: (function value: (peso with: 3)) = (dollar with: 30).
	self assert: (function value: onePeso) = tenDollars.

	function := ProportionalUnitConversionFunction measure: tenDollars isProportionalTo: onePeso.
	self assert: (function value:tenDollars) = onePeso.
	self assert: (function value:(dollar with: 1)) = (onePeso/10)
	! !

!SimpleMeasureTest methodsFor: 'accessing temperature units'!
celsius

	^units celsius! !

!SimpleMeasureTest methodsFor: 'accessing distance units'!
centimeter
	
	^units centimeter! !

!SimpleMeasureTest methodsFor: 'bag creation' stamp: 'HAW 3/25/2017 20:02:41'!
composeWith: aMeasure

	^aMeasure composeWithSimpleMeasure: self! !

!SimpleMeasureTest methodsFor: 'converting'!
convertToBaseUnit
	
	^self! !

!SimpleMeasureTest methodsFor: 'accessing monetary units'!
dollar

	^units dollar! !

!SimpleMeasureTest methodsFor: 'accessing monetary units'!
euro

	^units euro! !

!SimpleMeasureTest methodsFor: 'accessing temperature units'!
fahrenheit

	^units fahrenheit! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fiveDollars

	^SimpleMeasure amount: 5 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fivePesos

	^SimpleMeasure amount: 5 unit: self peso! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
fortyDollars

	^SimpleMeasure amount: 40 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing temperature units'!
kelvin
	
	^units kelvin! !

!SimpleMeasureTest methodsFor: 'accessing distance units'!
kilometer
	
	^units kilometer! !

!SimpleMeasureTest methodsFor: 'accessing distance units'!
meter

	^units meter! !

!SimpleMeasureTest methodsFor: 'accessing distance units'!
metro

	^units metro! !

!SimpleMeasureTest methodsFor: 'accessing distance units'!
millimeter
	
	^units millimeter! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
minusTenDollars

	^SimpleMeasure amount: -10 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
minusTenPesos
	
	^SimpleMeasure amount: -10 unit: self peso! !

!SimpleMeasureTest methodsFor: 'time units'!
minute

	^units minute! !

!SimpleMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneCelsius

	^SimpleMeasure amount: 1 unit: self celsius! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneCentimeter
	
	^SimpleMeasure amount: 1 unit: self centimeter! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneDollar
	
	^SimpleMeasure amount: 1 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneFahrenheit

	^SimpleMeasure amount: 1 unit: self fahrenheit! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneKilometer
	
	^SimpleMeasure amount: 1 unit: self kilometer! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneMeter
	
	^SimpleMeasure amount: 1 unit: self meter! !

!SimpleMeasureTest methodsFor: 'time measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneMinute
	
	^SimpleMeasure amount: 1 unit: self minute! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
onePeso

	^SimpleMeasure amount: 1 unit: self peso! !

!SimpleMeasureTest methodsFor: 'time measurements' stamp: 'HAW 3/25/2017 19:11:51'!
oneSecond
	
	^SimpleMeasure amount: 1 unit: self second! !

!SimpleMeasureTest methodsFor: 'accessing monetary units'!
peso

	^units peso! !

!SimpleMeasureTest methodsFor: 'testing'!
sameDomainAs: aMeasure 
	
	^false! !

!SimpleMeasureTest methodsFor: 'time units'!
second
	
	^units second! !

!SimpleMeasureTest methodsFor: 'initialization'!
setUp

	units := UnitsTestResource current! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenDollars

	^SimpleMeasure amount: 10 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenEuros

	^SimpleMeasure amount: 10 unit: self euro! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenKilometers
	
	^SimpleMeasure amount: 10 unit: self kilometer! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenMeters

	^SimpleMeasure amount: 10 unit: self meter! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
tenPesos
	
	^SimpleMeasure amount: 10 unit: self peso! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
tesRemainderFractionByMeasure

	self assert: (1/3) \\ self tenPesos = (1/3)! !

!SimpleMeasureTest methodsFor: 'test'!
testAbs

	self assert: self onePeso abs = self onePeso.
	self assert: (self onePeso unit with: 0)  abs = (self onePeso unit with: 0).
	self assert: (self onePeso unit with: -1)  abs = (self onePeso unit with: 1)! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddAssociativity

	self assert: (self oneMeter + (self oneMeter + self oneKilometer)) amount = ((self oneMeter + self oneMeter) + self oneKilometer) amount.
	self assert: (self oneMeter + (self oneMeter + self oneKilometer)) unit = ((self oneMeter + self oneMeter) + self oneKilometer) unit! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddBaseUnit

	self assert: (self oneMeter + self oneMeter) amount = 2.
	self assert: (self oneMeter + self oneMeter) unit = self meter! !

!SimpleMeasureTest methodsFor: 'test add' stamp: 'HAW 3/25/2017 19:11:51'!
testAddBaseUnitAndDerivedUnit

	self assert: (self oneKilometer + self oneMeter) amount = 1001.
	self assert: (self oneKilometer + self oneMeter) unit = self meter.
	
	self assert: (self zeroCelsius + (SimpleMeasure amount: 32 unit: self fahrenheit)) amount = (5463/10).
	self assert: (self zeroCelsius + (SimpleMeasure amount: 32 unit: self fahrenheit)) unit = self kelvin
! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddCommutativity

	self assert: (self oneMeter + self oneKilometer) amount = (self oneKilometer + self oneMeter) amount.
	self assert: (self oneMeter + self oneKilometer) unit = (self oneKilometer + self oneMeter) unit! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddDerivedUnit

	self assert: (self oneKilometer + self oneCentimeter) amount = (100001/100).
	self assert: (self oneKilometer + self oneCentimeter) unit = self meter! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddDifferentBaseUnits

	self should: [ (self tenPesos + self twentyDollars) amount ] raise: Exception.
	self should: [ (self tenPesos + self twentyDollars) unit ] raise: Exception.
	self assert: (self tenPesos + self twentyDollars) numberOfMeasures=2.

	self should: [ (self tenPesos + ( self twentyDollars + self tenEuros)) amount ] raise: Exception.
	self should: [ ((self tenPesos + self twentyDollars) + self tenEuros) amount ] raise: Exception.
! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddDifferentUnit

	| a10pesosPlus20Dollars |

	a10pesosPlus20Dollars := self tenPesos + self twentyDollars.
	self assert: a10pesosPlus20Dollars = (self tenPesos + self twentyDollars) description: 'Equality'.
	self assert: a10pesosPlus20Dollars = (self twentyDollars + self tenPesos) description: 'Conmutativity'.
	self assert: a10pesosPlus20Dollars = (self tenPesos + (self tenDollars + self tenDollars)) description: 'Associativity'.
	self assert: (self tenPesos + (self twentyDollars + self tenEuros))=((self tenPesos + self twentyDollars) + self tenEuros) description: 'Associativity'.
	
	a10pesosPlus20Dollars + self tenPesos.
	self assert: a10pesosPlus20Dollars = (self tenPesos + self twentyDollars) description: 'Inmutability'.
	self assert: (self zeroPesos + self twentyDollars) = self twentyDollars description: 'Adding zero'.
	self assert: ((self tenPesos + self twentyDollars) + self zeroCentimeters) = (self tenPesos + self twentyDollars)  description: 'Adding zero, should be equal to bag without nothing member'.
	
	self assert: (self zeroPesos + self zeroDollars) = (self zeroDollars + self zeroPesos) description: 'Adding Zero'! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddDividedMeasure

	self assert: ((self tenMeters + (self tenMeters / self fivePesos)) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((self tenMeters + (self tenMeters / self fivePesos)) atSameBaseUnitAs: (self meter / self peso)) = (self tenMeters / self fivePesos)! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddFloatWithMeasure

	self assert: ((10.01 + self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((10.01 + self tenMeters) atSameBaseUnitAs: NullUnit new) = 10.01.	! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddFractionWithMeasure

	self assert: ((1/3 + self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((1/3 + self tenMeters) atSameBaseUnitAs: NullUnit new) = (1/3).	! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:03'!
testAddInfinity
 
	self assert: self oneMeter + Infinity = Infinity.
	self assert: Infinity + self oneMeter = Infinity.
	self assert: self oneMeter negated + Infinity = Infinity.
	self assert: Infinity + self oneMeter negated = Infinity! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddIntegerWithMeasure

	self assert: ((10 + self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((10 + self tenMeters) atSameBaseUnitAs: NullUnit new) = 10.	! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/26/2009 11:28'!
testAddMinusInfinity
 
	self assert: self oneMeter + MinusInfinity = MinusInfinity.
	self assert: MinusInfinity + self oneMeter = MinusInfinity.
	self assert: self oneMeter negated + MinusInfinity = MinusInfinity.
	self assert: MinusInfinity + self oneMeter negated = MinusInfinity! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddMultipliedMeasure

	self assert: ((self tenMeters + (self tenMeters * self fivePesos)) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((self tenMeters + (self tenMeters * self fivePesos)) atSameBaseUnitAs: (self meter*self peso)) = (self tenMeters * self fivePesos)
! !

!SimpleMeasureTest methodsFor: 'test add'!
testAddNumber

	self assert: ((self tenMeters + 10) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((self tenMeters + 10) atSameBaseUnitAs: NullUnit new) = 10.	! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testAmount

	self assert: self oneMeter amount = 1 description: 'Amount'.
	self assert: self tenMeters amount = 10 description: 'Amount'! !

!SimpleMeasureTest methodsFor: 'test'!
testAtBaseUnitIfNone

	self assert: (self oneSecond atBaseUnit: self second ifNone: []) = self oneSecond.
	self assert: (self oneSecond atBaseUnit: self minute ifNone: ['error']) = 'error'! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testBaseUnit

	self assert: self oneMeter baseUnit = self meter.
	self assert: self oneKilometer baseUnit = self meter.
	self assert: self oneCentimeter baseUnit = self meter.
	
	! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol' stamp: 'HAW 3/25/2017 19:11:51'!
testBetweenAnd

	self assert: (self tenMeters between: self oneMeter and: (SimpleMeasure amount: 11 unit: self meter)).
	self assert: (self tenMeters between: self oneMeter and: self tenMeters).
	self assert: (self tenMeters between: self tenMeters and: self tenMeters).
	self assert: (self tenMeters between: self oneCentimeter and: self oneKilometer).

! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol' stamp: 'HAW 3/25/2017 19:11:51'!
testBetweenAndNotInclusive

	self assert: (self tenMeters between: self oneMeter andNotInclusive: (SimpleMeasure amount: 11 unit: self meter)).
	self assert: (self tenMeters between: self tenMeters andNotInclusive: (SimpleMeasure amount: 11 unit: self meter)).
	self deny: (self tenMeters between: self oneMeter andNotInclusive: self tenMeters).

! !

!SimpleMeasureTest methodsFor: 'test'!
testCompareGreaterThan

	self assert: (self oneCelsius compareGreaterThan: 0).
	self deny: (self zeroCelsius compareGreaterThan: 0).
	self should: [self oneCelsius compareGreaterThan: 1] raise: CanNotConvertMeasureException.
	self should: [self oneCelsius compareGreaterThan: -1] raise: CanNotConvertMeasureException! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testConvertAmountToBaseUnit

	self assert: self oneMeter convertAmountToBaseUnit = 1.
	self assert: self oneKilometer convertAmountToBaseUnit = 1000.
	self assert: self oneCentimeter convertAmountToBaseUnit = (1/100)! !

!SimpleMeasureTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertNothing

	self assert: (self zeroMeters convertTo: self meter) = self zeroMeters.
	self assert: ((SimpleMeasure amount: 0 unit: self centimeter) convertTo: self meter) = self zeroMeters		! !

!SimpleMeasureTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertTo

	self assert: (self oneMeter convertTo: self meter) = self oneMeter.
	self assert: (self oneKilometer convertTo: self meter) = (SimpleMeasure amount: 1000 unit: self meter).
	self assert: (self oneCentimeter convertTo: self meter) = (SimpleMeasure amount: (1/100) unit: self meter).

	self assert: (self oneMeter convertTo: self kilometer) = (SimpleMeasure amount: (1/1000) unit: self kilometer).
	self assert: (self oneMeter convertTo: self centimeter) = (SimpleMeasure amount: 100 unit: self centimeter).

	self assert: (self oneCentimeter convertTo: self kilometer) = (SimpleMeasure amount: (1/100000) unit: self kilometer).
	self assert: (self oneKilometer convertTo: self centimeter) = (SimpleMeasure amount: 100000 unit: self centimeter)! !

!SimpleMeasureTest methodsFor: 'test converting' stamp: 'HAW 3/25/2017 19:11:51'!
testConvertToBaseUnit

	self assert: self oneMeter convertToBaseUnit = self oneMeter.
	self assert: self oneKilometer convertToBaseUnit = (SimpleMeasure amount: 1000 unit: self meter)! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testDenominator

	self assert: (self tenMeters ) denominator = 1.
	self assert: (self tenMeters * self tenMeters) denominator = 1! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:03'!
testDivideInfinity
 
	self assert: self oneMeter / Infinity = 0.
	self
		should: [Infinity / self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and 1 meter'].
	self assert: self oneMeter negated / Infinity = 0.
	self
		should: [Infinity / self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/26/2009 11:06'!
testDivideMinusInfinity

	self assert: self oneMeter / MinusInfinity = 0.
	self
		should: [MinusInfinity / self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and 1 meter'].
	self assert: self oneMeter negated / MinusInfinity = 0.
	self
		should: [MinusInfinity / self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Division operation is indeterminate between Minus Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:11:51'!
testDivisionByDividedMeasure

	self assert: (self oneKilometer / (self oneMeter/self onePeso)) = (SimpleMeasure amount: 1000 unit: self peso).
	self assert: (self oneKilometer / (self onePeso/self oneMeter)) = ((self oneKilometer*self oneMeter)/self onePeso)
	
! !

!SimpleMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:11:51'!
testDivisionByMeasureBaseUnitOverBaseUnit

	self assert: (self tenMeters / self tenMeters) = 1.
	self assert: (self tenMeters / self tenMeters) amount= 1.
	self assert: (self tenMeters / self tenMeters) unit = NullUnit new.
	self assert: (self tenMeters / self oneMeter) = 10.
	self assert: (self tenMeters / self oneSecond) = (SimpleMeasure amount: 10 unit: (self meter/self second)).
	self assert: (self tenMeters / self twoSecond) = (SimpleMeasure amount: 5 unit: (self meter/self second)).
	self assert: (self tenMeters / self oneSecond) numerator = self tenMeters.
	self assert: (self tenMeters / self oneSecond) denominator = self oneSecond! !

!SimpleMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:11:51'!
testDivisionByMeasureBaseUnitOverDerivedUnit

	self assert: (self oneMeter / self oneKilometer) = (1/1000).
	self assert: (self oneMeter / self oneCentimeter) = 100.
	self assert: (self oneMeter / self oneMinute) = (SimpleMeasure amount: 1/60 unit: (self meter/self second)).

	
! !

!SimpleMeasureTest methodsFor: 'test division' stamp: 'HAW 3/25/2017 19:11:51'!
testDivisionByMeasureDerivedUnitOverBaseUnit

	self assert: (self oneKilometer / self oneMeter) = 1000.
	self assert: (self oneKilometer / self tenMeters) = 100.
	self assert: (self oneKilometer / self oneKilometer) = 1.
	self assert: (self oneKilometer / self oneSecond) = (SimpleMeasure amount: 1000 unit: (self meter/self second)).

	
! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionByNumber

	self assert: (self zeroPesos / 1) amount = 0.
	self assert: (self tenPesos / 10) = self onePeso.

! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionByZero

	self should: [ self tenPesos / 0 ] raise: Exception description: 'Divition by 0'.
! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionFloatByMeasure

	self assert: (1.01 / self tenPesos) = ((NullUnit new / self peso) with: 1.01/10)

! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionFractionByMeasure

	self assert: ((1/3) / self tenPesos) = ((NullUnit new / self peso) with: (1/3)/10)

! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionIntegerByMeasure

	self assert: (1 / self tenPesos) = ((NullUnit new / self peso) with: 1/10)

! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionOfBaseUnit

	self assert: (self tenMeters / 10) amount = 1 description: 'Divition'.
	self assert: (self tenMeters / 10) unit = self meter description: 'Divition'.
	
! !

!SimpleMeasureTest methodsFor: 'test division'!
testDivisionOfDerivedUnit

	self assert: (self oneKilometer / 10 ) amount = (1/10).
	self assert: (self oneKilometer / 10 ) unit = self kilometer.
	
! !

!SimpleMeasureTest methodsFor: 'test comparing' stamp: 'HAW 3/25/2017 19:11:51'!
testEqual

	self assert: self oneMeter = self thousandMillimeters description: 'Equal on same system'.
	self assert: self thousandMillimeters = self oneMeter description: 'Equal on same system'.
	
	self assert: self tenPesos = self tenPesos description: 'Equals'.
	self deny: self tenPesos = self twentyPesos description: 'Equals different amount'.
	
	self deny: self zeroCelsius = self zeroFahrenheit description: 'Equals on the same type of unit but not equal measures'.
	self assert: self zeroCelsius = (SimpleMeasure amount: 32 unit: self fahrenheit)
	! !

!SimpleMeasureTest methodsFor: 'test comparing'!
testEqualDifferentBaseUnit

	self deny: self tenPesos = self tenDollars! !

!SimpleMeasureTest methodsFor: 'test comparing'!
testEqualNothingWhenRepresentSameEntity

	self
		assert: self zeroDollars = self zeroPesos
		description: 'Zeros of different units must be equivalent since they represent the same entities'! !

!SimpleMeasureTest methodsFor: 'test comparing'!
testEqualNumber

	self deny: self oneMeter = 1.
	self deny: 1 = self oneMeter! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testGreaterThan

	self assert: self tenMeters > self oneMeter.
	self assert: self oneKilometer > self oneMeter.
	self deny: self  oneCentimeter > self oneMeter.
	self deny: self oneMeter > self oneMeter.
	self deny: self thousandMillimeters > self oneMeter.! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testGreaterThanEquals

	self assert: self tenMeters >= self oneMeter.
	self deny: self oneMeter >= self tenMeters.
	self assert: self tenMeters >= self tenMeters.
	self assert: self oneMeter >= self thousandMillimeters.

! !

!SimpleMeasureTest methodsFor: 'test comparing'!
testHash

	self assert: self oneMeter hash = self oneMeter hash.
	self assert: self oneMeter hash = self thousandMillimeters hash
	
	
! !

!SimpleMeasureTest methodsFor: 'test' stamp: 'HAW 3/25/2017 20:20:37'!
testIntegerDivideCompoundMeasure

	self assert:
		(self fiveDollars moduloCompoundMeasure: self fiveDollars + self fivePesos) =
			(1 + (self onePeso / self oneDollar))! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidBetweenAnd

	self
		should: [self tenMeters between: self oneMeter and: self onePeso]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException operationName = 'convertTo:'.
			self assert: anException targetUnit = self peso].

	self
		should: [self tenMeters between: self onePeso and: self oneMeter]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException targetUnit = self peso].

	self
		should: [self tenMeters between: 1 and: 2]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException |
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException targetUnit = NullUnit new]! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidBetweenAndNotInclusive

	self 
		should: [ self tenMeters between: self oneMeter andNotInclusive: self onePeso ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException targetUnit = self peso ].

	self 
		should: [ self tenMeters between: self onePeso andNotInclusive: self oneMeter ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = self peso ].
			
	self 
		should: [ self tenMeters between: 1 andNotInclusive: 2 ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = NullUnit new ]! !

!SimpleMeasureTest methodsFor: 'test converting'!
testInvalidConvertTo

	self assert: 
		([ self oneMeter convertTo: self peso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :anException |
				self assert: anException sourceMeasure = self oneMeter.
				self assert: anException targetUnit = self peso.
				self assert: anException isResumable.
				anException return: true ])! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidGreaterThan

	self assert: (
		[ self oneMeter > self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self oneMeter.
				self assert: aSignal targetUnit = self peso.
				aSignal return: true ])! !

!SimpleMeasureTest methodsFor: 'test'!
testInvalidGreaterThanAgainstScalar

	self assert: (
		[
			self oneMeter > 1.
			false]
				on: CanNotConvertMeasureException
				do: [:aSignal | aSignal return: true])! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidGreaterThanEquals

	self assert: (
		[ self oneMeter >= self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self oneMeter.
				self assert: aSignal targetUnit = self peso.			
				aSignal return: true ]).

	self assert: (
		[ self oneMeter >= 1.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | aSignal return: true ]).! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidLessThan

	self assert: (
		[ self oneMeter < self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self oneMeter.
				self assert: aSignal targetUnit = self peso.
				aSignal return: true ]).

	self assert: (
		[ self oneMeter < 1.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | aSignal return: true ]).
			
! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidLessThanEquals

	self assert: (
		[ self oneMeter <= self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self oneMeter.
				self assert: aSignal targetUnit = self peso.			
				aSignal return: true ]).

	self assert: (
		[ self oneMeter <= 1.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | aSignal return: true ])! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidMax

	self assert: (
		[ self tenMeters max: self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self tenMeters.
				self assert: aSignal targetUnit = self peso.
				aSignal return: true ]).

	self assert: (
		[ self tenMeters max: 1.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | aSignal return: true ])! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidMin

	self assert: (
		[ self tenMeters min: self onePeso.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | 
				self assert: aSignal sourceMeasure = self tenMeters.
				self assert: aSignal targetUnit = self peso.
				aSignal return: true ]).

	self assert: (
		[ self tenMeters min: 1.
		false ]
			on: CanNotConvertMeasureException
			do: [ :aSignal | aSignal return: true ])! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidNotInclusiveBetweenAnd

	self 
		should: [ self tenMeters notInclusiveBetween: self oneMeter and: self onePeso ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException targetUnit = self peso ].

	self 
		should: [ self tenMeters notInclusiveBetween: self onePeso and: self oneMeter ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = self peso ].
			
	self 
		should: [ self tenMeters notInclusiveBetween: 1 and: 2 ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = NullUnit new ]! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testInvalidNotInclusiveBetweenAndNotInclusive

	self 
		should: [ self tenMeters notInclusiveBetween: self oneMeter andNotInclusive: self onePeso ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
			self assert: anException sourceMeasure = self tenMeters.
			self assert: anException targetUnit = self peso ].

	self 
		should: [ self tenMeters notInclusiveBetween: self onePeso andNotInclusive: self oneMeter ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = self peso ].
			
	self 
		should: [ self tenMeters notInclusiveBetween: 1 andNotInclusive: 2 ]
		raise: CanNotConvertMeasureException
		withExceptionDo: [ :anException | 
				self assert: anException sourceMeasure = self tenMeters.
				self assert: anException targetUnit = NullUnit new ]! !

!SimpleMeasureTest methodsFor: 'test' stamp: 'GabrielOmarCotelli 9/18/2009 20:56'!
testIsFraction

	self deny: (self meter with: 1) isFraction.
	self deny: (self centimeter with: 12) isFraction.
	self deny: ((self peso * self meter) with: 44) isFraction.
	self deny: ((self peso / self meter) with: 1234) isFraction.
	self deny: (self meter with: 1.05) isFraction.
	self deny: (self centimeter with: 1.05) isFraction.
	self deny: ((self peso * self meter) with: 1.05) isFraction.
	self deny: ((self peso / self meter) with: 1.05) isFraction

! !

!SimpleMeasureTest methodsFor: 'test testing' stamp: 'HAW 3/25/2017 19:11:51'!
testIsNothing

	self assert: self zeroMeters isNothing.
	self assert: self zeroCentimeters isNothing.
	
	self assert: (SimpleMeasure amount: 0 unit: self kelvin) isNothing.
	self assert: (SimpleMeasure amount: (-5463/20) unit: self celsius) isNothing.
	! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testLessThan

	self assert: self oneMeter < self tenMeters.
	self assert: self oneMeter < self oneKilometer.
	self deny: self oneMeter < self oneCentimeter.
	self deny: self oneMeter < self oneMeter.
	self deny: self oneMeter < self thousandMillimeters.
	self deny: self oneMeter < 0! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testLessThanEquals

	self assert: self oneMeter <= self tenMeters.
	self deny: self tenMeters <= self oneMeter.
	self assert: self oneMeter <= self oneMeter.
	self assert: self oneMeter <= self thousandMillimeters.
! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testMax

	self assert: (self tenMeters max: self oneMeter) = self tenMeters.
	self assert: (self oneMeter max: self tenMeters) = self tenMeters.
	self assert: (self tenMeters max: self oneKilometer) = self oneKilometer.
	self assert: (self oneKilometer max: self oneMeter) = self oneKilometer.
	self assert: (self oneCentimeter max: self oneKilometer) = self oneKilometer.
	self assert: (self oneKilometer max: self oneCentimeter) = self oneKilometer.
	
! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testMeasures

	self
		assert: self oneMeter measures size = 1 description: 'Must be included only the own measure';
		assert: (self oneMeter measures includes: self oneMeter) description: 'Must be included the own measure'! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol'!
testMin

	self assert: (self tenMeters min: self oneMeter) = self oneMeter.
	self assert: (self oneMeter min: self tenMeters) = self oneMeter.
	self assert: (self tenMeters min: self oneKilometer) = self tenMeters.
	self assert: (self oneKilometer min: self oneMeter) = self oneMeter.
	self assert: (self oneCentimeter min: self oneKilometer) = self oneCentimeter.
	self assert: (self oneKilometer min: self oneCentimeter) = self oneCentimeter.
	
! !

!SimpleMeasureTest methodsFor: 'test integer division' stamp: 'HAW 3/25/2017 19:11:51'!
testModuloByMeasure

	self assert: (self tenMeters // self tenMeters) = 1.
	self assert: (self oneMeter // self tenMeters) = 0.
	self assert:
		(self tenMeters // self oneSecond) = (SimpleMeasure amount: 10 unit: (self meter / self second)).
	self assert:
		(self tenMeters // self twoSecond) = (SimpleMeasure amount: 5 unit: (self meter / self second))! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloByZero

	self should: [ self tenPesos // 0 ] raise: Exception.
! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloFloatByMeasure

	self assert: (10.01 // self tenPesos) = (1 / self onePeso)
! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloFractionByMeasure

	self assert: (1/3) // self tenPesos = (0 / self onePeso)
! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:21'!
testModuloInfinity

	self assert: self oneMeter // Infinity = 0.
	self
		should: [Infinity // self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and 1 meter'].
	self assert: self oneMeter negated // Infinity = 0.
	self
		should: [Infinity // self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloIntegerByMeasure

	self assert: 1 // self tenPesos = (0 / self onePeso)

! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/26/2009 11:21'!
testModuloMinusInfinity

	self assert: self oneMeter // MinusInfinity = 0.
	self
		should: [MinusInfinity // self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and 1 meter'].
	self assert: self oneMeter negated // MinusInfinity = 0.
	self
		should: [MinusInfinity // self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Modulo operation is indeterminate between Minus Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloOfBaseUnit

	self assert: (self tenMeters // 10) amount = 1.
	self assert: (self tenMeters // 10) unit = self meter.
	
	self assert: (self tenMeters // 3) amount = 3.
! !

!SimpleMeasureTest methodsFor: 'test integer division'!
testModuloOfDerivedUnit

	self assert: (self tenKilometers // 10 ) amount = 1.
	self assert: (self tenKilometers // 10 ) unit = self kilometer.
	
	self assert: (self tenKilometers // 3 ) amount = 3.
! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplicationOfBaseUnit

	self assert: (self tenMeters * 2) amount = 20.
	self assert: (self tenMeters * 2) unit = self meter
	
	! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplicationOfDerivedUnit

	self assert: (self oneKilometer * 2) amount = 2.
	self assert: (self oneKilometer * 2) unit = self kilometer
	
	! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyByDividedMeasure

	self assert: (self onePeso*(self tenPesos/self oneMeter)) amount = 10.
	self assert: (self onePeso*(self tenPesos/self oneMeter)) unit = (self peso*self peso/self meter).

	self assert: (self onePeso*(self tenMeters/self onePeso)) = self tenMeters! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyByMeasure

	self assert: (self onePeso*self tenPesos) amount = 10.
	self assert: (self onePeso*self tenPesos) unit = (self peso*self peso).

	
	! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyByMeasureAssociativity

	self assert: ((self onePeso * self tenPesos) * self tenPesos) = (self onePeso * (self tenPesos * self tenPesos))	
	! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyByMultipliedMeasure

	self assert: (self onePeso * self tenPesos * self tenPesos) amount = 100.
	self assert: (self onePeso * self tenPesos * self tenPesos) unit = (self peso * self peso * self peso)	
	! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyByNumber

	self assert: self onePeso * 10 = self tenPesos.	
	self assert: self onePeso * 0 = self zeroPesos.	
	self assert: self onePeso * 0 = 0.
	self assert: self onePeso * 0 = self zeroDollars! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyFloatByMeasure

	self assert: (1.01 * self tenPesos) = ((NullUnit new * self peso) with: 1.01*10)

! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyFractionByMeasure

	self assert: ((1/3) * self tenPesos) = ((NullUnit new * self peso) with: (1/3)*10)

! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:22'!
testMultiplyInfinity
 
	self assert: self oneMeter * Infinity = Infinity.
	self assert: Infinity * self oneMeter = Infinity.
	self assert: self oneMeter negated * Infinity = Infinity.
	self assert: Infinity * self oneMeter negated = Infinity! !

!SimpleMeasureTest methodsFor: 'test multiplication'!
testMultiplyIntegerByMeasure

	self assert: (3 * self tenPesos) = ((NullUnit new * self peso) with: 3*10)

! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/26/2009 11:27'!
testMultiplyMinusInfinity
 
	self assert: self oneMeter * MinusInfinity = MinusInfinity.
	self assert: MinusInfinity * self oneMeter = MinusInfinity.
	self assert: self oneMeter negated * MinusInfinity = MinusInfinity.
	self assert: MinusInfinity * self oneMeter negated = MinusInfinity! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testNegated

	self assert: self tenPesos negated negated = self tenPesos description: 'Measure Negated'.
	self assert: self minusTenPesos = self tenPesos negated description: 'Measure negated'.
	self assert: self zeroPesos negated = self zeroPesos description: 'Measure negated'! !

!SimpleMeasureTest methodsFor: 'test'!
testNegative

	self assert: (self onePeso - self tenPesos) negative.
	self deny: (self onePeso - self tenPesos) negated negative! !

!SimpleMeasureTest methodsFor: 'test comparing' stamp: 'mx 3/26/2007 22:22'!
testNotEqual

	self deny: self oneMeter = 'hello'.
	self deny: 'hello' = self oneMeter.
	self deny: self oneMeter = Object new.
	self deny: Object new = self oneMeter! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol' stamp: 'HAW 3/25/2017 19:11:51'!
testNotInclusiveBetweenAnd

	self assert: (self tenMeters notInclusiveBetween: self oneMeter and: (SimpleMeasure amount: 11 unit: self meter)).
	self assert: (self tenMeters notInclusiveBetween: self oneMeter and: self tenMeters).
	self deny: (self tenMeters notInclusiveBetween: self tenMeters and: (SimpleMeasure amount: 11 unit: self meter)).

! !

!SimpleMeasureTest methodsFor: 'test magnitude protocol' stamp: 'HAW 3/25/2017 19:11:51'!
testNotInclusiveBetweenAndNotInclusive

	self assert: (self tenMeters notInclusiveBetween: self oneMeter andNotInclusive: (SimpleMeasure amount: 11 unit: self meter)).
	self deny: (self tenMeters notInclusiveBetween: self tenMeters andNotInclusive: (SimpleMeasure amount: 11 unit: self meter)).
	self deny: (self tenMeters notInclusiveBetween: self oneMeter andNotInclusive: self tenMeters).

! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testNumerator

	self assert: (self tenMeters ) numerator = self tenMeters.
	self assert: (self tenMeters * self tenMeters ) numerator = (self tenMeters * self tenMeters)

	

	
! !

!SimpleMeasureTest methodsFor: 'test'!
testPositive

	self assert: self tenPesos positive.
	self deny: self tenPesos negated positive.! !

!SimpleMeasureTest methodsFor: 'test printing'!
testPrintingForMany

	self assert: self tenPesos printString = '10 pesos' description: 'Printing for many with correct creation'.
	self assert: self tenDollars printString = '10 dollars' description: 'Printing for many with invalid creation'	! !

!SimpleMeasureTest methodsFor: 'test printing'!
testPrintingForOne

	self assert: self onePeso printString = '1 peso' description: 'Printing for one with correct creation'.
	self assert: self oneDollar printString = '1 dollar' description: 'Printing for one with invalid creation'
	
	! !

!SimpleMeasureTest methodsFor: 'test'!
testRemFrom

	self
		should: [self oneCelsius remFrom: 0]
		raise: InvalidBinaryOperationException
		withExceptionDo: [ :anException |
			self
				assert: anException description notNil;
				assert: anException operationName = 'rest';
				assert: anException leftOperand = 0;
				assert: anException rightOperand = self oneCelsius]! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderByMeasure

	self assert: (self tenMeters \\ self tenMeters) = (self meter with: 10\\10).
	self assert: (self oneMeter \\ self tenMeters) = (self meter with: 1\\10).
	self assert: (self tenMeters \\ self oneSecond) = (self meter with: 10\\1).
	self assert: (self tenMeters \\ self threeSeconds) = (self meter with: 10\\3).

	
! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderByZero

	self should: [ self tenPesos \\ 0 ] raise: Exception.
! !

!SimpleMeasureTest methodsFor: 'test integer remainder' stamp: 'HAW 3/25/2017 20:20:21'!
testRemainderCompoundMeasureByMeasure

	self should: [(self tenPesos + self tenDollars) \\ self tenPesos ] raise: InvalidOperationException

! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderFloatByMeasure

	self assert: (10.5 \\ self tenPesos) = 0.5
! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:22'!
testRemainderInfinity
 
	self
		should: [self oneMeter \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity'].
	self
		should: [Infinity \\ self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and 1 meter'].
	self
		should: [self oneMeter negated \\ Infinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Infinity'].
	self
		should: [Infinity \\ self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderIntegerByMeasure

	self assert: 1 \\ self tenPesos = 1

! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/26/2009 11:27'!
testRemainderMinusInfinity
 
	self
		should: [self oneMeter \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity'].
	self
		should: [MinusInfinity \\ self oneMeter]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and 1 meter'].
	self
		should: [self oneMeter negated \\ MinusInfinity]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Multiplication operation is indeterminate between 0 and Minus Infinity'].
	self
		should: [MinusInfinity \\ self oneMeter negated]
		raise: IndeterminateOperationException
		withExceptionDo: [:anException |
			self assert:
				anException description =
					'The Remainder operation is indeterminate between Minus Infinity and -1 meter']! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderOfBaseUnit

	self assert: (self tenMeters \\ 10) amount = 0.
	self assert: (self tenMeters \\ 10) unit = self meter.
	
	self assert: (self tenMeters \\ 3) amount = 1.
! !

!SimpleMeasureTest methodsFor: 'test integer remainder'!
testRemainderOfDerivedUnit

	self assert: (self tenKilometers \\ 9 ) amount = 1.
	self assert: (self tenKilometers \\ 9 ) unit = self kilometer.
	
! !

!SimpleMeasureTest methodsFor: 'test' stamp: 'HAW 3/25/2017 19:11:51'!
testRoundTo

	self assert: ((SimpleMeasure amount: 1 unit: self celsius) roundTo: 1) = (self celsius with: 1).
	self assert: ((SimpleMeasure amount: 1 unit: self celsius) roundTo: 0.1) = (self celsius with: 1).
	self assert: ((SimpleMeasure amount: 1.4 unit: self celsius) roundTo: 1) = (self celsius with: 1).
	self assert: ((SimpleMeasure amount: 1.5 unit: self celsius) roundTo: 1) = (self celsius with: 2).
	self assert: ((SimpleMeasure amount: 1.09 unit: self celsius) roundTo: 1) = (self celsius with: 1).
	self assert: ((SimpleMeasure amount: -1 unit: self celsius) roundTo: 1) = (self celsius with: -1).
	self assert: ((SimpleMeasure amount: -1.1 unit: self celsius) roundTo: 1) = (self celsius with: -1)! !

!SimpleMeasureTest methodsFor: 'test testing'!
testSameDomainAs

	self assert: (self oneMeter sameDomainAs: self oneMeter).
	self assert: (self oneMeter sameDomainAs: self oneKilometer).
	self assert: (self oneKilometer sameDomainAs: self oneMeter).
	self deny: (self oneMeter sameDomainAs: self onePeso).
	self deny: (self onePeso sameDomainAs: self oneMeter).! !

!SimpleMeasureTest methodsFor: 'test add'!
testSimplificationsAddingWithZero

	self
		assert: (self oneMeter + 0) = self oneMeter;
		assert: (self oneMeter + 0) unit = self oneMeter unit! !

!SimpleMeasureTest methodsFor: 'test division'!
testSimplificationsDividingFromZero

	self assert: (0 / self oneMeter) = 0! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractAssociativity

	self assert: (self tenMeters - self oneMeter - self oneMeter) amount = ((self tenMeters - self oneMeter) - self oneMeter) amount.
	self assert: ((self tenMeters - self oneMeter) - self oneMeter) amount = (self tenMeters - (self oneMeter + self oneMeter)) amount

	! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractBaseUnit

	self assert: (self tenMeters - self oneMeter) amount = 9.
	self assert: (self tenMeters - self oneMeter) unit = self meter
	! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractDerivedUnit

	self assert: (self oneKilometer - self oneMeter) amount = 999.
	self assert: (self oneKilometer - self oneMeter) unit = self meter.

	

	! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractDividedMeasure

	self assert: ((self tenMeters - (self tenMeters / self fivePesos)) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((self tenMeters - (self tenMeters / self fivePesos)) atSameBaseUnitAs: (self meter / self peso)) = (self tenMeters negated / self fivePesos)
! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractFloatWithMeasure

	self assert: ((10.01 - self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((10.01 - self tenMeters) atSameBaseUnitAs: NullUnit new) = 10.01.	
	
! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractFractionWithMeasure

	self assert: ((1/3 - self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((1/3 - self tenMeters) atSameBaseUnitAs: NullUnit new) = (1/3).	! !

!SimpleMeasureTest methodsFor: 'test infinity' stamp: 'SeanTAllen 11/26/2009 11:28'!
testSubtractInfinity
  
	self assert: self oneMeter - Infinity = MinusInfinity.
	self assert: Infinity - self oneMeter = Infinity.
	self assert: self oneMeter negated - Infinity = MinusInfinity.
	self assert: Infinity - self oneMeter negated = Infinity! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractIntegerWithMeasure

	self assert: ((10 - self tenMeters) atSameBaseUnitAs: self meter) = self tenMeters negated.
	self assert: ((10 - self tenMeters) atSameBaseUnitAs: NullUnit new) = 10.	! !

!SimpleMeasureTest methodsFor: 'test minus infinity' stamp: 'SeanTAllen 11/27/2009 14:11'!
testSubtractMinusInfinity
 
	self assert: self oneMeter - MinusInfinity = Infinity.
	self assert: MinusInfinity - self oneMeter = MinusInfinity.
	self assert: self oneMeter negated - MinusInfinity = Infinity.
	self assert: MinusInfinity - self oneMeter negated = MinusInfinity! !

!SimpleMeasureTest methodsFor: 'test subtract'!
testSubtractMultipliedMeasure

	self assert: ((self tenMeters - (self tenMeters * self fivePesos)) atSameBaseUnitAs: self meter) = self tenMeters.
	self assert: ((self tenMeters - (self tenMeters * self fivePesos)) atSameBaseUnitAs: (self meter * self peso)) = (self tenMeters negated * self fivePesos)! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testTo

	self assert: (self oneMeter to: self tenMeters) from = self oneMeter.
	self assert: (self oneMeter to: self tenMeters) to = self tenMeters.
	self assert: (self oneMeter to: self tenMeters) by = self oneMeter.	

	self assert: (self tenMeters to: self oneKilometer) by = self oneMeter.
	self assert: (self oneCentimeter to: self oneKilometer) by = self oneCentimeter! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToAt

	| coll |

	coll := self tenMeters to: (self tenMeters * 2).
	1 to: coll size do: [ :index | self assert: (coll at: index) amount = (9 + index) ]! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToAtByNegative

	| coll |
	
	coll := (self tenMeters * 2) to: self tenMeters by: self oneMeter negated.
	
	1 to: coll size do: [ :index | self assert: (coll at: index) amount = (21 - index) ]	! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToBy

	self assert: (self oneMeter to: self tenMeters by: self oneCentimeter ) from = self oneMeter.
	self assert: (self oneMeter to: self tenMeters by: self oneCentimeter ) to = self tenMeters.
	self assert: (self oneMeter to: self tenMeters by: self oneCentimeter ) by = self oneCentimeter! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToByDo

	| value |
	
	value := 1.
	(self oneMeter to: self tenMeters by: self oneMeter) do: [ :aMeasure |
		self assert: value = aMeasure amount.
		value := value + 1 ]
! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToCollect

	| coll |
	
	coll := (self oneMeter to: self tenMeters) collect: [ :aMeasure | aMeasure amount ].
	coll inject: 1 into: [ :value :amount | self assert: value = amount. value + 1 ]! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToFirst


	self assert: (self oneMeter to: self tenMeters) first = self oneMeter.
	self assert: (self tenMeters to: self oneMeter by: self oneMeter negated) first = self tenMeters! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToLast


	self assert: (self oneMeter to: self tenMeters) last = self tenMeters.
	self assert: (self tenMeters to: self oneMeter by: self oneMeter negated) last = self oneMeter! !

!SimpleMeasureTest methodsFor: 'test interval related protocol'!
testToSize

	self assert: (self oneCentimeter to: self oneKilometer) size = (100*1000)
	! !

!SimpleMeasureTest methodsFor: 'test truncated'!
testTruncated

	self assert: (self meter with: 1.05) truncated = (self meter with: 1).
	self assert: (self centimeter with: 1.05) truncated = (self centimeter with: 1).
	self assert: ((self peso * self meter ) with: 1.05) truncated = ((self peso * self meter) with: 1).
	self assert: ((self peso / self meter ) with: 1.05) truncated = ((self peso / self meter) with: 1)	! !

!SimpleMeasureTest methodsFor: 'test accessing'!
testUnit

	self assert: self onePeso unit = self peso.
	self assert: self oneMeter unit = self meter! !

!SimpleMeasureTest methodsFor: 'test'!
testUnitNameOf

	self
		assert: (self oneDollar unitNameOf: self dollar) = self dollar nameForOne;
		assert: (self tenDollars unitNameOf: self dollar) = self dollar nameForMany;
		assert: (self zeroDollars unitNameOf: self dollar) = self dollar nameForMany;
		assert: (self oneDollar negated unitNameOf: self dollar) = self dollar nameForOne! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
thirtyPesos

	^SimpleMeasure amount: 30 unit: self peso! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
thousandMillimeters
	
	^SimpleMeasure amount: 1000 unit: self millimeter! !

!SimpleMeasureTest methodsFor: 'time measurements' stamp: 'HAW 3/25/2017 19:11:51'!
threeSeconds

	^SimpleMeasure amount: 3 unit: self second! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twentyDollars

	^SimpleMeasure amount: 20 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twentyPesos
	
	^SimpleMeasure amount: 20 unit: self peso! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twoDollars

	^SimpleMeasure amount: 2 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'time measurements' stamp: 'HAW 3/25/2017 19:11:51'!
twoSecond
	
	^SimpleMeasure amount: 2 unit: self second! !

!SimpleMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroCelsius

	^SimpleMeasure amount: 0 unit: self celsius! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroCentimeters

	^SimpleMeasure amount: 0 unit: self centimeter! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroDollars
	
	^SimpleMeasure amount: 0 unit: self dollar! !

!SimpleMeasureTest methodsFor: 'accessing temperature measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroFahrenheit

	^SimpleMeasure amount: 0 unit: self fahrenheit! !

!SimpleMeasureTest methodsFor: 'accessing distance measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroMeters

	^SimpleMeasure amount: 0 unit: self meter! !

!SimpleMeasureTest methodsFor: 'accessing monetary measurements' stamp: 'HAW 3/25/2017 19:11:51'!
zeroPesos

	^SimpleMeasure amount: 0 unit: self peso! !

!SimpleMeasureTest class methodsFor: 'resources'!
resources

	^Array with: UnitsTestResource! !

!UnitConversionRuleTest methodsFor: 'testing' stamp: 'SeanTAllen 11/28/2009 11:13'!
testAccessing

	| rule |
	
	rule := UnitConversionRule from: 1 to: 2 use: [:aValue | aValue ].
	
	self assert: rule sourceUnit = 1.
	self assert: rule targetUnit = 2.
	self assert: (rule function value: 10) = 10.
	! !

!UnitConversionRuleTest methodsFor: 'testing'!
testConvert

	| block |
	
	block := [:aValue | aValue * 10].
	self assert: ((UnitConversionRule from: 1 to: 2 use: block) value: 10) = 100! !

!UnitConversionRuleTest methodsFor: 'testing'!
testEqual

	| rule block |
	
	block := [:aValue | aValue ].
	rule := UnitConversionRule from: 1 to: 2 use: block.
	
	self assert: rule = (UnitConversionRule from: 1 to: 2 use: block)! !

!UnitConversionRuleTest methodsFor: 'testing'!
testHash

	| block |
	
	block := [:aValue | aValue ].
	self assert: (UnitConversionRule from: 1 to: 2 use: block) hash = (UnitConversionRule from: 1 to: 2 use: block) hash! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'initialization'!
setUp

	peso := BaseUnit named: 'peso'.
	dollar := BaseUnit named: 'dollar'! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'testing' stamp: 'SeanTAllen 11/28/2009 11:22'!
testAccessing

	| adapter block rule |
	
	block := [:value | value ].
	rule := UnitConversionRule from: peso to: dollar use: block.
	adapter := UnitConversionRuleToEdgeAdapter for: rule.
	
	self assert: adapter sourceUnit = peso.
	self assert: adapter targetUnit = dollar.
	self assert: adapter function == block.
	self assert: adapter unitConversionRule == rule.
! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'testing'!
testEdgeProtocol

	| adapter block rule |
	
	block := [:value | value ].
	rule := UnitConversionRule from: peso to: dollar use: block.
	adapter := UnitConversionRuleToEdgeAdapter for: rule.
	
	self assert: (EdgeInterface selectors allSatisfy: [ :aSelector | adapter respondsTo: aSelector ]).
! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'testing'!
testEdgeProtocolBehavior

	| adapter block rule |
	
	block := [:value | value ].
	rule := UnitConversionRule from: peso to: dollar use: block.
	adapter := UnitConversionRuleToEdgeAdapter for: rule.
	
	self assert: adapter source = peso.
	self assert: adapter target = dollar.
	self assert: (adapter convergesTo: dollar).
	self assert: (adapter startsOn: peso).
	self assert: (adapter goesFrom: peso to: dollar).
	self deny: adapter convergesToSelf! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'testing'!
testEqual

	| adapter block rule |
	
	block := [:value | value ].
	rule := UnitConversionRule from: peso to: dollar use: block.
	adapter := UnitConversionRuleToEdgeAdapter for: rule.
	self assert: adapter = (UnitConversionRuleToEdgeAdapter for: rule)! !

!UnitConversionRuleToEdgeAdapterTest methodsFor: 'testing'!
testHash

	| block rule |
	
	block := [:value | value ].
	rule := UnitConversionRule from: peso to: dollar use: block.

	self assert: (UnitConversionRuleToEdgeAdapter for: rule) hash = (UnitConversionRuleToEdgeAdapter for: rule) hash! !

!UnitsTestResource methodsFor: 'initialization'!
addUnit: aUnit

	units at: aUnit name put: aUnit.
! !

!UnitsTestResource methodsFor: 'temperature units - accessing'!
celsius

	^units at: self celsiusName! !

!UnitsTestResource methodsFor: 'temperature units - naming'!
celsiusName

	^'gradoCentigrado'! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
centavo

	^units at: self centavoName! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
centavoName

	^'centavo'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
centimeter

	^units at: self centimeterName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
centimeterName

	^'centimeter'! !

!UnitsTestResource methodsFor: 'temperature units - creating'!
createCelsius

	^NotProportionalDerivedUnit 
		baseUnit: self kelvin 
		conversionBlock:  [:kelvin | kelvin + (5463/20)] 
		reciprocalConversionBlock: [ :celsius | celsius - (5463/20) ]
		named: self celsiusName 
		sign: '¦Ç¬¨¦Ç¬ù'! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:01'!
createCentavo

	^ProportionalDerivedUnit baseUnit: self peso conversionFactor: 1/100 named: self centavoName sign: '$ centavo'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createCentimeter

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 1/ 100
		named: self centimeterName 
		sign: 'cm'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createDecameter

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 10
		named: self decameterName 
		sign: 'dcm'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createDecimeter

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 1/10 
		named: self decimeterName 
		sign: 'dm'! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:01'!
createDollar

	^BaseUnit named: self dollarName sign: 'u$s'! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:01'!
createEuro

	^BaseUnit named: self euroName sign: 'E'! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:01'!
createEuroCent

	^ProportionalDerivedUnit baseUnit: self euro conversionFactor: 1/ 100 named: self euroCentName sign: 'E cent'! !

!UnitsTestResource methodsFor: 'temperature units - creating'!
createFahrenheit 

	^NotProportionalDerivedUnit 
		baseUnit: self kelvin 
		conversionBlock:  [:kelvin | (kelvin - 32) * (5/9)  +  (27315/100) ] 
		reciprocalConversionBlock: [ :fahrenheit | (fahrenheit - (27315/100)) * 9/5 + 32 ]
		named: self fahrenheitName 
		sign: 'F'
		! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createHectometer

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 100 
		named: self hectometerName 
		sign: 'hm'! !

!UnitsTestResource methodsFor: 'temperature units - creating'!
createKelvin

	^BaseUnit named: self kelvinName sign: 'K'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createKilometer

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 1000
		named: self kilometerName 
		sign: 'km'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createMeter

	^BaseUnit named: self meterName sign: 'm'! !

!UnitsTestResource methodsFor: 'meter units - creating'!
createMillimeter

	^ProportionalDerivedUnit 
		baseUnit: self meter 
		conversionFactor: 1/1000
		named: self millimeterName 
		sign: 'ml'! !

!UnitsTestResource methodsFor: 'time units - creating'!
createMinute

	^ProportionalDerivedUnit baseUnit: self second conversionFactor: 60 named: self minuteName! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:01'!
createPeso

	^BaseUnit named: self pesoName sign: '$'! !

!UnitsTestResource methodsFor: 'monetary units - creating' stamp: 'HernanWilkinson 3/23/2017 16:02'!
createQuarter

	^ProportionalDerivedUnit baseUnit: self dollar conversionFactor: 1/ 4 named: self quarterName sign: 'u$s quarter'
	! !

!UnitsTestResource methodsFor: 'time units - creating'!
createSecond

	^BaseUnit named: self secondName! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
decameter

	^units at: self decameterName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
decameterName

	^'decameter'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
decimeter

	^units at: self decimeterName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
decimeterName

	^'decimeter'! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
dollar

	^units at: self dollarName! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
dollarName

	^'dollar'! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
euro

	^units at: self euroName! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
euroCent

	^units at: self euroCentName! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
euroCentName

	^'euro cent'! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
euroName

	^'euro'! !

!UnitsTestResource methodsFor: 'temperature units - accessing'!
fahrenheit 

	^units at: self fahrenheitName! !

!UnitsTestResource methodsFor: 'temperature units - naming'!
fahrenheitName

	^'fahrenheit'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
hectometer

	^units at: self hectometerName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
hectometerName

	^'hectometer'! !

!UnitsTestResource methodsFor: 'initialization' stamp: 'HAW 8/22/2017 11:55:45'!
installUnitsAsGlobals

	units do: [:aUnit |
		(aUnit ~= self second and: [ aUnit ~= self minute ]) ifTrue: [ Smalltalk at: aUnit name asSymbol put: aUnit ]].! !

!UnitsTestResource methodsFor: 'temperature units - accessing'!
kelvin

	^units at: self kelvinName! !

!UnitsTestResource methodsFor: 'temperature units - naming'!
kelvinName

	^'kelvin'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
kilometer

	^units at: self kilometerName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
kilometerName

	^'kilometer'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
meter

	^units at: self meterName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
meterName

	^'meter'! !

!UnitsTestResource methodsFor: 'meter units - accessing'!
millimeter

	^units at: self millimeterName! !

!UnitsTestResource methodsFor: 'meter units - naming'!
millimeterName

	^'millimeter'! !

!UnitsTestResource methodsFor: 'time units - accessing'!
minute
	
	^units at: self minuteName! !

!UnitsTestResource methodsFor: 'time units - naming'!
minuteName

	^'minuto'! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
peso

	^units at: self pesoName! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
pesoName

	^'peso'! !

!UnitsTestResource methodsFor: 'monetary units - accessing'!
quarter

	^units at: self quarterName! !

!UnitsTestResource methodsFor: 'monetary units - naming'!
quarterName

	^'quarter'! !

!UnitsTestResource methodsFor: 'time units - accessing'!
second
	
	^units at: self secondName! !

!UnitsTestResource methodsFor: 'time units - naming'!
secondName

	^'segundo'! !

!UnitsTestResource methodsFor: 'initialization'!
setUp

	units := Dictionary new.
	self
		addUnit: self createMeter;
		addUnit: self createMillimeter;		
		addUnit: self createCentimeter;
		addUnit: self createDecimeter;
		addUnit: self createDecameter;		
		addUnit: self createHectometer;		
		addUnit: self createKilometer;		
		addUnit: self createPeso;
		addUnit: self createDollar;
		addUnit: self createEuro;
		addUnit: self createCentavo;
		addUnit: self createQuarter;
		addUnit: self createEuroCent;
		addUnit: self createKelvin;
		addUnit: self createCelsius;
		addUnit: self createFahrenheit;
		addUnit: self createSecond;
		addUnit: self createMinute.
! !

!UnitsTestResource class methodsFor: 'initialization' stamp: 'HAW 8/22/2017 11:56:17'!
installUnitsAsGlobals

	^self new 
		setUp;
		installUnitsAsGlobals.
	! !

!CircularReadStream methodsFor: 'enumerating - private' stamp: 'mx 11/1/2007 20:33'!
advancePositions: aMeasure

	| amount |
	
	amount := (aMeasure convertTo: unit) floor amount.
	position := ((position - 1 + amount) \\ collection size) + 1! !

!CircularReadStream methodsFor: 'testing' stamp: 'mx 11/21/2007 15:23'!
atBegin

	^position = 1! !

!CircularReadStream methodsFor: 'testing' stamp: 'mx 11/21/2007 15:23'!
atEnd

	^position = collection size! !

!CircularReadStream methodsFor: 'accessing' stamp: 'mx 11/21/2007 09:07'!
current

	^collection at: position! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 11/1/2007 20:27'!
distanceFrom: anObject

	^self distanceFrom: anObject toObjectPosition: position! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 11/1/2007 20:28'!
distanceFrom: anObject to: anotherObject

	^self distanceFrom: anObject toObjectPosition: (collection indexOf: anotherObject)! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 11/1/2007 20:26'!
distanceFrom: anObject toObjectPosition: aToObjectPosition

	| fromObjectPosition steps |

	fromObjectPosition := collection indexOf: anObject.
	steps := aToObjectPosition >= fromObjectPosition 
		ifTrue: [aToObjectPosition - fromObjectPosition]
		ifFalse: [collection size - fromObjectPosition + aToObjectPosition].
	^unit with: steps! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 11/21/2007 09:09'!
distanceTo: anObject

	^self distanceTo: anObject from: self current! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 10/1/2007 21:03'!
distanceTo: anObject from: anotherObject

	^self distanceFrom: anotherObject to: anObject! !

!CircularReadStream methodsFor: 'accessing' stamp: 'mx 2/21/2008 21:40'!
first

	^collection first! !

!CircularReadStream methodsFor: 'conditional protocol' stamp: 'mx 11/17/2007 13:50'!
ifAtBeginDo: aBlock else: anotherBlock

	^self atBegin
		ifTrue: aBlock
		ifFalse: anotherBlock! !

!CircularReadStream methodsFor: 'conditional protocol' stamp: 'mx 11/17/2007 13:49'!
ifAtEndDo: aBlock else: anotherBlock

	^self atEnd
		ifTrue: aBlock
		ifFalse: anotherBlock! !

!CircularReadStream methodsFor: 'initialization' stamp: 'mx 11/21/2007 15:22'!
initializeOn: aCollection moving: aUnit startingCircleAtIndex: anIndex

	collection := (aCollection copyFrom: anIndex to: aCollection size), (aCollection copyFrom: 1 to: anIndex - 1).
	unit := aUnit.
	self upToBegin! !

!CircularReadStream methodsFor: 'collection protocol' stamp: 'mx 11/17/2007 15:59'!
inject: aMeasure into: aBlock

	^collection inject: aMeasure into: aBlock! !

!CircularReadStream methodsFor: 'testing' stamp: 'mx 11/21/2007 16:12'!
isPrevious: anObject to: anotherObject

	^(collection indexOf: anObject) < (collection indexOf: anotherObject)! !

!CircularReadStream methodsFor: 'accessing' stamp: 'mx 2/21/2008 20:50'!
last

	^collection last! !

!CircularReadStream methodsFor: 'enumerating' stamp: 'mx 9/30/2007 17:52'!
next

	^self next: (unit with: 1)! !

!CircularReadStream methodsFor: 'enumerating' stamp: 'mx 11/21/2007 09:08'!
next: aMeasure

	self advancePositions: aMeasure.
	^self current! !

!CircularReadStream methodsFor: 'enumerating' stamp: 'mx 9/30/2007 17:52'!
previous

	^self previous: (unit with: 1)! !

!CircularReadStream methodsFor: 'enumerating' stamp: 'mx 11/1/2007 20:32'!
previous: aMeasure

	^self next: aMeasure negated! !

!CircularReadStream methodsFor: 'querying' stamp: 'mx 11/21/2007 15:24'!
relativeDistanceFrom: anObject to: anotherObject

	^(collection indexOf: anObject) > (collection indexOf: anotherObject)
		ifTrue: [(self distanceFrom: anotherObject to: anObject) negated]
		ifFalse: [self distanceFrom: anObject to: anotherObject]
! !

!CircularReadStream methodsFor: 'positioning' stamp: 'mx 10/6/2007 15:56'!
upTo: anObject

	position := collection indexOf: anObject! !

!CircularReadStream methodsFor: 'positioning' stamp: 'mx 11/21/2007 15:24'!
upToBegin

	position := 1! !

!CircularReadStream methodsFor: 'positioning' stamp: 'mx 11/21/2007 15:24'!
upToEnd

	position := collection size! !

!CircularReadStream class methodsFor: 'instance creation' stamp: 'mx 11/21/2007 10:28'!
on: aCollection moving: aUnit

	^self on: aCollection moving: aUnit startingCircleAtIndex: 1! !

!CircularReadStream class methodsFor: 'instance creation' stamp: 'mx 11/21/2007 10:29'!
on: aCollection moving: aUnit startingCircleAt: anObject

	^self on: aCollection moving: aUnit startingCircleAtIndex: (aCollection indexOf: anObject)! !

!CircularReadStream class methodsFor: 'instance creation' stamp: 'mx 11/21/2007 10:29'!
on: aCollection moving: aUnit startingCircleAtIndex: anIndex

	^self new initializeOn: aCollection moving: aUnit startingCircleAtIndex: anIndex! !

!ConversionTable methodsFor: 'table setup'!
addUnitConversionRule: aUnitConvertionRule

	self 
		removeUnitConversionRuleFrom: aUnitConvertionRule sourceUnit
		to: aUnitConvertionRule targetUnit
		ifAbsent: [].
	unitConversionRules add: aUnitConvertionRule.
	self invalidateGraph! !

!ConversionTable methodsFor: 'graph management'!
createGraph 

	graph := Graph edges: self createGraphEdges
	
		! !

!ConversionTable methodsFor: 'graph management'!
createGraphEdges

	| edges |
	
	edges := unitConversionRules collect: [ :aConvertionRule | self createUnitConversionRuleToEdgeAdapterFor: aConvertionRule ].
	^edges
	
		! !

!ConversionTable methodsFor: 'table setup - private'!
createProportionalUnitConversionFunctionWithSource: sourceMeasure andTarget: targetMeasure

	^ProportionalUnitConversionFunction measure: sourceMeasure isProportionalTo: targetMeasure! !

!ConversionTable methodsFor: 'table setup - private'!
createUnitConversionRuleFrom: aSourceUnit to: aTargetUnit using: anEvaluation

	^UnitConversionRule 
		from: aSourceUnit baseUnit
		to: aTargetUnit baseUnit
		use: anEvaluation! !

!ConversionTable methodsFor: 'graph management'!
createUnitConversionRuleToEdgeAdapterFor: aUnitConvertionRule

	^UnitConversionRuleToEdgeAdapter for: aUnitConvertionRule! !

!ConversionTable methodsFor: 'table setup'!
from: aSourceUnit to: aTargetUnit use: aUnitConvertionFunction

	| unitConvertionRule |
	unitConvertionRule := self createUnitConversionRuleFrom: aSourceUnit to: aTargetUnit using: aUnitConvertionFunction. 
	self addUnitConversionRule: unitConvertionRule.
! !

!ConversionTable methodsFor: 'graph management'!
graph

	graph isNil ifTrue: [ self createGraph ].
	^graph! !

!ConversionTable methodsFor: 'initialization'!
initialize

	unitConversionRules := OrderedCollection new.
	self invalidateGraph! !

!ConversionTable methodsFor: 'graph management'!
invalidateGraph

	graph := nil! !

!ConversionTable methodsFor: 'table setup'!
measure: aSourceMeasure convertsTo: aTargetMeasure

	| unitConvertionFunction |
	unitConvertionFunction := self 
		createProportionalUnitConversionFunctionWithSource: aSourceMeasure
		andTarget: aTargetMeasure.
	self 
		from: aSourceMeasure unit
		to: aTargetMeasure unit
		use: unitConvertionFunction! !

!ConversionTable methodsFor: 'table setup'!
measure: aSourceMeasure isEquivalentTo: aTargetMeasure

	self measure: aSourceMeasure convertsTo: aTargetMeasure.
	self measure: aTargetMeasure convertsTo: aSourceMeasure! !

!ConversionTable methodsFor: 'table setup'!
removeUnitConversionRuleFrom: aSourceUnit to: aTargetUnit

	^self 
		removeUnitConversionRuleFrom: aSourceUnit
		to: aTargetUnit
		ifAbsent: [self signalNoUnitConversionRuleFrom: aSourceUnit to: aTargetUnit]! !

!ConversionTable methodsFor: 'table setup'!
removeUnitConversionRuleFrom: aSourceUnit to: aTargetUnit ifAbsent: aBlock

	| currentConvertionRule |
	currentConvertionRule := self 
		unitConversionRuleFrom: aSourceUnit
		to: aTargetUnit
		ifNone: [^aBlock value].
	unitConversionRules remove: currentConvertionRule.
	self invalidateGraph! !

!ConversionTable methodsFor: 'exceptions'!
signalNoUnitConversionRuleFrom: aSourceUnit to: aTargetUnit

	NoUnitConversionRuleException signalWithSourceUnit: aSourceUnit targetUnit: aTargetUnit! !

!ConversionTable methodsFor: 'accessing'!
unitConversionRuleFrom: aSourceUnit to: aTargetUnit

	^self 
		unitConversionRuleFrom: aSourceUnit
		to: aTargetUnit
		ifNone: [self signalNoUnitConversionRuleFrom: aSourceUnit to: aTargetUnit]! !

!ConversionTable methodsFor: 'accessing'!
unitConversionRuleFrom: aSourceUnit to: aTargetUnit ifNone: aBlock

	^unitConversionRules 
		detect: [:aUnitConvertionRule | aUnitConvertionRule convertsFrom: aSourceUnit to: aTargetUnit]
		ifNone: aBlock! !

!ConversionTable methodsFor: 'accessing'!
unitConversionRules

	^unitConversionRules copy! !

!ConversionTable class methodsFor: 'instance creation'!
new

	^super new initialize! !

!MeasureConverter methodsFor: 'testing'!
canConvert: aSourceMeasure to: aTargetUnit

	[self findPathAndConvert: aSourceMeasure to: aTargetUnit]
		on: GraphPathNotFoundException
		do: [:ex | ^ex return: false].
	^true! !

!MeasureConverter methodsFor: 'converting'!
convert: aSourceMeasure to: aTargetUnit

	^[aSourceMeasure convertTo: aTargetUnit using: self]
		on: GraphPathNotFoundException
		do: [:aSignal |
			CanNotConvertMeasureException
				signalSourceMeasure: aSourceMeasure
				targetUnit: aTargetUnit]! !

!MeasureConverter methodsFor: 'converting - private'!
convert: aSourceMeasure to: aTargetUnit using: aPath 

	| convertedMeasure |
	
	convertedMeasure := aPath edges
		inject: aSourceMeasure 
		into: [ :aMeasure :aUnitConvertionRule | aUnitConvertionRule value: aMeasure ].

	^convertedMeasure! !

!MeasureConverter methodsFor: 'converting - private' stamp: 'HAW 3/25/2017 20:17:09'!
convertCompoundMeasure: aSourceCompoundMeasure to: aTargetUnit

	| targetMeasure |
	targetMeasure := aSourceCompoundMeasure measures 
				inject: 0
				into: 
					[:convertedMeasure :measureToConvert | 
					convertedMeasure 
						+ (self convert: measureToConvert to: aTargetUnit)].
	^targetMeasure! !

!MeasureConverter methodsFor: 'converting - private'!
convertMeasure: aSourceMeasure to: aTargetUnit

	| targetMeasure |
	targetMeasure := (aSourceMeasure unit sameDomainAs: aTargetUnit) 
		ifTrue: [aSourceMeasure convertTo: aTargetUnit]
		ifFalse: [self findPathAndConvert: aSourceMeasure to: aTargetUnit].
	^targetMeasure! !

!MeasureConverter methodsFor: 'converting - private'!
findPathAndConvert: aSourceMeasure to: aTargetUnit 

	| convertionPath |

	convertionPath := self pathFrom: aSourceMeasure unit to: aTargetUnit.
	^self 
		convert: aSourceMeasure
		to: aTargetUnit
		using: convertionPath! !

!MeasureConverter methodsFor: 'accessing'!
graphPathFinder
	
	^graphPathFinder! !

!MeasureConverter methodsFor: 'initialization'!
initializeWith: aGraphPathFinder 

	graphPathFinder := aGraphPathFinder! !

!MeasureConverter methodsFor: 'converting - private'!
pathFrom: aSourceUnit to: aTargetUnit

	| path |
	
	path := self graphPathFinder pathFrom: aSourceUnit to: aTargetUnit.
	
	^path.
	
	! !

!MeasureConverter class methodsFor: 'instance creation'!
defaultGraphPathFinder

	^GraphPathFinder! !

!MeasureConverter class methodsFor: 'instance creation'!
on: aConvertionTable 

	^self with: (self defaultGraphPathFinder on: (aConvertionTable graph))! !

!MeasureConverter class methodsFor: 'instance creation'!
with: aGraphPathFinder

	^self new initializeWith: aGraphPathFinder! !

!Unit methodsFor: 'mathematic operations'!
* aNumberOrUnit

	^aNumberOrUnit multiplyByUnit: self! !

!Unit methodsFor: 'mathematic operations'!
/ aNumberOrUnit

	^aNumberOrUnit divideByUnit: self! !

!Unit methodsFor: 'converting' stamp: 'SeanTAllen 11/28/2009 12:25'!
adaptToNumber: aNumber andSend: aSelector 
	^ (NumberToArithmeticObjectAdapter number: aNumber) 
		perform: aSelector
		with: self! !

!Unit methodsFor: 'accessing'!
baseUnit

	^self subclassResponsibility! !

!Unit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	self subclassResponsibility! !

!Unit methodsFor: 'converting - private'!
convertToBaseUnit: aMeasure 
	
	self subclassResponsibility! !

!Unit methodsFor: 'accessing'!
denominator

	^NullUnit new! !

!Unit methodsFor: 'accessing'!
denominatorOf: aNumber

	^self denominator with: aNumber denominator
	
! !

!Unit methodsFor: 'mathematic operations'!
divideByUnit: aNumberOrUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private'!
divideDividedUnit: aDividedUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private'!
divideInfinity: anInfinity

	^((NullUnit new / self) * anInfinity unit) with: anInfinity amount! !

!Unit methodsFor: 'mathematic operations - private'!
divideMinusInfinity: aMinusInfinity

	^((NullUnit new / self) * aMinusInfinity unit) with: aMinusInfinity amount! !

!Unit methodsFor: 'mathematic operations - private'!
divideMultipliedUnit: aMultipliedUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private'!
divideNullUnit: aNullUnit 

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:36:30'!
divideSimpleMeasure: aMeasure

	^((NullUnit new / self) * aMeasure unit) with: aMeasure amount! !

!Unit methodsFor: 'mathematic operations - private'!
divideSimpleUnit: aUnit

	self subclassResponsibility! !

!Unit methodsFor: 'accessing'!
doNotImplementHash 
	
	"Do not implement hash because its behavior is the same as object
	See representSameEntityAs:"! !

!Unit methodsFor: 'testing' stamp: 'HernanWilkinson 6/2/2014 11:04'!
isNamed: aName
 
	^ self name sameAs: aName! !

!Unit methodsFor: 'testing' stamp: 'HAW 3/25/2017 18:54:11'!
isNamedAs: aUnit 

	^ aUnit isNamed: self name! !

!Unit methodsFor: 'testing'!
isZero

	^self isNothing! !

!Unit methodsFor: 'mathematic operations'!
multiplyByUnit: aNumberOrUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private'!
multiplyDividedUnit: aDividedUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private'!
multiplyInfinity: anInfinity

	^(anInfinity unit * self) with: anInfinity amount! !

!Unit methodsFor: 'mathematic operations - private'!
multiplyMinusInfinity: aMinusInfinity

	^(aMinusInfinity unit * self) with: aMinusInfinity amount! !

!Unit methodsFor: 'mathematic operations - private'!
multiplyMultipliedUnit: aMultipliedUnit

	self subclassResponsibility! !

!Unit methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:43:17'!
multiplySimpleMeasure: aMeasure

	^(aMeasure unit * self) with: aMeasure amount! !

!Unit methodsFor: 'mathematic operations - private'!
multiplySimpleUnit: aUnit

	self subclassResponsibility! !

!Unit methodsFor: 'accessing'!
name

	^self nameForOne! !

!Unit methodsFor: 'accessing'!
nameFor: aNumber
	"It returns the name that must be used to identify an amount <aNumber> of receiver"

	^aNumber unitNameOf: self! !

!Unit methodsFor: 'accessing'!
nameForMany

	self subclassResponsibility! !

!Unit methodsFor: 'accessing'!
nameForOne

	self subclassResponsibility! !

!Unit methodsFor: 'accessing'!
nameForUndefinedAmount

	^self nameForMany! !

!Unit methodsFor: 'accessing'!
nothingAmount

	self subclassResponsibility! !

!Unit methodsFor: 'accessing' stamp: 'HAW 3/25/2017 19:11:51'!
nullMeasure

	^SimpleMeasure amount: self baseUnit nothingAmount unit: self baseUnit! !

!Unit methodsFor: 'accessing'!
numerator

	^self! !

!Unit methodsFor: 'accessing'!
numeratorOf: aNumber

	^self numerator with: aNumber numerator! !

!Unit methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: self name asString! !

!Unit methodsFor: 'accessing'!
reciprocal

	^self denominator / self numerator! !

!Unit methodsFor: 'testing'!
sameDomainAs: aUnit

	^self baseUnit=aUnit baseUnit
! !

!Unit methodsFor: 'accessing'!
sign

	self subclassResponsibility! !

!Unit methodsFor: 'measurement creation'!
with: aNumber

	self subclassResponsibility! !

!Unit class methodsFor: 'accessing'!
defaultSign

	^'NO SIGN'
! !

!Unit class methodsFor: 'accessing'!
nameForManyEndString

	^'s'

! !

!Unit class methodsFor: 'accessing'!
nameForManyFrom: aString

	^aString , self nameForManyEndString.

! !

!CompoundUnit methodsFor: 'accessing'!
baseUnit

	^self! !

!CompoundUnit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	^aNumber! !

!CompoundUnit methodsFor: 'converting - private'!
convertFromBaseUnit: aMeasure 

	^aMeasure! !

!CompoundUnit methodsFor: 'converting - private'!
convertToBaseUnit: aMeasure 

	^aMeasure! !

!CompoundUnit methodsFor: 'accessing'!
hash

	self subclassResponsibility! !

!CompoundUnit methodsFor: 'accessing'!
nothingAmount

	^0! !

!CompoundUnit methodsFor: 'measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
with: aNumber

	^SimpleMeasure amount: aNumber unit: self! !

!DividedUnit methodsFor: 'comparing'!
= anObject

	^self class = anObject class 
		and: [ numerator = anObject numerator 
		and: [ denominator = anObject denominator ]]! !

!DividedUnit methodsFor: 'accessing'!
denominator

	^denominator! !

!DividedUnit methodsFor: 'mathematic operations'!
divFrom: aNumber

	^aNumber * self reciprocal! !

!DividedUnit methodsFor: 'mathematic operations'!
divideByUnit: aUnit

	^aUnit divideDividedUnit: self! !

!DividedUnit methodsFor: 'mathematic operations - private'!
divideDividedUnit: aDividedUnit

	^self class dividedUnit: self dividedUnit: aDividedUnit! !

!DividedUnit methodsFor: 'mathematic operations - private'!
divideMultipliedUnit: aMultipliedUnit

	^self class dividedUnit: self multipliedUnit: aMultipliedUnit! !

!DividedUnit methodsFor: 'mathematic operations - private'!
divideNullUnit: aNullUnit 
	
	^self class nullUnit: aNullUnit dividedUnit: self! !

!DividedUnit methodsFor: 'mathematic operations - private'!
divideSimpleUnit: aUnit

	^self class dividedUnit: self simpleUnit: aUnit! !

!DividedUnit methodsFor: 'accessing'!
hash

	^numerator hash bitXor: denominator hash! !

!DividedUnit methodsFor: 'initialization'!
initializeNumerator: aUnit denominator: anotherUnit

	numerator := aUnit.
	denominator := anotherUnit! !

!DividedUnit methodsFor: 'mathematic operations'!
multiplyByUnit: aUnit

	^aUnit multiplyDividedUnit: self! !

!DividedUnit methodsFor: 'mathematic operations - private'!
multiplyDividedUnit: aDividedUnit

	^MultipliedUnit dividedUnit: aDividedUnit dividedUnit: self! !

!DividedUnit methodsFor: 'mathematic operations - private'!
multiplyMultipliedUnit: aMultipliedUnit

	^MultipliedUnit multipliedUnit: aMultipliedUnit dividedUnit: self! !

!DividedUnit methodsFor: 'mathematic operations - private'!
multiplySimpleUnit: aUnit

	^MultipliedUnit simpleUnit: aUnit dividedUnit: self! !

!DividedUnit methodsFor: 'accessing'!
nameForMany

	^numerator nameForMany asString , '/' 
		, denominator nameForMany asString! !

!DividedUnit methodsFor: 'accessing'!
nameForOne

	^numerator name asString , '/' , denominator name asString! !

!DividedUnit methodsFor: 'accessing'!
numerator

	^numerator! !

!DividedUnit methodsFor: 'accessing'!
sign

	^numerator sign, '/', denominator sign! !

!DividedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit dividedUnit: anotherDividedUnit

	^(aDividedUnit numerator * anotherDividedUnit denominator) / (aDividedUnit denominator * anotherDividedUnit numerator)
! !

!DividedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit multipliedUnit: aMultipliedUnit

	^(aDividedUnit numerator) / (aDividedUnit denominator * aMultipliedUnit)
! !

!DividedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit simpleUnit: aUnit

	^(aDividedUnit numerator) / (aDividedUnit denominator * aUnit)
! !

!DividedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit dividedUnit: aDividedUnit

	^(aMultipliedUnit * aDividedUnit denominator) / (aDividedUnit numerator)
! !

!DividedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit multipliedUnit: anotherMultipliedUnit

	| numeratorFactors denominatorFactors numerator denominator |

	numeratorFactors := aMultipliedUnit factors.
	denominatorFactors := OrderedCollection new.

	anotherMultipliedUnit factors
		do: [:aUnit | numeratorFactors remove: aUnit ifAbsent: [denominatorFactors add: aUnit]].

	numerator := MultipliedUnit factors: numeratorFactors.
	denominator := MultipliedUnit factors: denominatorFactors.

	^denominator = NullUnit new
		ifTrue: [numerator]
		ifFalse: [self new initializeNumerator: numerator denominator: denominator]! !

!DividedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit simpleUnit: aUnit

	| numeratorFactors |
	
	numeratorFactors := aMultipliedUnit factors.
	numeratorFactors remove: aUnit ifAbsent: [ ^self new initializeNumerator: aMultipliedUnit denominator: aUnit ].
	
	^MultipliedUnit factors: numeratorFactors

! !

!DividedUnit class methodsFor: 'instance creation - private'!
nullUnit: aNullUnit dividedUnit: aDividedUnit 
	
	^self new initializeNumerator: aDividedUnit denominator denominator: aDividedUnit numerator.! !

!DividedUnit class methodsFor: 'instance creation - private'!
nullUnit: aNullUnit multipliedUnit: aMultipliedUnit 
	
	^self new initializeNumerator: aNullUnit denominator: aMultipliedUnit! !

!DividedUnit class methodsFor: 'instance creation - private'!
nullUnit: aNullUnit simpleUnit: aSimpleUnit 

	^self new initializeNumerator: aNullUnit denominator: aSimpleUnit
	! !

!DividedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit dividedUnit: aDividedUnit

	^(aUnit * aDividedUnit denominator) / (aDividedUnit numerator)
! !

!DividedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit multipliedUnit: aMultipliedUnit

	| denominatorFactors |
	
	denominatorFactors := aMultipliedUnit factors.
	denominatorFactors remove: aUnit ifAbsent: [ ^self new initializeNumerator: aUnit denominator: aMultipliedUnit ].
	
	"It never can be left NullUnit on NullUnit because aMultipliedUnit has like minimum 2 units"
	^self new initializeNumerator: NullUnit new denominator: (MultipliedUnit factors: denominatorFactors)! !

!DividedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit simpleUnit: anotherUnit

	^aUnit=anotherUnit
		ifTrue: [ NullUnit new ]
		ifFalse: [ self new initializeNumerator: aUnit denominator: anotherUnit ]! !

!MultipliedUnit methodsFor: 'comparing'!
= anObject

	^self class = anObject class and: [ self hasSameFactorsAs: anObject ]! !

!MultipliedUnit methodsFor: 'mathematic operations'!
divFrom: aNumber

	^(DividedUnit nullUnit: aNumber unit multipliedUnit: self) with: aNumber! !

!MultipliedUnit methodsFor: 'mathematic operations'!
divideByUnit: aUnit

	^aUnit divideMultipliedUnit: self! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
divideDividedUnit: aDividedUnit

	^DividedUnit multipliedUnit: self dividedUnit: aDividedUnit! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
divideMultipliedUnit: aMultipliedUnit

	^DividedUnit multipliedUnit: self multipliedUnit: aMultipliedUnit! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
divideNullUnit: aNullUnit 
	
	^DividedUnit nullUnit: aNullUnit multipliedUnit: self! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
divideSimpleUnit: aUnit

	^DividedUnit multipliedUnit: self simpleUnit: aUnit! !

!MultipliedUnit methodsFor: 'accessing'!
factors
	
	^factors copy! !

!MultipliedUnit methodsFor: 'accessing'!
factorsSize

	^factors size! !

!MultipliedUnit methodsFor: 'accessing - private'!
factorsToStreamDoing: aBlock

	| stream |

	stream := WriteStream on: String new.
	factors do: [:aUnit |
		stream nextPutAll: (aBlock value: aUnit).
		stream nextPut: $.].
	stream skip: -1.
	^stream contents! !

!MultipliedUnit methodsFor: 'testing'!
hasSameFactorsAs: aMultipliedUnit
	
	| factorsIntersection |
	
	factorsIntersection := aMultipliedUnit factors.
	factors do: [:aUnit | factorsIntersection remove: aUnit ifAbsent: [ ^false ] ].
	
	^factorsIntersection isEmpty

		! !

!MultipliedUnit methodsFor: 'accessing'!
hash

	^factors inject: 0 into: [ :aHash :aUnit | aHash bitXor: aUnit hash ]! !

!MultipliedUnit methodsFor: 'initialization'!
initializeFactors: aCollection

	factors := aCollection! !

!MultipliedUnit methodsFor: 'mathematic operations'!
multiplyByUnit: aUnit

	^aUnit multiplyMultipliedUnit: self! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
multiplyDividedUnit: aDividedUnit

	^self class dividedUnit: aDividedUnit multipliedUnit: self! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
multiplyMultipliedUnit: aMultipliedUnit

	^self class multipliedUnit: aMultipliedUnit multipliedUnit: self! !

!MultipliedUnit methodsFor: 'mathematic operations - private'!
multiplySimpleUnit: aUnit

	^self class simpleUnit: aUnit multipliedUnit: self! !

!MultipliedUnit methodsFor: 'accessing'!
nameForMany

	^self factorsToStreamDoing: [:aUnit | aUnit nameForMany asString]! !

!MultipliedUnit methodsFor: 'accessing'!
nameForOne

	^self factorsToStreamDoing: [:aUnit | aUnit nameForOne asString]! !

!MultipliedUnit methodsFor: 'accessing'!
sign

	^self factorsToStreamDoing: [ :aUnit | aUnit sign ]! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit dividedUnit: anotherDividedUnit

	^(aDividedUnit numerator * anotherDividedUnit numerator) / (aDividedUnit denominator * anotherDividedUnit denominator)! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit multipliedUnit: aMultipliedUnit

	^self multipliedUnit: aMultipliedUnit dividedUnit: aDividedUnit! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
dividedUnit: aDividedUnit simpleUnit: aUnit

	^self simpleUnit: aUnit dividedUnit: aDividedUnit! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
factors: aCollection

	aCollection isEmpty ifTrue: [ ^NullUnit new ].
	aCollection size=1 ifTrue: [ ^aCollection first ].
	^self new initializeFactors: aCollection! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit dividedUnit: aDividedUnit

	^(aMultipliedUnit * aDividedUnit numerator) / (aDividedUnit denominator)! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit multipliedUnit: anotherMultipliedUnit

	| factors |
	
	factors := aMultipliedUnit factors.
	factors addAll: anotherMultipliedUnit factors.
	
	^self new initializeFactors: factors.! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
multipliedUnit: aMultipliedUnit simpleUnit: aUnit

	^self simpleUnit: aUnit multipliedUnit: aMultipliedUnit! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit dividedUnit: aDividedUnit

	^(aUnit * aDividedUnit numerator) / (aDividedUnit denominator)! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit multipliedUnit: aMultipliedUnit

	| factors |
	
	factors := aMultipliedUnit factors.
	factors add: aUnit.
	
	^self new initializeFactors: factors! !

!MultipliedUnit class methodsFor: 'instance creation - private'!
simpleUnit: aUnit simpleUnit: anotherUnit

	^self new initializeFactors: (OrderedCollection with: aUnit with: anotherUnit)! !

!NullUnit methodsFor: 'accessing'!
baseUnit
	
	^self! !

!NullUnit methodsFor: 'converting'!
convertAmountFromBaseUnit: aNumber

	^0! !

!NullUnit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	^0! !

!NullUnit methodsFor: 'converting - private'!
convertFromBaseUnit: aMeasure 
	
	^aMeasure! !

!NullUnit methodsFor: 'converting - private'!
convertToBaseUnit: aMeasure 
	
	^aMeasure! !

!NullUnit methodsFor: 'mathematic operations'!
divideByUnit: aUnit

	^aUnit! !

!NullUnit methodsFor: 'mathematic operations - private'!
divideDividedUnit: aDividedUnit

	^aDividedUnit reciprocal! !

!NullUnit methodsFor: 'mathematic operations - private'!
divideMultipliedUnit: aMultipliedUnit

	^DividedUnit nullUnit: self multipliedUnit: aMultipliedUnit! !

!NullUnit methodsFor: 'mathematic operations - private'!
divideNullUnit: aNullUnit 
	
	^self! !

!NullUnit methodsFor: 'mathematic operations - private'!
divideSimpleUnit: aUnit

	^DividedUnit nullUnit: self simpleUnit: aUnit! !

!NullUnit methodsFor: 'mathematic operations'!
multiplyByUnit: aUnit

	^aUnit! !

!NullUnit methodsFor: 'mathematic operations - private'!
multiplyDividedUnit: aDividedUnit

	^aDividedUnit! !

!NullUnit methodsFor: 'mathematic operations - private'!
multiplyMultipliedUnit: aMultipliedUnit

	^aMultipliedUnit! !

!NullUnit methodsFor: 'mathematic operations - private'!
multiplySimpleUnit: aUnit

	^aUnit! !

!NullUnit methodsFor: 'accessing'!
name

	^''! !

!NullUnit methodsFor: 'accessing'!
nameForMany

	^self name! !

!NullUnit methodsFor: 'accessing'!
nameForOne

	^self name! !

!NullUnit methodsFor: 'accessing'!
nothingAmount
	
	^0! !

!NullUnit methodsFor: 'accessing'!
sign

	^self class defaultSign! !

!NullUnit methodsFor: 'measurement creation'!
with: aNumber

	^aNumber! !

!NullUnit class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 21:00:31'!
afterLoadInitialization

	self initialize! !

!NullUnit class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:51'!
initialize

	uniqueInstance isNil ifTrue: [ self initializeUniqueInstance ]! !

!NullUnit class methodsFor: 'initialization' stamp: 'HernanWilkinson 11/28/2009 19:04'!
initializeUniqueInstance

	uniqueInstance := super new.! !

!NullUnit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 11/28/2009 22:11'!
new

	^uniqueInstance! !

!SimpleUnit methodsFor: 'mathematic operations' stamp: 'HAW 3/25/2017 19:11:51'!
divFrom: aNumber

	^SimpleMeasure amount: aNumber unit: NullUnit new / self! !

!SimpleUnit methodsFor: 'mathematic operations'!
divideByUnit: aUnit

	^aUnit divideSimpleUnit: self! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
divideDividedUnit: aDividedUnit

	^DividedUnit simpleUnit: self dividedUnit: aDividedUnit! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
divideMultipliedUnit: aMultipliedUnit

	^DividedUnit simpleUnit: self multipliedUnit: aMultipliedUnit! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
divideNullUnit: aNullUnit 

	^DividedUnit nullUnit: aNullUnit simpleUnit: self! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
divideSimpleUnit: aUnit

	^DividedUnit simpleUnit: self simpleUnit: aUnit
! !

!SimpleUnit methodsFor: 'mathematic operations'!
multiplyByUnit: aUnit

	^aUnit multiplySimpleUnit: self! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
multiplyDividedUnit: aDividedUnit

	^MultipliedUnit dividedUnit: aDividedUnit simpleUnit: self! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
multiplyMultipliedUnit: aMultipliedUnit

	^MultipliedUnit multipliedUnit: aMultipliedUnit simpleUnit: self! !

!SimpleUnit methodsFor: 'mathematic operations - private'!
multiplySimpleUnit: aUnit

	^MultipliedUnit simpleUnit: self simpleUnit: aUnit! !

!SimpleUnit methodsFor: 'measurement creation' stamp: 'HAW 3/25/2017 19:11:51'!
with: aNumber

	^SimpleMeasure amount: aNumber unit: self! !

!BaseUnit methodsFor: 'comparing' stamp: 'HernanWilkinson 5/14/2012 17:34'!
= anObject

	^ (anObject isKindOf: self class) and: [ self name = anObject name ]! !

!BaseUnit methodsFor: 'accessing'!
baseUnit
	
	^self! !

!BaseUnit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	^aNumber
! !

!BaseUnit methodsFor: 'converting - private'!
convertFromBaseUnit: aMeasure 
	
	^aMeasure! !

!BaseUnit methodsFor: 'converting - private'!
convertToBaseUnit: aMeasure 
	
	^aMeasure! !

!BaseUnit methodsFor: 'initialization'!
initializeNameFomOne: aString nameForMany: anotherString sign: aSignString

	nameForOne := aString.
	nameForMany := anotherString.
	sign := aSignString.! !

!BaseUnit methodsFor: 'accessing'!
nameForMany

	^nameForMany! !

!BaseUnit methodsFor: 'accessing'!
nameForOne

	^nameForOne! !

!BaseUnit methodsFor: 'accessing'!
nothingAmount

	^0! !

!BaseUnit methodsFor: 'accessing'!
sign

	^sign! !

!BaseUnit class methodsFor: 'instance creation'!
nameForOne: aString nameForMany: anotherString

	^self new initializeNameFomOne: aString nameForMany: anotherString sign: self defaultSign! !

!BaseUnit class methodsFor: 'instance creation'!
nameForOne: aString nameForMany: anotherString sign: aSignString

	^self new initializeNameFomOne: aString nameForMany: anotherString sign: aSignString! !

!BaseUnit class methodsFor: 'instance creation'!
named: aString 

	^self 
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: self defaultSign.
! !

!BaseUnit class methodsFor: 'instance creation'!
named: aString sign: aSignString

	^self 
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: aSignString
! !

!DerivedUnit methodsFor: 'converting - private'!
convertAmountFromBaseUnit: aNumber

	self subclassResponsibility! !

!DerivedUnit methodsFor: 'converting - private' stamp: 'HAW 3/25/2017 19:11:51'!
convertFromBaseUnit: aSimpleMeasure 

	^SimpleMeasure amount: (self convertAmountFromBaseUnit: aSimpleMeasure amount) unit: self! !

!DerivedUnit methodsFor: 'converting - private' stamp: 'HAW 3/25/2017 19:11:51'!
convertToBaseUnit: aSimpleMeasure 
	
	^SimpleMeasure 
		amount: (self convertAmountToBaseUnit: aSimpleMeasure amount)
		unit: self baseUnit! !

!DerivedUnit methodsFor: 'accessing'!
nothingAmount

	^self convertAmountFromBaseUnit: self baseUnit nothingAmount! !

!NotProportionalDerivedUnit methodsFor: 'accessing'!
baseUnit

	^baseUnit! !

!NotProportionalDerivedUnit methodsFor: 'converting - private'!
convertAmountFromBaseUnit: aNumber

	^reciprocalConversionBlock value: aNumber! !

!NotProportionalDerivedUnit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	^conversionBlock value: aNumber! !

!NotProportionalDerivedUnit methodsFor: 'initialization'!
initializeBaseUnit: aUnit conversionBlock: aBlock reciprocalConversionBlock: anotherBlock nameForOne: aString nameForMany: anotherString sign: aSignString

	baseUnit := aUnit.
	conversionBlock := aBlock.
	reciprocalConversionBlock := anotherBlock.
	nameForOne := aString.
	nameForMany := anotherString.
	sign := aSignString! !

!NotProportionalDerivedUnit methodsFor: 'accessing'!
nameForMany

	^nameForMany! !

!NotProportionalDerivedUnit methodsFor: 'accessing'!
nameForOne

	^nameForOne! !

!NotProportionalDerivedUnit methodsFor: 'accessing'!
sign

	^sign! !

!NotProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionBlock: aBlock reciprocalConversionBlock: anotherBlock nameForOne: aString nameForMany: anotherString sign: aSignString 

	^self new 
		initializeBaseUnit: aUnit
		conversionBlock: aBlock
		reciprocalConversionBlock: anotherBlock
		nameForOne: aString
		nameForMany: anotherString
		sign: aSignString! !

!NotProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionBlock: aBlock reciprocalConversionBlock: anotherBlock named: aString

	^self 
		baseUnit: aUnit
		conversionBlock: aBlock
		reciprocalConversionBlock: anotherBlock
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: self defaultSign! !

!NotProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionBlock: aBlock reciprocalConversionBlock: anotherBlock named: aString sign: aSignString

	^self 
		baseUnit: aUnit
		conversionBlock: aBlock
		reciprocalConversionBlock: anotherBlock
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: aSignString! !

!ProportionalDerivedUnit methodsFor: 'accessing'!
baseUnit

	^baseUnit! !

!ProportionalDerivedUnit methodsFor: 'accessing'!
conversionFactor
	
	^conversionFactor! !

!ProportionalDerivedUnit methodsFor: 'converting - private'!
convertAmountFromBaseUnit: aNumber

	^aNumber / conversionFactor! !

!ProportionalDerivedUnit methodsFor: 'converting'!
convertAmountToBaseUnit: aNumber

	^aNumber * conversionFactor! !

!ProportionalDerivedUnit methodsFor: 'initialization'!
initializeBaseUnit: aUnit conversionFactor: aNumber nameForOne: aString nameForMany: anotherString sign: aSignString

	baseUnit := aUnit.
	conversionFactor := aNumber.
	nameForOne := aString.
	nameForMany := anotherString.
	sign := aSignString! !

!ProportionalDerivedUnit methodsFor: 'accessing'!
nameForMany

	^nameForMany! !

!ProportionalDerivedUnit methodsFor: 'accessing'!
nameForOne

	^nameForOne! !

!ProportionalDerivedUnit methodsFor: 'accessing'!
sign

	^sign! !

!ProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionFactor: aNumber nameForOne: aString nameForMany: anotherString sign: aSignString

	^self new 
		initializeBaseUnit: aUnit
		conversionFactor: aNumber
		nameForOne: aString
		nameForMany: anotherString
		sign: aSignString! !

!ProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionFactor: aNumber named: aString

	^self 
		baseUnit: aUnit
		conversionFactor: aNumber
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: self defaultSign! !

!ProportionalDerivedUnit class methodsFor: 'instance creation'!
baseUnit: aUnit conversionFactor: aNumber named: aString sign: aSignString

	^self 
		baseUnit: aUnit
		conversionFactor: aNumber
		nameForOne: aString
		nameForMany: (self nameForManyFrom: aString)
		sign: aSignString! !

!UnitConversionFunctionInterface methodsFor: 'evaluating'!
value: anObject

	^self subclassResponsibility! !

!ProportionalUnitConversionFunction methodsFor: 'comparing'!
= anotherProportionalUnitConvertionFunction

	^self class=anotherProportionalUnitConvertionFunction class and: 
		[ sourceMeasure=anotherProportionalUnitConvertionFunction sourceMeasure and: 
		[ equivalentMeasure=anotherProportionalUnitConvertionFunction equivalentMeasure ] ]! !

!ProportionalUnitConversionFunction methodsFor: 'accessing'!
equivalentMeasure

	^equivalentMeasure! !

!ProportionalUnitConversionFunction methodsFor: 'accessing'!
hash

	^sourceMeasure hash bitXor: equivalentMeasure hash.
! !

!ProportionalUnitConversionFunction methodsFor: 'initialization'!
initializeMeasure: aSourceMeasure isEquivalentTo: aEquivalentMeasure

	sourceMeasure := aSourceMeasure.
	equivalentMeasure := aEquivalentMeasure.
	proportionalMeasure := aEquivalentMeasure / aSourceMeasure! !

!ProportionalUnitConversionFunction methodsFor: 'printing'!
printOn: aStream

	equivalentMeasure printOn: aStream.
	aStream nextPutAll: ' / '.
	sourceMeasure printOn: aStream.
	aStream nextPutAll: '* valueToConvert'! !

!ProportionalUnitConversionFunction methodsFor: 'accessing'!
proportionalMeasure 

	^proportionalMeasure
! !

!ProportionalUnitConversionFunction methodsFor: 'accessing'!
sourceMeasure 

	^sourceMeasure
! !

!ProportionalUnitConversionFunction methodsFor: 'evaluating'!
value: aMeasure

	^proportionalMeasure * aMeasure! !

!ProportionalUnitConversionFunction class methodsFor: 'instance creation'!
assertCreationPreconditions: aSourceMeasure equivalentMeasure: aEquivalentMeasure

	(aSourceMeasure isNothing 
		or: [aSourceMeasure sameDomainAs: aEquivalentMeasure]) 
			ifTrue: 
				[InvalidProportionalUnitConversionFunctionException 
					signalSourceMeasure: aSourceMeasure
					equivalentMeasure: aEquivalentMeasure]! !

!ProportionalUnitConversionFunction class methodsFor: 'instance creation'!
measure: aSourceMeasure isProportionalTo: aEquivalentMeasure

	self assertCreationPreconditions: aSourceMeasure
		equivalentMeasure: aEquivalentMeasure.
	^self new initializeMeasure: aSourceMeasure
		isEquivalentTo: aEquivalentMeasure! !

!UnitConversionRuleInterface methodsFor: 'converting'!
convertsFrom: aSourceUnit to: aTargetUnit

	^(self sourceUnit sameDomainAs: aSourceUnit) and: [ self targetUnit sameDomainAs: aTargetUnit ]! !

!UnitConversionRuleInterface methodsFor: 'converting'!
convertsSameDomainsAs: aUnitConvertionRule

	^self convertsFrom: aUnitConvertionRule sourceUnit to: aUnitConvertionRule targetUnit! !

!UnitConversionRuleInterface methodsFor: 'accessing'!
function

	self subclassResponsibility! !

!UnitConversionRuleInterface methodsFor: 'accessing'!
sourceUnit

	self subclassResponsibility! !

!UnitConversionRuleInterface methodsFor: 'accessing'!
targetUnit

	self subclassResponsibility! !

!UnitConversionRuleInterface methodsFor: 'converting'!
value: aMeasure

	self subclassResponsibility! !

!UnitConversionRule methodsFor: 'comparing'!
= anotherConvertionRule

	^self class=anotherConvertionRule class and: 
		[ (self convertsSameDomainsAs: anotherConvertionRule) and:
		[ function=anotherConvertionRule function ] ].! !

!UnitConversionRule methodsFor: 'accessing'!
function

	^function! !

!UnitConversionRule methodsFor: 'accessing'!
hash

	^sourceUnit hash bitXor: targetUnit hash.! !

!UnitConversionRule methodsFor: 'initialization'!
initializeFrom: aSourceUnit to: aTargetUnit using: aFunction

	sourceUnit := aSourceUnit.
	targetUnit := aTargetUnit.
	function := aFunction! !

!UnitConversionRule methodsFor: 'printing'!
printOn: aStream

	sourceUnit printOn: aStream.
	aStream nextPutAll: ' -> '.
	targetUnit printOn: aStream.
	aStream nextPutAll: ': '.
	function printOn: aStream! !

!UnitConversionRule methodsFor: 'accessing'!
sourceUnit

	^sourceUnit! !

!UnitConversionRule methodsFor: 'accessing'!
targetUnit

	^targetUnit! !

!UnitConversionRule methodsFor: 'converting'!
value: aMeasure

	^function value: aMeasure! !

!UnitConversionRule class methodsFor: 'instance creation'!
from: aSourceUnit to: aTargetUnit use: aFunction

	^self new initializeFrom: aSourceUnit to: aTargetUnit using: aFunction! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'comparing'!
= anotherConvertionRuleToEdgeAdapter

	^self class=anotherConvertionRuleToEdgeAdapter class and: 
		[ unitConversionRule=anotherConvertionRuleToEdgeAdapter unitConversionRule ]
	! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
convergesTo: aUnit

	^unitConversionRule targetUnit sameDomainAs: aUnit
	! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
convergesToSelf

	^unitConversionRule sourceUnit sameDomainAs: unitConversionRule targetUnit
	! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'accessing'!
function

	^unitConversionRule function! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
goesFrom: aSourceUnit to: aTargetUnit

	^unitConversionRule convertsFrom: aSourceUnit to: aTargetUnit
	! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
hash

	^unitConversionRule hash
	! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'initialization'!
initializeWith: aConvertionRule

	unitConversionRule := aConvertionRule! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'printing'!
printOn: aStream

	unitConversionRule printOn: aStream! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
source

	^unitConversionRule sourceUnit! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'accessing'!
sourceUnit

	^unitConversionRule sourceUnit! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
startsOn: aUnit

	^unitConversionRule sourceUnit sameDomainAs: aUnit! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'edge protocol'!
target

	^unitConversionRule targetUnit! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'accessing'!
targetUnit

	^unitConversionRule targetUnit! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'accessing'!
unitConversionRule

	^unitConversionRule! !

!UnitConversionRuleToEdgeAdapter methodsFor: 'converting'!
value: aMeasure

	^unitConversionRule value: aMeasure! !

!UnitConversionRuleToEdgeAdapter class methodsFor: 'instance creation'!
for: aConvertionRule

	^self new initializeWith: aConvertionRule! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
* aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
+ aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
- aMeasure

	^self + aMeasure negated! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
/ aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
// aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
< aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
<= aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
> aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
>= aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
\\ aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'mx 8/1/2008 16:33'!
adaptToNumber: aNumber andSend: aSelector 
	^ (NumberToArithmeticObjectAdapter number: aNumber) 
		perform: aSelector
		with: self! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:34:22'!
addCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
addInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
addMinusInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:30:38'!
addSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
amount
	
	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
atBaseUnit: aBaseUnit ifNone: aBlock
	
	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
baseUnit

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
between: min and: max

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'mx 8/1/2008 16:33'!
coerce: aNumber 
	^ NumberToArithmeticObjectAdapter number: aNumber! !

!ArithmeticObject methodsFor: 'magnitude protocol - private'!
compareGreaterThan: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 19:59:43'!
composeWith: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:03:10'!
composeWithNumber: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:01:30'!
composeWithSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'converting'!
convertAmountToBaseUnit

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'converting'!
convertTo: aUnit 

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'converting' stamp: 'HernanWilkinson 4/8/2014 12:10'!
convertTo: aUnit ifSuccessful: aSuccessfulBlock ifFails: aFailureBlock

	| convertedMeasure |
	
	convertedMeasure := [ self convertTo: aUnit ] 
		on: CanNotConvertMeasureException 
		do: [ :anError | ^aFailureBlock value ].
		
	^aSuccessfulBlock value: convertedMeasure ! !

!ArithmeticObject methodsFor: 'converting - private'!
convertTo: aTargetUnit using: aMeasureConverter

	self subclassResponsibility.! !

!ArithmeticObject methodsFor: 'converting'!
convertToBaseUnit

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
denominator

	^self unit denominatorOf: self amount! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
divFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:38:07'!
divideCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
divideInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
divideMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:35:52'!
divideSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:12'!
equalsCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:49:36'!
equalsSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'formatting'!
formatOn: aStream using: aFormatter

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
generality

	^100! !

!ArithmeticObject methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:53:14'!
greaterThanSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing' stamp: 'HernanWilkinson 4/8/2014 12:13'!
isAmountInteger
	
	^self amount isInteger! !

!ArithmeticObject methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:55:58'!
isCompoundMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing' stamp: 'mx 4/1/2007 18:09'!
isFixed

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing' stamp: 'GabrielOmarCotelli 9/18/2009 20:43'!
isFraction

	^false! !

!ArithmeticObject methodsFor: 'testing'!
isNothing

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing' stamp: 'GabrielOmarCotelli 9/18/2009 20:42'!
isNumber

	^false! !

!ArithmeticObject methodsFor: 'testing' stamp: 'mx 3/17/2007 16:37'!
isZero

	^self isNothing! !

!ArithmeticObject methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:54:39'!
lessThanSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
max: aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
measures
	
	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'magnitude protocol'!
min: aMagnitude

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:41:25'!
moduloCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
moduloInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
moduloMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:39:46'!
moduloSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:44:36'!
multiplyCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
multiplyInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
multiplyMinusInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:42:39'!
multiplySimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
negated

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing'!
negative

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
numerator

	^self unit numeratorOf: self amount! !

!ArithmeticObject methodsFor: 'testing'!
positive

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
quoFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'mx 3/19/2007 08:51'!
quotientFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
remFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:48:13'!
remainderCompoundMeasure: aMeasureBag

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'mx 3/19/2007 08:52'!
remainderFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
remainderInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
remainderMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:46:28'!
remainderSimpleMeasure: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
roundTo: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing'!
sameDomainAs: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'testing'!
sameUnitAs: aMeasure

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
subtractFrom: aNumber

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
subtractInfinity: anInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'arithmetic operations - private'!
subtractMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'interval protocol'!
to: stop

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'interval protocol'!
to: stop by: step

 	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'interval protocol' stamp: 'HAW 5/25/2009 18:31'!
toYourself

	^self to: self! !

!ArithmeticObject methodsFor: 'arithmetic operations'!
truncated

	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
unit
	
	self subclassResponsibility! !

!ArithmeticObject methodsFor: 'accessing'!
unitNameOf: aUnit

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations'!
* anAritmethicObject

	^self value * anAritmethicObject value! !

!Evaluation methodsFor: 'mathematic operations'!
+ anAritmethicObject

	^self value + anAritmethicObject value! !

!Evaluation methodsFor: 'mathematic operations'!
- anAritmethicObject

	^self value - anAritmethicObject value! !

!Evaluation methodsFor: 'mathematic operations'!
/ anAritmethicObject

	^self value / anAritmethicObject value! !

!Evaluation methodsFor: 'mathematic operations'!
// anAritmethicObject

	^self value // anAritmethicObject value! !

!Evaluation methodsFor: 'magnitude protocol'!
< aMagnitude

	^self value < aMagnitude! !

!Evaluation methodsFor: 'magnitude protocol'!
<= aMagnitude
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand"

	^(aMagnitude < self value) not! !

!Evaluation methodsFor: 'comparing'!
= anObject

	^self value = anObject value! !

!Evaluation methodsFor: 'magnitude protocol'!
> aMagnitude
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand"

	^aMagnitude < self value! !

!Evaluation methodsFor: 'magnitude protocol'!
>= aMagnitude
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand"

	^(self value < aMagnitude) not! !

!Evaluation methodsFor: 'mathematic operations'!
\\ anAritmethicObject

	^self value \\ anAritmethicObject value! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:35:13'!
addCompoundMeasure: aMeasureBag

	^self value addCompoundMeasure: aMeasureBag! !

!Evaluation methodsFor: 'arithmetic operations - private'!
addInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
addMinusInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:32:35'!
addSimpleMeasure: aMeasure

	^self value addSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'accessing'!
amount
	
	^self value amount! !

!Evaluation methodsFor: 'accessing'!
atBaseUnit: aBaseUnit ifNone: aBlock

	^self value atBaseUnit: aBaseUnit ifNone: aBlock! !

!Evaluation methodsFor: 'accessing'!
baseUnit

	^self unit baseUnit! !

!Evaluation methodsFor: 'magnitude protocol'!
between: min and: max
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand"

	^(min <= self value) and: [self value <= max]! !

!Evaluation methodsFor: 'magnitude protocol - private'!
compareGreaterThan: aNumber

	^self value compareGreaterThan: aNumber! !

!Evaluation methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:00:44'!
composeWith: aMeasure

	^self value composeWith: aMeasure! !

!Evaluation methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:03:44'!
composeWithNumber: aMeasure

	^self value composeWithNumber: aMeasure! !

!Evaluation methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:02:21'!
composeWithSimpleMeasure: aMeasure

	^self value composeWithSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'converting'!
convertAmountToBaseUnit

	^self value convertAmountToBaseUnit! !

!Evaluation methodsFor: 'converting'!
convertTo: aUnit

	^self value convertTo: aUnit! !

!Evaluation methodsFor: 'converting - private'!
convertTo: aTargetUnit using: aMeasureConverter

	^self value convertTo: aTargetUnit using: aMeasureConverter! !

!Evaluation methodsFor: 'converting'!
convertToBaseUnit

	^self value convertToBaseUnit! !

!Evaluation methodsFor: 'mathematic operations - private'!
divFrom: aNumber 
	
	^self value divFrom: aNumber! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:38:37'!
divideCompoundMeasure: aMeasureBag

	^self value divideCompoundMeasure: aMeasureBag! !

!Evaluation methodsFor: 'arithmetic operations - private'!
divideInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
divideMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:37:03'!
divideSimpleMeasure: aMeasure

	^self value divideSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'message forwarding'!
doesNotUnderstand: aMessage

	^aMessage sendTo: self value! !

!Evaluation methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:26'!
equalsCompoundMeasure: aMeasureBag

	^self value = aMeasureBag! !

!Evaluation methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:49:47'!
equalsSimpleMeasure: aMeasure

	^self value = aMeasure! !

!Evaluation methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:53:54'!
greaterThanSimpleMeasure: aMeasure

	^self value greaterThanSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'comparing'!
hash

	^self value hash! !

!Evaluation methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:46'!
isCompoundMeasure

	^self value isCompoundMeasure! !

!Evaluation methodsFor: 'testing' stamp: 'mx 4/1/2007 18:09'!
isFixed

	^self value isFixed! !

!Evaluation methodsFor: 'testing'!
isNothing

	^self value isNothing! !

!Evaluation methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:55:17'!
lessThanSimpleMeasure: aMeasure

	^self value lessThanSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'magnitude protocol'!
max: aMagnitude
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand.
	Self is given back and not self value to continue maintaining the evaluation"

	self value < aMagnitude ifTrue: [^aMagnitude].
	^self! !

!Evaluation methodsFor: 'accessing'!
measures

	^self value measures! !

!Evaluation methodsFor: 'magnitude protocol'!
min: aMagnitude
	"Send value to self so that it is faster and does not pass through #doesNotUnderstand.
	Self is given back and not self value to continue maintaining the evaluation"

	self value < aMagnitude ifTrue: [^self].
	^aMagnitude! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:41:59'!
moduloCompoundMeasure: aMeasureBag

	^self value moduloCompoundMeasure: aMeasureBag! !

!Evaluation methodsFor: 'arithmetic operations - private'!
moduloInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
moduloMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:40:34'!
moduloSimpleMeasure: aMeasure

	^self value moduloSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:45:27'!
multiplyCompoundMeasure: aMeasureBag

	^self value multiplyCompoundMeasure: aMeasureBag! !

!Evaluation methodsFor: 'arithmetic operations - private'!
multiplyInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
multiplyMinusInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:43:35'!
multiplySimpleMeasure: aMeasure

	^self value multiplySimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'mathematic operations'!
negated
	
	^self value negated! !

!Evaluation methodsFor: 'testing'!
negative

	^self value negative! !

!Evaluation methodsFor: 'magnitude protocol'!
notInclusiveBetween: min and: max
	"Create local variable #val for best performance"

	| val |

	val := self value.
	^val > min and: [val <= max]! !

!Evaluation methodsFor: 'magnitude protocol'!
notInclusiveBetween: min andNotInclusive: max
	"Create local variable #val for best performance"

	| val |

	val := self value.
	^val > min and: [val < max]! !

!Evaluation methodsFor: 'testing'!
positive

	^self value positive! !

!Evaluation methodsFor: 'printing'!
printOn: aStream

	self value printOn: aStream! !

!Evaluation methodsFor: 'mathematic operations - private'!
quoFrom: aNumber

	^self value quoFrom: aNumber
! !

!Evaluation methodsFor: 'mathematic operations - private'!
remFrom: aNumber

	^self value remFrom: aNumber
! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:48:48'!
remainderCompoundMeasure: aMeasureBag

	^self value remainderCompoundMeasure: aMeasureBag! !

!Evaluation methodsFor: 'arithmetic operations - private'!
remainderInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
remainderMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'mathematic operations - private' stamp: 'HAW 3/25/2017 19:47:30'!
remainderSimpleMeasure: aMeasure

	^self value remainderSimpleMeasure: aMeasure! !

!Evaluation methodsFor: 'proxy implementation'!
respondsTo: aSymbol

	^(super respondsTo: aSymbol) or:[self value respondsTo: aSymbol]! !

!Evaluation methodsFor: 'arithmetic operations'!
roundTo: aNumber
	
	^self value roundTo: aNumber
! !

!Evaluation methodsFor: 'testing'!
sameDomainAs: aMeasure

	^self value sameDomainAs: aMeasure! !

!Evaluation methodsFor: 'testing'!
sameUnitAs: aMeasure

	^self value sameUnitAs: aMeasure! !

!Evaluation methodsFor: 'mathematic operations - private'!
subtractFrom: aNumber

	^self value subtractFrom: aNumber! !

!Evaluation methodsFor: 'arithmetic operations - private'!
subtractInfinity: anInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'arithmetic operations - private'!
subtractMinusInfinity: aMinusInfinity

	self subclassResponsibility! !

!Evaluation methodsFor: 'interval protocol'!
to: stop

	^self value to: stop! !

!Evaluation methodsFor: 'interval protocol'!
to: stop by: step

	^self to: stop by: step! !

!Evaluation methodsFor: 'mathematic operations'!
truncated
	
	^self value truncated
! !

!Evaluation methodsFor: 'accessing'!
unit
	
	^self value unit! !

!Evaluation methodsFor: 'accessing'!
unitNameFor: aNumber

	^self value unitNameFor: aNumber! !

!Evaluation methodsFor: 'evaluating'!
value

	self subclassResponsibility! !

!CachedEvaluation methodsFor: 'evaluating'!
computeValue

	^evaluation value! !

!CachedEvaluation methodsFor: 'initialization'!
initializeCachedValue

	cachedValue := self computeValue! !

!CachedEvaluation methodsFor: 'initialization'!
initializeFor: anEvaluation

	evaluation := anEvaluation! !

!CachedEvaluation methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: 'Cache for: '.
	evaluation printOn: aStream! !

!CachedEvaluation methodsFor: 'evaluating'!
value

	cachedValue isNil ifTrue: [self initializeCachedValue].
	^cachedValue! !

!CachedEvaluation class methodsFor: 'instance creation'!
for: anEvaluation

	^self new initializeFor: anEvaluation! !

!DummyEvaluation methodsFor: 'initialization'!
initializeMeasure: aMeasure

	measure := aMeasure! !

!DummyEvaluation methodsFor: 'evaluating'!
value

	^measure! !

!DummyEvaluation class methodsFor: 'instance creation'!
of: aMeasure

	^self new initializeMeasure: aMeasure! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
* aMeasure

	aMeasure isNothing
		ifTrue: [self signalIndeterminateOperation: 'Multiplication' leftOperand: aMeasure].
	^aMeasure multiplyInfinity: self! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
+ aMeasure

	^aMeasure addInfinity: self! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
- aMeasure

	^aMeasure subtractInfinity: self! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
/ aMeasure

	self signalIndeterminateOperation: 'Division' rightOperand: aMeasure! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
// aMeasure

	self signalIndeterminateOperation: 'Modulo' rightOperand: aMeasure! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
< aMagnitude

	^false! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
<= aMagnitude

	^self = aMagnitude! !

!InfinityDefinition methodsFor: 'magnitude protocol' stamp: 'mx 3/28/2007 21:53'!
> aMagnitude

	^(self = aMagnitude) not! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
>= aMagnitude

	^true! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
\\ aMeasure

	self signalIndeterminateOperation: 'Remainder' rightOperand: aMeasure! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
addInfinity: anInfinity

	^self! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
addMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Sum' leftOperand: aMinusInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:31:13'!
addSimpleMeasure: aMeasure

	^self! !

!InfinityDefinition methodsFor: 'accessing'!
amount

	^self! !

!InfinityDefinition methodsFor: 'accessing'!
baseUnit

	^NullUnit new! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
between: min and: max

	^(self >= min) and: [self <= max]! !

!InfinityDefinition methodsFor: 'magnitude protocol - private'!
compareGreaterThan: aNumber

	^true! !

!InfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:02:29'!
composeWith: aMeasure

	^aMeasure composeWithSimpleMeasure: self! !

!InfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:03:18'!
composeWithNumber: aNumber

	^CompoundMeasure measures: (OrderedCollection with: self with: aNumber)! !

!InfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:01:44'!
composeWithSimpleMeasure: aMeasure

	^CompoundMeasure measures: (OrderedCollection with: self with: aMeasure)! !

!InfinityDefinition methodsFor: 'converting'!
convertAmountToBaseUnit

	^self unit convertAmountToBaseUnit: self! !

!InfinityDefinition methodsFor: 'converting - private'!
convertInSameDomainTo: aTargetUnit

	^aTargetUnit convertFromBaseUnit: (self unit convertToBaseUnit: self)! !

!InfinityDefinition methodsFor: 'converting'!
convertTo: aTargetUnit

	^(self unit sameDomainAs: aTargetUnit)
		ifTrue: [self convertInSameDomainTo: aTargetUnit]
		ifFalse: [CanNotConvertMeasureException signalSourceMeasure: self targetUnit: aTargetUnit]! !

!InfinityDefinition methodsFor: 'converting - private'!
convertTo: aTargetUnit using: aMeasureConverter
	"NOT TO USE. Use the message convert:to:  of MeasureConverter.
	This message is here by a question of double-dispatch.
	If this message is used, the exceptions will not be correctly handleds."

	^aMeasureConverter convertMeasure: self to: aTargetUnit! !

!InfinityDefinition methodsFor: 'converting'!
convertToBaseUnit

	^self convertTo: self baseUnit! !

!InfinityDefinition methodsFor: 'accessing'!
denominator

	^1! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
divFrom: aNumber

	^0! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
divideByUnit: aUnit

	^aUnit with: 1 / self! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
divideInfinity: anInfinity

	self signalIndeterminateOperation: 'Division' leftOperand: anInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
divideMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Division' leftOperand: aMinusInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:36:07'!
divideSimpleMeasure: aMeasure

	^0! !

!InfinityDefinition methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:31'!
equalsCompoundMeasure: aMeasureBag

	^self = aMeasureBag! !

!InfinityDefinition methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:49:50'!
equalsSimpleMeasure: aMeasure

	^self = aMeasure! !

!InfinityDefinition methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:53:23'!
greaterThanSimpleMeasure: aMeasure

	^true! !

!InfinityDefinition methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:11'!
isCompoundMeasure

	^false! !

!InfinityDefinition methodsFor: 'testing' stamp: 'mx 3/28/2007 21:53'!
isFixed

	^false! !

!InfinityDefinition methodsFor: 'testing'!
isNothing

	^false! !

!InfinityDefinition methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:54:50'!
lessThanSimpleMeasure: aMeasure

	^false! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
max: aMagnitude

	^self! !

!InfinityDefinition methodsFor: 'magnitude protocol'!
min: aMagnitude

	^aMagnitude! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
moduloInfinity: anInfinity

	self signalIndeterminateOperation: 'Modulo' leftOperand: anInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
moduloMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Modulo' leftOperand: aMinusInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:39:38'!
moduloSimpleMeasure: aMeasure

	^0! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyByUnit: aUnit

	^aUnit with: self! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyInfinity: anInfinity

	^self! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:42:54'!
multiplySimpleMeasure: aMeasure

	^self! !

!InfinityDefinition methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 11/28/2009 20:10'!
negated

	^MinusInfinityDefinition new! !

!InfinityDefinition methodsFor: 'testing'!
negative

	^false! !

!InfinityDefinition methodsFor: 'accessing'!
numerator

	 ^self! !

!InfinityDefinition methodsFor: 'testing'!
positive

	^true! !

!InfinityDefinition methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: 'Infinity'! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
quoFrom: aNumber

	^aNumber / self! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
remFrom: aNumber

	^aNumber - (self * (self quoFrom: aNumber))! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
remainderInfinity: anInfinity

	self signalIndeterminateOperation: 'Remainder' leftOperand: anInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
remainderMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Remainder' leftOperand: aMinusInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:46:45'!
remainderSimpleMeasure: aMeasure

	^aMeasure - (self * (self quoFrom: aMeasure))! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
roundTo: aNumber

	^self! !

!InfinityDefinition methodsFor: 'testing'!
sameDomainAs: aMeasure 
	
	^self unit sameDomainAs: aMeasure unit! !

!InfinityDefinition methodsFor: 'testing'!
sameUnitAs: aMeasure

	^self unit = aMeasure unit! !

!InfinityDefinition methodsFor: 'exceptions'!
signalIndeterminateOperation: anOperationString leftOperand: aLeftOperand

	IndeterminateOperationException
		signalOperation: anOperationString
		leftOperand: aLeftOperand
		rightOperand: self! !

!InfinityDefinition methodsFor: 'exceptions'!
signalIndeterminateOperation: anOperationString rightOperand: aRightOperand

	IndeterminateOperationException
		signalOperation: anOperationString
		leftOperand: self
		rightOperand: aRightOperand! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractFrom: aNumber

	^self negated! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractInfinity: anInfinity

	self signalIndeterminateOperation: 'Subtract' leftOperand: anInfinity! !

!InfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Subtract' leftOperand: aMinusInfinity! !

!InfinityDefinition methodsFor: 'interval protocol'!
to: stop

	^self to: stop by: (self unit with: 1)! !

!InfinityDefinition methodsFor: 'interval protocol'!
to: stop by: step

	^ArithmeticObjectInterval
		from: self
		to: stop
		by: step
		intervalStrategy: InfinityIntervalStrategy new! !

!InfinityDefinition methodsFor: 'arithmetic operations'!
truncated

	^self! !

!InfinityDefinition methodsFor: 'accessing'!
unit

	^self baseUnit! !

!InfinityDefinition methodsFor: 'accessing'!
unitNameOf: aUnit

	^aUnit nameForMany! !

!InfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 21:00:09'!
afterLoadInitialization

	self initialize! !

!InfinityDefinition class methodsFor: 'naming' stamp: 'HernanWilkinson 11/28/2009 20:11'!
globalName 

	^ #Infinity ! !

!InfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:30'!
initialize

	uniqueInstance isNil ifTrue: [ self initializeUniqueInstance ].
	self initializeGlobalVariable.
! !

!InfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 11:33:38'!
initializeGlobalVariable

	Smalltalk at: self globalName put: uniqueInstance 

! !

!InfinityDefinition class methodsFor: 'initialization'!
initializeUniqueInstance

	uniqueInstance := super new! !

!InfinityDefinition class methodsFor: 'instance creation'!
new

	^uniqueInstance! !

!Measure methodsFor: 'accessing'!
hash 
	
	self subclassResponsibility! !

!Measure methodsFor: 'testing'!
isZero

	^self isNothing! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:45:21'!
* aMeasure

	^aMeasure multiplyCompoundMeasure: self
! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:35:09'!
+ aMeasure

	^aMeasure addCompoundMeasure: self! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:38:34'!
/ aMeasure 

	^aMeasure divideCompoundMeasure: self! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:41:55'!
// aMeasure

	^aMeasure moduloCompoundMeasure: self! !

!CompoundMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:52:16'!
= anObject

	^anObject equalsCompoundMeasure: self
		! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:48:44'!
\\ aMeasure 

	^aMeasure remainderCompoundMeasure: self 
! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:34:33'!
addCompoundMeasure: aMeasureBag

	| measuresByUnit nonNullMeasures |
	
	measuresByUnit := Dictionary new.
	measures do: [:aMeasure | measuresByUnit at: aMeasure baseUnit put: aMeasure].
	aMeasureBag measures do: [:aMeasure | | measureToAdd |
		measureToAdd := measuresByUnit at: aMeasure baseUnit ifAbsent: [0].
		measuresByUnit at: aMeasure baseUnit put: measureToAdd + aMeasure].
	nonNullMeasures := measuresByUnit values reject: [:measure | measure isNothing].
	
	^nonNullMeasures isEmpty
		ifTrue: [0]
		ifFalse: 
			[nonNullMeasures size = 1 
				ifTrue: [nonNullMeasures first]
				ifFalse: [self class measures: nonNullMeasures]]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:30:58'!
addSimpleMeasure: aMeasureToAdd

	| newMeasures sameBaseUnitMeasure nonNullMeasures |
	
	sameBaseUnitMeasure := self atSameBaseUnitAs: aMeasureToAdd unit.
	newMeasures := measures reject: [:aMeasure | aMeasure baseUnit = sameBaseUnitMeasure baseUnit].
	newMeasures add: sameBaseUnitMeasure + aMeasureToAdd.
	nonNullMeasures := newMeasures reject: [:measure | measure isNothing].
	
	^nonNullMeasures size = 1 
		ifTrue: [nonNullMeasures first]
		ifFalse: [self class measures: nonNullMeasures]! !

!CompoundMeasure methodsFor: 'accessing'!
amount
	
	Error signal: 'Amount of a MeasureBag is not defined'! !

!CompoundMeasure methodsFor: 'accessing'!
atBaseUnit: aBaseUnit ifNone: aBlock

	^measures detect: [ :aMeasure | aMeasure baseUnit=aBaseUnit ] ifNone: aBlock
	! !

!CompoundMeasure methodsFor: 'accessing'!
atSameBaseUnitAs: aUnit

	^self atBaseUnit: aUnit baseUnit ifNone: [0]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 20:05:01'!
composeDoingOnEachMeasure: aBlock

	| newMeasures |
	
	newMeasures := measures collect: aBlock.
	^self class measures: newMeasures! !

!CompoundMeasure methodsFor: 'converting'!
convertAmountToBaseUnit
	"In fact, always one is going away to raise an exception since amount is not defined for a MeasureBag,
	but it was implemented thus so that the semantics is clear and not to repeat the code that generates the exception"

	^self unit convertAmountToBaseUnit: self amount! !

!CompoundMeasure methodsFor: 'converting - private' stamp: 'HAW 3/25/2017 20:17:20'!
convertTo: aTargetUnit using: aMeasureConverter
	"NOT TO USE. Use the message convert:to:  of MeasureConverter.
	This message is here by a question of double-dispatch.
	If this message is used, the exceptions will not be correctly handleds."
	
	^aMeasureConverter convertCompoundMeasure: self to: aTargetUnit! !

!CompoundMeasure methodsFor: 'accessing'!
denominator

	^1! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:25:29'!
divFrom: aNumber

	aNumber isNothing ifTrue: [^aNumber].
	"This is necesary because enters an infinity loop when sends #truncate to a Fraction which
	denominator is a MeasureBag"
	^CompoundMeasureFraction numerator: aNumber denominator: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 20:08:19'!
divideByMeasure: aMeasure

	^self composeDoingOnEachMeasure: [:aMeasureInBag | aMeasureInBag / aMeasure]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:38:12'!
divideCompoundMeasure: aMeasureBag

	^measures inject: 0 into: [:resultMeasure :aMeasureInBag | resultMeasure + (aMeasureBag / aMeasureInBag)]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:35:57'!
divideSimpleMeasure: aMeasure

	^CompoundMeasureFraction numerator: aMeasure denominator: self! !

!CompoundMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:22'!
equalsCompoundMeasure: aMeasureBag

	^(self - aMeasureBag) isNothing! !

!CompoundMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:49:43'!
equalsSimpleMeasure: aMeasure

	^measures allSatisfy: [:aMeasureInBag | 
		(aMeasureInBag sameDomainAs: aMeasure) 
			ifTrue: [aMeasureInBag = aMeasure]
			ifFalse: [aMeasureInBag isNothing]]! !

!CompoundMeasure methodsFor: 'accessing'!
hash

	^measures inject: 0 into: [ :hash :measure | hash bitXor: measure hash ].

		
		! !

!CompoundMeasure methodsFor: 'initialization'!
initializeMeasures: aCollection

	measures := aCollection! !

!CompoundMeasure methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:03'!
isCompoundMeasure

	^true! !

!CompoundMeasure methodsFor: 'testing' stamp: 'mx 4/1/2007 18:10'!
isFixed

	^measures allSatisfy: [ :aMeasure | aMeasure isFixed]
	
	! !

!CompoundMeasure methodsFor: 'testing'!
isNothing

	^measures allSatisfy: [ :aMeasure | aMeasure isNothing].
	
	! !

!CompoundMeasure methodsFor: 'accessing'!
measures
	"Return a copy because aMeasureBag inmutable"
	
	^measures copy! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 20:08:47'!
moduloByMeasure: aMeasure

	^self composeDoingOnEachMeasure: [:aMeasureInBag | aMeasureInBag // aMeasure]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:41:31'!
moduloCompoundMeasure: aMeasureBag

	InvalidBinaryOperationException 
		signalOperationName: 'modulo'
		leftOperand: aMeasureBag
		rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:39:30'!
moduloSimpleMeasure: aMeasure

	InvalidBinaryOperationException 
		signalOperationName: 'modulo'
		leftOperand: aMeasure
		rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:44:43'!
multiplyCompoundMeasure: aMeasureBag

	^measures inject: 0 into: [:resultMeasure :aMeasureInBag | resultMeasure + (aMeasureBag * aMeasureInBag)]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 20:08:33'!
multiplySimpleMeasure: aMeasure

	aMeasure isNothing ifTrue: [^aMeasure].
	^self composeDoingOnEachMeasure: [:aMeasureInBag | aMeasureInBag * aMeasure]! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 20:07:56'!
negated
	
	^self composeDoingOnEachMeasure: [:aMeasure | aMeasure negated]! !

!CompoundMeasure methodsFor: 'accessing'!
numberOfMeasures
	
	^measures size! !

!CompoundMeasure methodsFor: 'accessing'!
numerator

	^self! !

!CompoundMeasure methodsFor: 'printing' stamp: 'HernanWilkinson 4/21/2011 17:15'!
printOn: aStream

	measures 
		do: [:aMeasure | aMeasure printOn: aStream]
		separatedBy: [aStream nextPut: $+]! !

!CompoundMeasure methodsFor: 'printing' stamp: 'HernanWilkinson 4/21/2011 17:16'!
printShowingDecimalPlaces: aNumberOfDecimals

	| stream |
	
	stream := WriteStream on: String new.
	measures 
		do: [:aMeasure | stream nextPutAll: (aMeasure printShowingDecimalPlaces: aNumberOfDecimals)  ]
		separatedBy: [stream nextPut: $+].
		
	^stream contents! !

!CompoundMeasure methodsFor: 'arithmetic operations - private'!
quoFrom: aNumber

	InvalidBinaryOperationException signalOperationName: 'quotient' leftOperand: aNumber rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private'!
remFrom: aNumber

	InvalidBinaryOperationException signalOperationName: 'rest' leftOperand: aNumber rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 20:11:56'!
remainderByNumber: aNumber 

	^self composeDoingOnEachMeasure: [:aMeasureInBag | aMeasureInBag \\ aNumber ]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:48:18'!
remainderCompoundMeasure: aMeasureBag

	InvalidBinaryOperationException 
		signalOperationName: 'remainder'
		leftOperand: aMeasureBag
		rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:46:33'!
remainderSimpleMeasure: aMeasure

	InvalidBinaryOperationException 
		signalOperationName: 'remainder'
		leftOperand: aMeasure
		rightOperand: self! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 20:09:09'!
roundTo: aNumber
	
	^self composeDoingOnEachMeasure: [:aMeasure | aMeasure roundTo: aNumber ]! !

!CompoundMeasure methodsFor: 'arithmetic operations - private'!
subtractFrom: aNumber

	^self negated + aNumber! !

!CompoundMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 20:09:17'!
truncated
	
	^self composeDoingOnEachMeasure: [:aMeasure | aMeasure truncated ]! !

!CompoundMeasure methodsFor: 'accessing'!
unit
	
	Error signal: 'Unit of a MeasureBag is not defined'! !

!CompoundMeasure methodsFor: 'accessing'!
unitNameOf: aUnit

	Error signal: 'Unit of a MeasureBag is not defined'! !

!CompoundMeasure class methodsFor: 'instance creation - private'!
measures: aCollection 
	"NOTE: THIS METHOD IS PRIVATE. IT ASSUMES THE COLLECTION HAS NO ZERO MEASURES AND
	MEASURES WITH DIFFERENT UNITS. DO NOT USE IT TO CREATE A MEASUREBAG, USE +, -, ETC"

	^self new initializeMeasures: (aCollection 
				collect: [:measure | measure convertToBaseUnit])! !

!CompoundMeasure class methodsFor: 'instance creation - private' stamp: 'HAW 3/25/2017 20:00:40'!
with: aMeasure with: anotherMeasure
	"This message is not due to never use. A MeasureBag is created sending the messages #+ or #-.
	If the two measures are of the same domain, directly it gives back a canonized measure to the base unit.
	If they are of different domains, adds the measures canonized.
	This comparison is here and not in Measure so that they are not possible to be created incorrect bag.
	
	DEFINITION: A MeasureBag always has its measures canonized."
	
	^(aMeasure sameDomainAs: anotherMeasure)
		ifTrue: [aMeasure addSameDomainMeasure: anotherMeasure]
		ifFalse: [aMeasure composeWith: anotherMeasure]! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:43:51'!
* aMeasure

	^aMeasure multiplySimpleMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:32:58'!
+ aMeasure

	^aMeasure addSimpleMeasure: self.! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:37:15'!
/ aMeasure

	^aMeasure divideSimpleMeasure: self
! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:40:46'!
// aMeasure

	^aMeasure moduloSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'magnitude protocol' stamp: 'HAW 3/25/2017 19:54:01'!
< aMeasure

	^aMeasure greaterThanSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
<= aMeasure
	"This implemented thus so that the CanNotConvertMeasureException exception rises correctly"

	^(self < aMeasure) or: [ self = aMeasure ]! !

!SimpleMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:50:35'!
= anObject

	^anObject equalsSimpleMeasure: self 
		! !

!SimpleMeasure methodsFor: 'magnitude protocol' stamp: 'HAW 3/25/2017 19:55:23'!
> aMeasure

	^aMeasure lessThanSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
>= aMeasure
	"This implemented thus so that the CanNotConvertMeasureException exception rises correctly"

	^(self > aMeasure) or: [ self = aMeasure ]! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 19:47:41'!
\\ aMeasure

	^aMeasure remainderSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations' stamp: 'HAW 3/25/2017 18:31:03'!
abs

	^self unit with: amount abs! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:34:51'!
addCompoundMeasure: aMeasureBag

	^aMeasureBag addSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
addInfinity: anInfinity

	^anInfinity! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
addMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
addSameDomainMeasure: aMeasure

	^(self sameUnitAs: aMeasure) 
		ifTrue: [self class amount: amount + aMeasure amount unit: unit]
		ifFalse: 
			[self class 
				amount: self convertAmountToBaseUnit + aMeasure convertAmountToBaseUnit
				unit: self baseUnit]! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:31:26'!
addSimpleMeasure: aMeasure 
	"I delegate the responsibility to CompoundMeasure since this it verifies if the measures are of the same domain.
	When causing that bag has this responsibility, the code that checks this this in a single place and is not created bag
	for measures of the same domain."

	^CompoundMeasure with: aMeasure with: self! !

!SimpleMeasure methodsFor: 'accessing'!
amount
	
	^amount! !

!SimpleMeasure methodsFor: 'accessing'!
atBaseUnit: aBaseUnit ifNone: aBlock

	^self baseUnit = aBaseUnit ifTrue: [self] ifFalse: aBlock! !

!SimpleMeasure methodsFor: 'accessing'!
baseUnit
	
	^self unit baseUnit! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
between: min and: max
	"The comparison this done thus so that if there is error of conversion is generated the exception correctly"

	 ^(self >= min) and: [self <= max]! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
between: min andNotInclusive: max
	"The comparison this done thus so that if there is error of conversion is generated the exception correctly"

	 ^self >= min and: [self < max]! !

!SimpleMeasure methodsFor: 'magnitude protocol - private'!
compareGreaterThan: aNumber

	^aNumber = 0 
		ifTrue: [ self amount > aNumber ]
		ifFalse: [ CanNotConvertMeasureException signalSourceMeasure: self targetUnit: aNumber unit ]
	! !

!SimpleMeasure methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:02:38'!
composeWith: aMeasure

	^self isNothing
		ifTrue: [aMeasure]
		ifFalse: [aMeasure composeWithSimpleMeasure: self]! !

!SimpleMeasure methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:03:37'!
composeWithNumber: aNumber

	^self isNothing
		ifTrue: [aNumber]
		ifFalse: [CompoundMeasure measures: (OrderedCollection with: self with: aNumber)]! !

!SimpleMeasure methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:01:57'!
composeWithSimpleMeasure: aMeasure

	^self isNothing
		ifTrue: [aMeasure]
		ifFalse: 
			[CompoundMeasure measures: (OrderedCollection with: self with: aMeasure)]! !

!SimpleMeasure methodsFor: 'converting'!
convertAmountToBaseUnit
	
	^self unit convertAmountToBaseUnit: self amount! !

!SimpleMeasure methodsFor: 'converting - private'!
convertInSameDomainTo: aTargetUnit

	^aTargetUnit convertFromBaseUnit: (unit convertToBaseUnit: self)! !

!SimpleMeasure methodsFor: 'converting'!
convertTo: aTargetUnit

	^(unit sameDomainAs: aTargetUnit) 
		ifTrue: [self convertInSameDomainTo: aTargetUnit]
		ifFalse: [CanNotConvertMeasureException signalSourceMeasure: self targetUnit: aTargetUnit]! !

!SimpleMeasure methodsFor: 'converting - private'!
convertTo: aTargetUnit using: aMeasureConverter
	"NOT TO USE. Use the message convert:to:  of MeasureConverter.
	This message is here by a question of double-dispatch.
	If this message is used, the exceptions will not be correctly handleds."
	
	^aMeasureConverter convertMeasure: self to: aTargetUnit! !

!SimpleMeasure methodsFor: 'converting'!
convertToBaseUnit

	^self convertTo: self baseUnit! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:37:20'!
divFrom: aNumber

	^self divideSimpleMeasure: aNumber! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:38:24'!
divideCompoundMeasure: aMeasureBag

	^aMeasureBag divideByMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
divideInfinity: anInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
divideMinusInfinity: aMinusInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:36:25'!
divideSimpleMeasure: aMeasure

	| numerator denominator |
	
	numerator := aMeasure convertToBaseUnit.
	denominator := self convertToBaseUnit.
	
	^numerator unit / denominator unit 
		with: numerator amount / denominator amount! !

!SimpleMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:44'!
equalsCompoundMeasure: aMeasureBag

	^aMeasureBag equalsSimpleMeasure: self! !

!SimpleMeasure methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:50:07'!
equalsSimpleMeasure: aMeasure 
	"If the unit is the same one, verifies only the amount.
	If no, if it is of the same domain it turns the amount and it compares.
	If no, it returns false."

	^unit = aMeasure unit 
		ifTrue: [amount = aMeasure amount]
		ifFalse: 
			[(self sameDomainAs: aMeasure) 
				ifTrue: [self convertAmountToBaseUnit = aMeasure convertAmountToBaseUnit]
				ifFalse: [self isNothing and: [aMeasure isNothing]]]! !

!SimpleMeasure methodsFor: 'accessing'!
floor
	
	^unit with: amount floor! !

!SimpleMeasure methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:53:38'!
greaterThanSimpleMeasure: aMeasure 
	"If the unit is the same one, verifies only the amount.
	aMeasure converts to baseUnit so that if there is some error of conversion this jumps fast and generates
	CanNotConvertMeasureException correctly."
	
	^unit = aMeasure unit 
		ifTrue: [aMeasure amount < amount]
		ifFalse: 
			[(aMeasure convertTo: self baseUnit) amount 
				< self convertAmountToBaseUnit]! !

!SimpleMeasure methodsFor: 'accessing'!
hash

	^self convertAmountToBaseUnit hash! !

!SimpleMeasure methodsFor: 'initialization'!
initializeAmount: aNumber unit: aUnit 

	amount := aNumber.
	unit := aUnit! !

!SimpleMeasure methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:26'!
isCompoundMeasure

	^false! !

!SimpleMeasure methodsFor: 'testing' stamp: 'mx 3/28/2007 21:53'!
isFixed

	^amount isFixed! !

!SimpleMeasure methodsFor: 'testing'!
isNothing

	^self convertToBaseUnit amount = self baseUnit nothingAmount! !

!SimpleMeasure methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:55:04'!
lessThanSimpleMeasure: aMeasure 
	"If the unit is the same one, verifies only the amount.
	aMeasure converts to baseUnit so that if there is some error of conversion this jumps fast and generates
	CanNotConvertMeasureException correctly."

	^unit = aMeasure unit 
		ifTrue: [aMeasure amount > amount]
		ifFalse: 
			[(aMeasure convertTo: self baseUnit) amount 
				> self convertAmountToBaseUnit]! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
max: aMeasure

	 ^self < aMeasure
		ifTrue: [aMeasure]
		ifFalse: [ self ]! !

!SimpleMeasure methodsFor: 'accessing'!
measures

	^self isNothing
		ifTrue: [#()]
		ifFalse: [Array with: self]! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
min: aMeasure

	 ^self < aMeasure
		ifTrue: [ self ]
		ifFalse: [ aMeasure ]! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:41:43'!
moduloCompoundMeasure: aMeasureBag

	^aMeasureBag moduloByMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
moduloInfinity: anInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
moduloMinusInfinity: aMinusInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:39:54'!
moduloSimpleMeasure: aMeasure

	| numerator denominator |
	
	numerator := aMeasure convertToBaseUnit.
	denominator := self convertToBaseUnit.
	
	^numerator unit / denominator unit 
		with: numerator amount // denominator amount! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:44:55'!
multiplyCompoundMeasure: aMeasureBag

	^aMeasureBag multiplySimpleMeasure: self! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
multiplyInfinity: anInfinity

	^anInfinity! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
multiplyMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:43:13'!
multiplySimpleMeasure: aMeasure

	| leftFactor rightFactor |
	
	leftFactor := aMeasure convertToBaseUnit.
	rightFactor := self convertToBaseUnit.
	
	^leftFactor unit * rightFactor unit 
		with: leftFactor amount * rightFactor amount! !

!SimpleMeasure methodsFor: 'arithmetic operations'!
negated

	^self class amount: amount negated unit: unit! !

!SimpleMeasure methodsFor: 'testing'!
negative

	^amount negative! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
notInclusiveBetween: min and: max
	"The comparison this done thus so that if there is error of conversion is generated the exception correctly"

	 ^self > min and: [self <= max]! !

!SimpleMeasure methodsFor: 'magnitude protocol'!
notInclusiveBetween: min andNotInclusive: max
	"The comparison this done thus so that if there is error of conversion is generated the exception correctly"

	 ^self > min and: [self < max]! !

!SimpleMeasure methodsFor: 'testing'!
positive

	^amount positive! !

!SimpleMeasure methodsFor: 'printing'!
printOn: aStream

	amount printOn: aStream.
	aStream space.
	aStream nextPutAll: (self unit nameFor: self amount) asString! !

!SimpleMeasure methodsFor: 'printing' stamp: 'HernanWilkinson 4/20/2011 17:42'!
printShowingDecimalPlaces: aNumberOfDecimals

	^(amount printShowingDecimalPlaces: aNumberOfDecimals),  ' ', (self unit nameFor: self amount) asString! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
quoFrom: aNumber

	^NullUnit new / unit with: (aNumber quo: amount)! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
remFrom: aNumber

	^aNumber isNothing
		ifTrue: [ InvalidBinaryOperationException signalOperationName: 'rest' leftOperand: aNumber rightOperand: self ]
		ifFalse: [ (unit with: (amount rem: aNumber)) / self ]! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:48:31'!
remainderCompoundMeasure: aMeasureBag

	InvalidBinaryOperationException 
		signalOperationName: 'remainder'
		leftOperand: aMeasureBag
		rightOperand: self! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
remainderInfinity: anInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private'!
remainderMinusInfinity: aMinusInfinity

	^0! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:47:05'!
remainderSimpleMeasure: aMeasure

	| numerator denominator |
	
	numerator := aMeasure convertToBaseUnit.
	denominator := self convertToBaseUnit.
	
	^numerator baseUnit with: numerator amount \\ denominator amount! !

!SimpleMeasure methodsFor: 'arithmetic operations'!
roundTo: aNumber
	
	^self class amount: (amount roundTo: aNumber) unit: unit! !

!SimpleMeasure methodsFor: 'testing'!
sameDomainAs: aMeasure 
	
	^self unit sameDomainAs: aMeasure unit! !

!SimpleMeasure methodsFor: 'testing'!
sameUnitAs: aMeasure 
	
	^unit = aMeasure unit! !

!SimpleMeasure methodsFor: 'testing' stamp: 'HAW 6/2/2009 16:09'!
strictlyPositive
	
	^amount strictlyPositive! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:33:11'!
subtractFrom: aNumber

	^self negated addSimpleMeasure: aNumber! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'mx 3/28/2007 21:54'!
subtractInfinity: anInfinity

	^anInfinity! !

!SimpleMeasure methodsFor: 'arithmetic operations - private' stamp: 'mx 3/28/2007 21:54'!
subtractMinusInfinity: aMinusInfinity

	^aMinusInfinity! !

!SimpleMeasure methodsFor: 'interval protocol'!
to: stop

	 ^self to: stop by: (unit with: 1)! !

!SimpleMeasure methodsFor: 'interval protocol'!
to: stop by: step

	 ^ArithmeticObjectInterval from: self to: stop by: step! !

!SimpleMeasure methodsFor: 'arithmetic operations'!
truncated
	
	^self class amount: amount truncated unit: unit! !

!SimpleMeasure methodsFor: 'accessing'!
unit

	^unit! !

!SimpleMeasure methodsFor: 'accessing'!
unitNameOf: aUnit

	^self amount abs = 1 ifTrue: [aUnit nameForOne] ifFalse: [aUnit nameForMany]! !

!SimpleMeasure class methodsFor: 'instance creation'!
amount: aNumber unit: aUnit

	^self new initializeAmount: aNumber unit: aUnit! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
* aMeasure

	aMeasure isNothing
		ifTrue: [self signalIndeterminateOperation: 'Multiplication' leftOperand: aMeasure].
	^aMeasure multiplyMinusInfinity: self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
+ aMeasure

	^aMeasure addMinusInfinity: self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
- aMeasure

	^aMeasure subtractMinusInfinity: self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
/ aMeasure

	self signalIndeterminateOperation: 'Division' rightOperand: aMeasure! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
// aMeasure

	self signalIndeterminateOperation: 'Modulo' rightOperand: aMeasure! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
< aMagnitude

	^true! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
<= aMagnitude

	^true! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
> aMagnitude

	^false! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
>= aMagnitude

	^self = aMagnitude! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
\\ aMeasure

	self signalIndeterminateOperation: 'Remainder' rightOperand: aMeasure! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
addInfinity: anInfinity

	self signalIndeterminateOperation: 'Sum' leftOperand: anInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
addMinusInfinity: anInfinity

	^self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:31:55'!
addSimpleMeasure: aMeasure

	^self! !

!MinusInfinityDefinition methodsFor: 'accessing'!
amount

	^self! !

!MinusInfinityDefinition methodsFor: 'accessing'!
baseUnit

	^NullUnit new! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
between: min and: max

	^(self >= min) and: [self <= max]! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol - private'!
compareGreaterThan: aNumber

	^false! !

!MinusInfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:02:34'!
composeWith: aMeasure

	^aMeasure composeWithSimpleMeasure: self! !

!MinusInfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:03:21'!
composeWithNumber: aNumber

	^CompoundMeasure measures: (OrderedCollection with: self with: aNumber)! !

!MinusInfinityDefinition methodsFor: 'bag creation - private' stamp: 'HAW 3/25/2017 20:01:48'!
composeWithSimpleMeasure: aMeasure

	^CompoundMeasure measures: (OrderedCollection with: self with: aMeasure)! !

!MinusInfinityDefinition methodsFor: 'converting'!
convertAmountToBaseUnit

	^self unit convertAmountToBaseUnit: self! !

!MinusInfinityDefinition methodsFor: 'converting - private'!
convertInSameDomainTo: aTargetUnit

	^aTargetUnit convertFromBaseUnit: (self unit convertToBaseUnit: self)! !

!MinusInfinityDefinition methodsFor: 'converting'!
convertTo: aTargetUnit

	^(self unit sameDomainAs: aTargetUnit)
		ifTrue: [self convertInSameDomainTo: aTargetUnit]
		ifFalse: [CanNotConvertMeasureException signalSourceMeasure: self targetUnit: aTargetUnit]! !

!MinusInfinityDefinition methodsFor: 'converting - private'!
convertTo: aTargetUnit using: aMeasureConverter
	"NOT TO USE. Use the message convert:to:  of MeasureConverter.
	This message is here by a question of double-dispatch.
	If this message is used, the exceptions will not be correctly handleds."

	^aMeasureConverter convertMeasure: self to: aTargetUnit! !

!MinusInfinityDefinition methodsFor: 'converting'!
convertToBaseUnit

	^self convertTo: self baseUnit! !

!MinusInfinityDefinition methodsFor: 'accessing'!
denominator

	^1! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
divFrom: aNumber

	^0! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
divideByUnit: aUnit

	^aUnit with: 1 / self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
divideInfinity: anInfinity

	self signalIndeterminateOperation: 'Division' leftOperand: anInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
divideMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Division' leftOperand: aMinusInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:36:11'!
divideSimpleMeasure: aMeasure

	^0! !

!MinusInfinityDefinition methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:51:35'!
equalsCompoundMeasure: aMeasureBag

	^self = aMeasureBag! !

!MinusInfinityDefinition methodsFor: 'comparing' stamp: 'HAW 3/25/2017 19:49:54'!
equalsSimpleMeasure: aMeasure

	^self = aMeasure! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:53:29'!
greaterThanSimpleMeasure: aMeasure

	^true! !

!MinusInfinityDefinition methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:15'!
isCompoundMeasure

	^false! !

!MinusInfinityDefinition methodsFor: 'testing' stamp: 'mx 4/1/2007 18:10'!
isFixed

	^false! !

!MinusInfinityDefinition methodsFor: 'testing'!
isNothing

	^false! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol - private' stamp: 'HAW 3/25/2017 19:54:55'!
lessThanSimpleMeasure: aMeasure

	^false! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
max: aMagnitude

	^aMagnitude! !

!MinusInfinityDefinition methodsFor: 'magnitude protocol'!
min: aMagnitude

	^self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
moduloInfinity: anInfinity

	self signalIndeterminateOperation: 'Modulo' leftOperand: anInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
moduloMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Modulo' leftOperand: aMinusInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:39:42'!
moduloSimpleMeasure: aMeasure

	^0! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyByUnit: aUnit

	^aUnit with: self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyInfinity: anInfinity

	^self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
multiplyMinusInfinity: aMinusInfinity

	^aMinusInfinity negated! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:42:58'!
multiplySimpleMeasure: aMeasure

	^self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 11/28/2009 20:10'!
negated
  
	^InfinityDefinition new! !

!MinusInfinityDefinition methodsFor: 'testing'!
negative

	^false! !

!MinusInfinityDefinition methodsFor: 'accessing'!
numerator

	 ^self! !

!MinusInfinityDefinition methodsFor: 'testing'!
positive

	^true! !

!MinusInfinityDefinition methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: 'Minus Infinity'! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
quoFrom: aNumber

	^aNumber / self! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
remFrom: aNumber

	^aNumber - (self * (self quoFrom: aNumber))! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
remainderInfinity: anInfinity

	self signalIndeterminateOperation: 'Remainder' leftOperand: anInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
remainderMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Remainder' leftOperand: aMinusInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private' stamp: 'HAW 3/25/2017 19:46:49'!
remainderSimpleMeasure: aMeasure

	^aMeasure - (self * (self quoFrom: aMeasure))! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
roundTo: aNumber

	^self! !

!MinusInfinityDefinition methodsFor: 'testing'!
sameDomainAs: aMeasure 
	
	^self unit sameDomainAs: aMeasure unit! !

!MinusInfinityDefinition methodsFor: 'testing'!
sameUnitAs: aMeasure

	^self unit = aMeasure unit! !

!MinusInfinityDefinition methodsFor: 'exceptions'!
signalIndeterminateOperation: anOperationString leftOperand: aLeftOperand

	IndeterminateOperationException
		signalOperation: anOperationString
		leftOperand: aLeftOperand
		rightOperand: self! !

!MinusInfinityDefinition methodsFor: 'exceptions'!
signalIndeterminateOperation: anOperationString rightOperand: aRightOperand

	IndeterminateOperationException
		signalOperation: anOperationString
		leftOperand: self
		rightOperand: aRightOperand! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractFrom: aNumber

	^self negated! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractInfinity: anInfinity

	self signalIndeterminateOperation: 'Subtract' leftOperand: anInfinity! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations - private'!
subtractMinusInfinity: aMinusInfinity

	self signalIndeterminateOperation: 'Subtract' leftOperand: aMinusInfinity! !

!MinusInfinityDefinition methodsFor: 'interval protocol'!
to: stop

	^self to: stop by: (self unit with: 1)! !

!MinusInfinityDefinition methodsFor: 'interval protocol'!
to: stop by: step

	^ArithmeticObjectInterval
		from: self
		to: stop
		by: step
		intervalStrategy: InfinityIntervalStrategy new! !

!MinusInfinityDefinition methodsFor: 'arithmetic operations'!
truncated

	^self! !

!MinusInfinityDefinition methodsFor: 'accessing'!
unit

	^self baseUnit! !

!MinusInfinityDefinition methodsFor: 'accessing'!
unitNameOf: aUnit

	^aUnit nameForMany! !

!MinusInfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 21:00:22'!
afterLoadInitialization

	self initialize! !

!MinusInfinityDefinition class methodsFor: 'naming' stamp: 'HernanWilkinson 11/28/2009 20:12'!
globalName 

	^ #MinusInfinity! !

!MinusInfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:46'!
initialize

	uniqueInstance isNil ifTrue: [ self initializeUniqueInstance ].
	self initializeGlobalVariable.
! !

!MinusInfinityDefinition class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 11:33:49'!
initializeGlobalVariable

	Smalltalk at: self globalName put: uniqueInstance 
! !

!MinusInfinityDefinition class methodsFor: 'initialization'!
initializeUniqueInstance

	uniqueInstance := super new! !

!MinusInfinityDefinition class methodsFor: 'instance creation'!
new

	^uniqueInstance! !

!IntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from by: by
	"The reason of this method over #advanceFrom:steps:by: is only to improve performance"

	self subclassResponsibility! !

!IntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from steps: steps by: by

	self subclassResponsibility! !

!IntervalStrategy methodsFor: 'querying'!
isValidIntervalFrom: aStart to: aStop by: aStep

	^(self stepsFrom: aStart to: aStop by: aStep) >= 0! !

!IntervalStrategy methodsFor: 'enumerating'!
stepsFrom: from to: to by: by

	self subclassResponsibility! !

!InfinityIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from by: by

	^from + by! !

!InfinityIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from steps: steps by: by

	^from + (steps * by)! !

!InfinityIntervalStrategy methodsFor: 'enumerating' stamp: 'HernanWilkinson 11/28/2009 20:10'!
stepsFrom: from to: to by: by

	^InfinityDefinition new! !

!InfinityIntervalStrategy class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 21:00:16'!
afterLoadInitialization

	self initialize! !

!InfinityIntervalStrategy class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:35'!
initialize

	uniqueInstance isNil ifTrue: [ self initializeUniqueInstance ]! !

!InfinityIntervalStrategy class methodsFor: 'initialization' stamp: 'HernanWilkinson 11/28/2009 19:03'!
initializeUniqueInstance

	uniqueInstance := super new.! !

!InfinityIntervalStrategy class methodsFor: 'instance creation'!
new

	^uniqueInstance! !

!ArithmeticObjectIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from by: by

	^from + by! !

!ArithmeticObjectIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from steps: steps by: by

	^from + (steps * by)! !

!ArithmeticObjectIntervalStrategy methodsFor: 'testing' stamp: 'HAW 3/25/2017 19:56:38'!
isValidIntervalFrom: aStart to: aStop by: aStep

	^(aStep = 0) not and: [ | steps |
		steps := self stepsFrom: aStart to: aStop by: aStep.
		steps isCompoundMeasure not and: [ steps >= 0 ]]! !

!ArithmeticObjectIntervalStrategy methodsFor: 'enumerating'!
stepsFrom: from to: to by: by

	^to - from / by! !

!ArithmeticObjectIntervalStrategy class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:58'!
afterLoadInitialization

	self initialize! !

!ArithmeticObjectIntervalStrategy class methodsFor: 'initialization' stamp: 'HAW 3/25/2017 20:59:22'!
initialize

	uniqueInstance isNil ifTrue: [ self initializeUniqueInstance ].! !

!ArithmeticObjectIntervalStrategy class methodsFor: 'initialization' stamp: 'HernanWilkinson 11/28/2009 19:02'!
initializeUniqueInstance

	uniqueInstance := super new.! !

!ArithmeticObjectIntervalStrategy class methodsFor: 'instance creation'!
new

	^uniqueInstance! !

!TestIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from by: by

	^TestIntervalAwareMagnitude with: from number + by number! !

!TestIntervalStrategy methodsFor: 'enumerating'!
advanceFrom: from steps: steps by: by

	^TestIntervalAwareMagnitude with: from number + (steps * by number)! !

!TestIntervalStrategy methodsFor: 'enumerating'!
stepsFrom: from to: to by: by

	^to number - from number / by number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
* anArithmeticObject

	^anArithmeticObject * number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
+ anArithmeticObject

	^anArithmeticObject + number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
- anArithmeticObject

	^anArithmeticObject subtractFrom: number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
/ anArithmeticObject

	^anArithmeticObject divFrom: number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
// anArithmeticObject

	^anArithmeticObject quoFrom: number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations' stamp: 'mx 3/26/2007 21:45'!
< anArithmeticObject

	^anArithmeticObject >= number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
= anArithmeticObject 

	^anArithmeticObject = number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations' stamp: 'mx 3/26/2007 21:44'!
> anArithmeticObject

	^anArithmeticObject <= number! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
\\ anArithmeticObject

	^anArithmeticObject remFrom: number! !

!NumberToArithmeticObjectAdapter methodsFor: 'initialization'!
initializeNumber: aNumber

	number := aNumber! !

!NumberToArithmeticObjectAdapter methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: 'NumberMeasureAdapter for: '.
	number printOn: aStream! !

!NumberToArithmeticObjectAdapter methodsFor: 'arithmetic operations'!
quo: anArithmeticObject

	^anArithmeticObject quoFrom: number! !

!NumberToArithmeticObjectAdapter class methodsFor: 'instance creation' stamp: 'mx 8/1/2008 16:38'!
number: aNumber
	^ self new initializeNumber: aNumber! !

!EdgeInterface methodsFor: 'testing'!
convergesTo: anObject

	self subclassResponsibility! !

!EdgeInterface methodsFor: 'testing'!
convergesToSelf

	self subclassResponsibility! !

!EdgeInterface methodsFor: 'testing'!
goesFrom: aSource to: aTarget

	self subclassResponsibility! !

!EdgeInterface methodsFor: 'accessing'!
source

	self subclassResponsibility! !

!EdgeInterface methodsFor: 'testing'!
startsOn: anObject

	self subclassResponsibility! !

!EdgeInterface methodsFor: 'accessing'!
target

	self subclassResponsibility! !

!Edge methodsFor: 'comparing'!
= anotherEdge

	^self class = anotherEdge class 
		ifTrue: [ source = anotherEdge source and: [ target = anotherEdge target ]]
		ifFalse: [ false ]! !

!Edge methodsFor: 'testing'!
convergesTo: anObject

	^target = anObject! !

!Edge methodsFor: 'testing'!
convergesToSelf
	
	^source = target! !

!Edge methodsFor: 'testing'!
goesFrom: aSource to: aTarget

	^source = aSource and: [ target = aTarget ]! !

!Edge methodsFor: 'accessing'!
hash

	^source hash bitXor: target hash! !

!Edge methodsFor: 'initialization'!
initializeWithFrom: from to: to 

	source := from.
	target := to! !

!Edge methodsFor: 'testing'!
isIncidentTo: anObject

	^source = anObject or: [target = anObject]

! !

!Edge methodsFor: 'printing'!
printOn: aStream

	source printOn: aStream.
	aStream nextPutAll: ' -> '.
	target printOn: aStream! !

!Edge methodsFor: 'accessing'!
source

	^source! !

!Edge methodsFor: 'testing'!
startsOn: anObject

	^source = anObject! !

!Edge methodsFor: 'accessing'!
target

	^target! !

!Edge class methodsFor: 'instance creation'!
from: from to: to 
	
	^self new initializeWithFrom: from to: to! !

!Graph methodsFor: 'comparing'!
= anotherGraph

	^self class = anotherGraph class
		and: [(self sameEdgesAs: anotherGraph) and: [self sameNodesAs: anotherGraph]]! !

!Graph methodsFor: 'accessing' stamp: 'HernanWilkinson 11/26/2009 12:40'!
apply: applyBlock usingDepthFirstSearchFrom: aNode

	self apply: applyBlock usingDepthFirstSearchFrom: aNode ignoring: Set new
	! !

!Graph methodsFor: 'accessing - private' stamp: 'HernanWilkinson 11/26/2009 12:40'!
apply: applyBlock usingDepthFirstSearchFrom: aNode ignoring: aSet

	^self
		apply: applyBlock
		usingDepthFirstSearchFrom: aNode
		ignoring: aSet
		ifCycleEncounteredDo: []! !

!Graph methodsFor: 'accessing - private' stamp: 'HernanWilkinson 11/26/2009 12:40'!
apply: applyBlock usingDepthFirstSearchFrom: aNode ignoring: aSet ifCycleEncounteredDo: cycleBlock

	| nonVisitedNodes adjacentNodes |

	applyBlock value: aNode.

	aSet add: aNode.

	adjacentNodes := self nodesAdjacentTo: aNode.
	nonVisitedNodes := adjacentNodes reject: [:adjacentNode | aSet includes: adjacentNode].

	(adjacentNodes size = nonVisitedNodes size) ifFalse: cycleBlock.

	nonVisitedNodes do: [:nonVisitedNode |
		self
			apply: applyBlock
			usingDepthFirstSearchFrom: nonVisitedNode
			ignoring: aSet
			ifCycleEncounteredDo: cycleBlock]! !

!Graph methodsFor: 'preconditions'!
assertIncludesAllNodesOf: aCollectionOfNodes

	aCollectionOfNodes do: [:node |
		(nodes includes: node) ifFalse: [NodeNotFoundException signalNode: node graph: self]]

! !

!Graph methodsFor: 'accessing'!
edges
	
	^edges copy! !

!Graph methodsFor: 'accessing'!
edgesConvergingTo: aNode

	^edges select: [ :anEdge | anEdge convergesTo: aNode ].! !

!Graph methodsFor: 'accessing'!
edgesConvergingToSelf

	^edges select: [:anEdge | anEdge convergesToSelf]! !

!Graph methodsFor: 'accessing'!
edgesStartingOn: aNode

	^edges select: [ :anEdge | anEdge startsOn: aNode ].! !

!Graph methodsFor: 'accessing'!
hash

	| edgesHash nodesHash |

	edgesHash := edges inject: 0 into: [:hashNumber :anEdge | hashNumber bitXor: anEdge hash].
	nodesHash := nodes inject: 0 into: [:hashNumber :aNode | hashNumber bitXor: aNode hash].

	^edgesHash bitXor: nodesHash! !

!Graph methodsFor: 'testing'!
includesNode: aNode

	^nodes includes: aNode! !

!Graph methodsFor: 'initialization'!
initializeAcyclicValue

	| startingNodes visitedNodes |

	startingNodes := self nodesWithoutStartingEdges.
	visitedNodes := Set new.

	startingNodes do: [:startingNode |
		self
			apply: [:eachNode | ]
			usingDepthFirstSearchFrom: startingNode
			ignoring: visitedNodes
			ifCycleEncounteredDo: [
				acyclic := false.
				^self]].

	acyclic := edges isEmpty or: [startingNodes notEmpty]! !

!Graph methodsFor: 'initialization' stamp: 'HAW 3/25/2017 11:54:46'!
initializeEdges: aCollectionOfEdges nodes: aCollectionOfNodes

	edges := OrderedCollection withAll: aCollectionOfEdges.
	nodes := aCollectionOfNodes asSet
	
! !

!Graph methodsFor: 'testing'!
isAcyclic

	acyclic isNil ifTrue: [self initializeAcyclicValue].

	^acyclic! !

!Graph methodsFor: 'testing'!
isEmpty

	^nodes isEmpty! !

!Graph methodsFor: 'accessing'!
nodes

	^nodes copy! !

!Graph methodsFor: 'accessing' stamp: 'HAW 3/25/2017 18:58:05'!
nodesAdjacentTo: aNode

	^(self edgesStartingOn: aNode) collect: [:edge | edge target]! !

!Graph methodsFor: 'accessing'!
nodesWithoutConvergingEdges

	^nodes select: [:node | (self edgesConvergingTo: node) isEmpty]! !

!Graph methodsFor: 'accessing'!
nodesWithoutStartingEdges

	^nodes select: [:node | (self edgesStartingOn: node) isEmpty]! !

!Graph methodsFor: 'testing'!
notEmpty

	^self isEmpty not! !

!Graph methodsFor: 'removing nodes' stamp: 'HAW 3/25/2017 18:58:31'!
removeNode: anObject

	^self removeNode: anObject ifAbsent: [NodeNotFoundException signalNode: anObject graph: self]! !

!Graph methodsFor: 'removing nodes'!
removeNode: anObject ifAbsent: aBlock

	| nodesWithoutNode edgesWithoutNode |

	(nodes includes: anObject) ifFalse: [^aBlock value].

	nodesWithoutNode := nodes reject: [:node | node = anObject].
	edgesWithoutNode := edges reject: [:edge | edge isIncidentTo: anObject].

	^self class edges: edgesWithoutNode nodes: nodesWithoutNode! !

!Graph methodsFor: 'removing nodes'!
removeNodes: aCollectionOfNodes

	| nodesWithoutNodes edgesWithoutNode |

	self assertIncludesAllNodesOf: aCollectionOfNodes.

	nodesWithoutNodes := nodes reject: [:node | aCollectionOfNodes includes: node].
	edgesWithoutNode :=
		edges reject: [:edge | aCollectionOfNodes anySatisfy: [:node | edge isIncidentTo: node]].

	^self class edges: edgesWithoutNode nodes: nodesWithoutNodes! !

!Graph methodsFor: 'testing'!
sameEdgesAs: anotherGraph

	| anotherEdges |

	anotherEdges := anotherGraph edges.
	^edges size = anotherEdges size and: [edges allSatisfy: [:edge | anotherEdges includes: edge]]! !

!Graph methodsFor: 'testing'!
sameNodesAs: anotherGraph

	| anotherNodes |

	anotherNodes := anotherGraph nodes.
	^nodes size = anotherNodes size and: [nodes allSatisfy: [:node | anotherNodes includes: node]]! !

!Graph class methodsFor: 'preconditions'!
assert: aCollectionOfEdges endpointsIncludedIn: aCollectionOfNodes

	aCollectionOfEdges do: [:edge |
		((aCollectionOfNodes includes: edge source) and: [aCollectionOfNodes includes: edge target])
			ifFalse: [
				EdgeEndpointNotIncludedInNodesException
					signalInvalidEdge: edge
					edges: aCollectionOfEdges
					nodes: aCollectionOfNodes]]


! !

!Graph class methodsFor: 'instance creation'!
edges: aCollectionOfEdges

	| nodes |

	nodes :=
		aCollectionOfEdges
			inject: Set new
			into: [:set :edge |
				set
					add: edge source;
					add: edge target;
					yourself].

	^self edges: aCollectionOfEdges nodes: nodes! !

!Graph class methodsFor: 'instance creation'!
edges: aCollectionOfEdges nodes: aCollectionOfNodes

	self assert: aCollectionOfEdges endpointsIncludedIn: aCollectionOfNodes.
	^self new initializeEdges: aCollectionOfEdges nodes: aCollectionOfNodes! !

!GraphPathFinder methodsFor: 'path finding - private'!
createEdgeFrom: source to: target

	^Edge from: source to: target! !

!GraphPathFinder methodsFor: 'path finding - private'!
createGraphWith: edges

	^Graph edges: edges.
! !

!GraphPathFinder methodsFor: 'path finding - private'!
emptyCollection
	
	^#()
! !

!GraphPathFinder methodsFor: 'path finding - private'!
findEdgesCheckingCyclesFrom: source to: target 

	| edges edgeToFind |
		
	edgeToFind := self createEdgeFrom: source to: target.
	edges := (self hasBeenPassedBy: edgeToFind)
				ifTrue: [ self emptyCollection ]	
				ifFalse: [
					self passedBy: edgeToFind.
					self findEdgesFrom: source to: target ].
					
	^edges.
! !

!GraphPathFinder methodsFor: 'path finding - private'!
findEdgesFrom: source to: target

	| convergingEdges matchingEdge |

	convergingEdges := graph edgesConvergingTo: target.
	matchingEdge := convergingEdges detect: [ :anEdge | anEdge goesFrom: source to: target ] ifNone: [ nil ].
		
	^matchingEdge isNil 
		ifTrue: [ self findEdgesFrom: source toAnyEdgeOf: convergingEdges ]
		ifFalse: [ OrderedCollection with: matchingEdge ].
				

! !

!GraphPathFinder methodsFor: 'path finding - private'!
findEdgesFrom: source toAnyEdgeOf: convergingEdges
	
	| path |

	convergingEdges do: [ :anEdge |
		path := self findEdgesCheckingCyclesFrom: source to: anEdge source.
		path notEmpty ifTrue: [ ^path add: anEdge;yourself. ] ].
		
	^self emptyCollection! !

!GraphPathFinder methodsFor: 'path finding - private'!
hasBeenPassedBy: anEdge

	^passedByEdges includes: anEdge
! !

!GraphPathFinder methodsFor: 'initialization'!
initializePassedByEdges

	passedByEdges := Set new.

! !

!GraphPathFinder methodsFor: 'initialization'!
initializeWith: aGraph

	graph := aGraph.! !

!GraphPathFinder methodsFor: 'path finding - private'!
passedBy: anEdge

	passedByEdges add: anEdge! !

!GraphPathFinder methodsFor: 'path finding'!
pathFrom: source to: target 

	| edges |
		
	self initializePassedByEdges.
	edges := self findEdgesCheckingCyclesFrom: source to: target.
	edges isEmpty ifTrue: [ GraphPathNotFoundException signalWithSource: source target: target ].

	^self createGraphWith: edges! !

!GraphPathFinder class methodsFor: 'instance creation'!
on: aGraph

	^self new initializeWith: aGraph.! !

!TopologicalSort methodsFor: 'initialization'!
initializeFor: aGraph 

	graph := aGraph
! !

!TopologicalSort methodsFor: 'evaluating'!
value

	| tempGraph result |

	tempGraph := graph copy.
	result := OrderedCollection new.

	[tempGraph notEmpty] whileTrue: [| startingNodes |
		startingNodes := tempGraph nodesWithoutConvergingEdges.
		result addAll: startingNodes.
		tempGraph := tempGraph removeNodes: startingNodes].

	^result! !

!TopologicalSort class methodsFor: 'preconditions'!
assertAcyclic: aGraph

	aGraph isAcyclic ifTrue: [^self].

	CannotApplyTopologicalSortToACyclicGraphException signalGraph: aGraph! !

!TopologicalSort class methodsFor: 'instance creation'!
for: aGraph

	self assertAcyclic: aGraph.

	^self new initializeFor: aGraph! !
NullUnit initialize!
InfinityDefinition initialize!
MinusInfinityDefinition initialize!
InfinityIntervalStrategy initialize!
ArithmeticObjectIntervalStrategy initialize!
