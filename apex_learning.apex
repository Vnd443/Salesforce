/*

APEX:

-> Apex is a programming language used by Salesforce developer.
-> Apex is a strongly typed, object oriented programming language,
-> It has Java-like syntax.
-> It enables Salesforce developers to add business logic to system events, button clicks, records updates.


Features of Apex:
-> Integrated: It has built in support for DML(Data Manipulation Language) operations like INSERT, UPADATE, DELETE, and also DML exception handling.
-> Java like syntax and easy to use.
-> strongly typed language.
-> Easy Testing.
-> Upgrades Automatically.

*/

System.debug('Hello World!!'); // op: Hello World!!

//System.debug print the ouptut.


/*

Variable: are used to stroe information.

-> Declaring a var: means defining its type and optinally, setting an inital value.
-> Every variable in apex must have a name and its data type.
-> Data types means what type of data, the var will store.

syntax: data_type var_name=var_val;

examples:     */
string name='VND';
Integer number=9059;
Decimal decimal_no=8.8;

string first_name;
string sec_name;
first_name='Venna';
sec_name='Dp';

System.debug('my name is '+name+' first name: '+first_name+ 'Second name: '+sec_name); // op: my name is VND first name: Venna Second name: Dp


//example simple interset calculating
// simpleInterest=(pr*r*noofyears)/100
Integer principal=1000, no_of_years=5;
Decimal rate=5.6;
Decimal SI=(principal*rate*no_of_years)/100;        // 280
System.debug('Simple interest is '+SI);            // op: Simple interest is 280


/*

Data types in Apex:

1. Primitive Data types  -----------> Integer, Double, Long, Data, Datetime, String, ID or Boolean 
2. Collections   -------------------> Lists, Sets and Maps
3. sObject 
4. Enums 
5. Classes, Objects and Interfaces  



-> Primitive Data types

1. Integer - A 32-bit number that doesn't include a decimal point. 
    ex:   Integer num1=96;

2. Long - A 64-bit number that doesn't includes a decimal point.
    ex: Long num2=95458546L;

3. Decimal - A number that includes a decimal point.
    ex: Decimal decNum=3.56;

4. Double - A 64-bit number that includes a decimal point.
    ex: Double d=5.325235;

5. Boolean - A value that can only be assgined true, false or null.
    ex: Boolean is Active=True;

6. Date - Value that indicates a particular day. Date values contains no information about time.
    ex: 2023-01-29

7. Time - The time data type stores times (hours, minutes, Seconds and milliseconds).

8. DateTime - DateTime data type stores both dates and times.

*/



// Date -> more information - https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm

Date newDate=Date.newInstance(2022,08,12);   //syntax - newInstance(year, MM, DD);
System.debug('Date is '+newDate);            // op: Date is 2022-08-12 00:00:00

Date todayDate=Date.Today();
System.debug('Today date is '+todayDate);    // op: Today date is 20XX-MM-DD 00:00:00 -> prints current date


// Time -> more information - https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_time.htm

Time myTime=Time.newInstance(6, 12, 40, 24);  //syntax - newInstance(hour, min, sec, millisec)
System.debug('My time is '+myTime);           // op: My time is 06:12:40:240Z


// DateTime -> more information - https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_datetime.htm
// it return in GMT format.

DateTime myDatetime1=DateTime.newInstance(2022,07,17,5,23,50); //syntax - newInstance(year, MM, DD, Hour, min , sec);
String myDateString=myDatetime1.format();                      // format() -> converts the date to local time zone and  retrun the converted date as a formatttd string using the locale of the context user. 

System.debug('my Date is '+myDateString);                      // op: my date us 17/07/2022 5:23 AM



// String methods - more information - https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm

String s='naveen';

Integer inn=s.indexOf('v');    // op: 2  -> indexOf - find index value of string;

String s2=s.Capitalize();      // op: Naveen  -> Capitalize - capitalize the first val string;

String s3='abcde';
String s4='fghij';
Integer result_1=s3.compareTo(s4);   // op: -5  -> comapre the both 
Integer result_1=s4.compareTo(s3);   // op: 5 

String s5='fghij';
Integer result_1=s4.compareTo(s5);   // op: 0


String s6="I am salesforce developer and admin";
String s7="I am salesforce developer";

Boolean result_2=s6.equals(s7);       // op: false -> s6==s7

Boolean result_3=s6.equalsIgnoreCase(s7); //  op: true  -> if s6==s7 ignore case so true

String name1='naveen';
name1.toUpperCase();          // op: NAVEEN 

String name2='NAVEEN';
name2.toLowerCase();         // op: naveen

System.debug('Using contains method' name1.contains('ve'));  // op: using contains method true











/*

Operator in Apex 

------------------------------------------------------------------------------------------------------------------------------
Operator       |syntax(short form)      | syntax         | Descriptionns                                                     |
------------------------------------------------------------------------------------------------------------------------------
    =          |       x=y             |                 | Assignment operator. Assgin value of y to the value of x.         |
------------------------------------------------------------------------------------------------------------------------------
    +=         |       x+=y            |  x =x+y         |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    -=         |       x-=y            |  x =x-y         |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    /=         |       x/=y            |  x =x/y         |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    *=         |       x*=y            |  x =x*y         |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    |=         |       x|=y            |  x =x|y         | OR Assigment operator. if x and y both false.. op: value is true. | 
------------------------------------------------------------------------------------------------------------------------------
    &=         |       x&=y            |  x =x&y         | AND Assigment operator. if x and y both true.. op: value is true. |
------------------------------------------------------------------------------------------------------------------------------
    &&         |       x&&y            |                 | AND logical operator.                                             |
------------------------------------------------------------------------------------------------------------------------------
    ||         |       x||y            |                 | AND Loggical operator.                                            |
------------------------------------------------------------------------------------------------------------------------------
    ==         |       x==y            |                 |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    ===        |       x===y           |                 |                                                                   |
------------------------------------------------------------------------------------------------------------------------------
    ++         |       x++             |                 | Increment order                                                   |
------------------------------------------------------------------------------------------------------------------------------
    --         |       x--             |                 | Decrement order                                                   |
------------------------------------------------------------------------------------------------------------------------------


*/









/* Conditional Statements -

 --> if - else statement

if (condition){
    statement 1
}else{
    statement 2
}



 --> if ekse if statement

 if (condition 1){
    code 1;
 }else if (condtion 2){
    code 2;
 }else uf (condition 3){
    code 3;
 }else{
    code;
 }

*/

// if else statement

String name3='Yes';
if (name3=='Yes'){
    System.debug('Condition true');
}
else{
    system.debug('Condition false');
}

// if else if statement

Integer score=76;
if (score>80){
    System.debug('Excllent');
}
else if (score>=80) && (score<60){
    System.debug('Good!! Keep it up!!')
}
else if (score>35){
    System.debug('Work hard!!');
}
else{
    System.debug('Failed');
}















/*  ->  LOOPS in APex

-> Loopingv in programming languages is a feature which facilites the execution of a set of instrctions/ functions repeatedly while some condition evalutes to true.

There are 3 main types of loops in apex:
    1. While Loop
    2. For Loop
    3. Do-while Loop
*/

/*
While Loop -  
  -> A while loop is a control flow statement that allows code to be executed repeatedly basesd on a given Boolen condition. 
  -> The While loop can be thought of as repeating if statement.

Syntax:

while(condition){
    statement;
}

*/

// While loop -> display 1 to 5
Integer i=0;

While(i<=5){
    System.debug('Value of i: '+i); // op: Value of i: 1 \n  Value of i: 2 \n  Value of i: 3 \n  Value of i: 4 \n  Value of i: 5
    i++;
}







/*

For Loop - for statement consumes the initialization, condition and increment/decrement in one line..... easy to debug strucrture of looping.

syntax: 

for (initialization condition; testing condition; Increment/Decrement){
    statement;
}

example -                                                   */

for (Integer i=1;i<=5;i++){
    System.debug('Value of i: '+i); // op: Value of i: 1 \n  Value of i: 2 \n  Value of i: 3 \n  Value of i: 4 \n  Value of i: 5
}





// Break Statement: - used to jump out of a loop.
// Continue Statement - breaks one iteration(in loop), if a specified condition  occurs, and continues with next iteration in the loop.


// -> Nested Loops example- 

for (Integer i=1;i<=3;i++){
    for (Integer j=1,j<=3;j++){
        System.debug(i)
    }
}
/* op:
1
2 2
3 3 3       */






/* Apex supports three variations of the for Loop:

1. The traditional for loop:

syntax: 
for (init stmt; exit_condition; Inc/dEc stmt){
    code;
}

2. The list ir set iteration for loop:

syntax:
for (var: list_or_set){
    code;
}

3. The SOQL for Loop:

syntax:
for (var:[soql_query]){
    code;
}


*/








/*  

Switch Statement - Apex provides a switch statement that tests whether an expression matches one of several values and branches accordingly. 

Syntax:

Switch on expression {
    when value 1{
        code 1
    }
    when value 2{
        code 2
    }
    when value 3{
        code 3
    }
    when else{      // default block/condition (optional)
        code 
    }
}
 
example-                                                                                  */

Integer num3=3;

switch on num3 {
    when 2{
        System.debug('num is 2');
    }
    when 3{
        System.debug('num is 3');
    }
    when else{
        System.debug('num is null');
    }
}



/*

Collections data type-: A collection represents a group of objects. There are three different types of collections in apex and they are:
    1. List 
    2. Set 
    3. Map                                     */

/*  --->  List - A list is an ordred collection of the primitive data types dignified by its index.
Syntax:   List<Data type> ListName = new List<Datatype>();                                                                  */

List<String> obj1=new List<String>{'Naveen','VND','Junnu'}; // op for obj1: 'Naveen','VND',"Junnu'


//List methods

List<String> obj2=new List<String>();   // new list / empty
// or 
String[] obj3=new List<String>();

obj2.add('Naveen');   // adding val - 'Naveen ' in list obj2. op: 'Naveen'
obj2.add('Junnu');

obj2.add(0,'VND');    // adding val 'VND' in index 0. so op: 'VND','Naveen','Junnu'

obj2.remove(1);      // remove index 1 value. so op: 'VND','Jannu'

System.debug('Obj2 value obj2[1] is '+obj2[1]);   // op: Obj2 value obj2[1] is Junnu

Obj2.Size();         // length of list. op: 2

Obj2.set(0,'Naveen');   // op: 'Naveen','Junnu'  --> set method replaces the value with index value. syntax: Listname.set(index_no, Val);

Obj2[1]='VND';       // op: "VND', 'Junnu'

List<Integer> sortNum=new List<string>{6,2,5,3,2,7,1};

sortNum.sort();   // op: 1,2,2,3,5,6,7







/*  
> Set 
-> A set is an unordered collection of obj that doesn't contain any duplicate values.\
-> Use a set when you don't need to keep track of the order of the elements in the collection, and when the elements are unqiue and don't have to be sorted.

Syntax:   Set<DataType> setName = new Set<DataType>();                                                                      */

Set<String> nset=new Set<String>();
nset.add('orange');
nset.add('Apple');
nset.add('Banana');
nset.add('Apple');    // duplicate value

System.debug(nset);   // op: "Apple', 'Banana', 'orange'.

nset.Size();   //op: 3

nset.Clear();

nset.Size();   //op: 0





/* 
> Map
-> Maps are collection of key-value pairs, where the keys are of primitive data types.
-> Use a map when you want to store values that the to be referenced through a key. For ex, using a map you can store a list of addresses that correspond to employee IDs.

--> In a map, keys cann't be replaced/duplicate

Syntax:   Map<PrimitiveKeyDatatType, DataType> mapName = new Map<PrimitiveKeyDatatType, DataType>();                        */

Map<String,String> myStrings=new Map<String,String> {'a'=>'apple','b'=>'banana','c'=>'cat'};


System.debug('Map value for key a '+myStrings.get('a'));   // op: Map value for key a apple
System.debug('Map value for key b '+myStrings.get('b'));   // op: Map value for key b banna
System.debug('Map value for key-val '+myStrings);          // op: Map value for key-val {'a'=>'apple','b'=>'banana','c'=>'cat'}

Map<Integer,String> hmap=new Map<Integer,String>();

hmap.put(7,'Naveen');
hmap.put(4,'VND');
hmap.put(0,'ROyal');

System.debug(hmap);     // op: {7='Naveen',4='VND',0='ROyal'}

hmap.Size();   //op: 3
hmap.Clear();

hmap.Size();   //op: 0



/* sObject
An sObject is any object that can be stored in the force. com platform database. Apex allows the use of genric sObject abstract type to represent any object.

For ex, 

*/
















/* 

Object oriented programming concepts (OOPS) --






*/




























 

























