---
author: MPDA'20
title: Lists, Loops & Conditionals
date: November 13-20, 2019
theme: white
transition: convex
highlight: breezedark
css: '../assets/css/revealCustom.css'
header-includes: |
  <!-- If the query includes 'print-pdf', use the PDF print sheet -->
  <script>
  document.write( '<link rel="stylesheet" href="../assets/css/' +
      ( window.location.search.match( /print-pdf/gi ) ? 'pdf' : 'paper' ) + 
      '.css" type="text/css" media="print">' );
  </script>
---

# Lists in `python`

In python, lists are defined using _square brackets_ `[]`.

```python
x = [] # This is an empty list
y = [1,2,3,4] # This is a list of numbers
```

---

You can also access items on a list individually...

```python
fruitList = ["organge","apple","strawberry"]
x = fruitList[0] # x = "orange
y = fruitList[2] # y = "strawberry"
```

---

...and in ranges of indexes separated by `:`

```python
fruitList = ["apple", "banana", "cherry",
            "orange", "kiwi", "melon"]
x = fruitList[2:4]
# x = ["cherry", "orange", "kiwi"]
```

---

### `append()` function

Adding objects to the end of a list

```python
thisList = [] # An empty list
thisList.append("Something")
# now thisList = ["Something"]
thisList.append("Else")
# new thisList =["Something", "Else"]
```

---

### `insert()` function

Adding an item at a specified index

```python
thisList = ["dog","cow","cat"]
thisList.insert(1,"bird")
# thisList = ["dog", "bird", "cow","cat"]
```

---

### `remove()` function

Removing an item from a list

```python
thisList = ["dog","cow","cat"]
thisList.remove("cow")
# thisList = ["dog","cat"]
```

---

### `pop()` function

Removing an item from a specified index

or the last index if no index is provided.

```python
thisList = ["dog","cow","cat"]
thisList.pop()
# thisList = ["dog", "cow"]

thisList = ["dog","cow","cat"]
thisList.pop(0)
# thisList = ["cow", "cat"]
```

## Built-in functions

---

### `range()` function

The `range()` function returns a sequence of numbers...

1. _starting_ from 0 by default,
2. and _increments_ by 1 (by default),
3. and _ends_ at a specified number.

```python
range(5) # Returns [0,1,2,3,4]

range(2,5) # Returns [2,3,4]

range(0,10,2) # Returns [0,2,4,6,8]
```

---

### `len()` function

The `len()` function returns the current length of a list:

```python
thisList = ["dog","cow","cat","bird"]
x = len(thisList)
# x = 4
thisList.append("bee")
x = len(thisList)
# x = 5
```

# What are `loops`?

---

In computer science, a `loop` is a programming structure that **repeats** a sequence of instructions **_until a specific condition is met_**.

```python
for VARIABLE_NAME in LIST_TO_ITERATE:
    # Code to be looped goes here!!
    # Everything inside the loop
    # should be INDENTED
```

## Examples

---

Print each _fruit_ in a **fruit list**

```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

---

You can also loop through the letters of a word

```python
for x in "banana":
    print(x)
```

---

`loops` can be _nested_

```python
letters = ["A","B","C"]
numbers = ["1","2"]
result = []
for i in letters:
    # Iterate through all letters
    for j in numbers:
        # Iterate throught all numbers
        result.append(i+j)
# Once the loop finishes
# result = ["A1","A2","B1","B2","C1","C2"]
```

# What are `if` statements?

'if' statements provide a way to run a portion of code **only** if a specific _condition_ is met.

```python
if (CONDITION):
    # This indented part will only run
    # if the condition is met
```

## {-}

Conditions will always answer _YES or NO_ questions. For example:

> Is `x` smaller than `3`?

```python
x = 5
if(x < 3):
    print("X is smaller than 3")
```

## {-}

you can also specify a section of code that will run if the condition **is not** met, using the `else` keyword:

```python
x = 5
if (x < 3):
    print("X is smaller than 3")
else:
    print("X is NOT smaller than 3")
```

## {-}

concatenating several conditions is possible using the `and`/`or` keywords

```python
x = 2
y = 2
if(x < 3 and y < 4):
    print("BOTH of the conditions have been met")
if(x < 3 or y < 4):
    print("ANY of the conditions have been met")
```

## {-}

and create even more complex conditions by concatenating them using _parenthesis_ `()`:

```python
if( (x< 3 and y < 4) or (x > 6 and y > 9) ):
    print("This part will only run if:")
    print("X is smaller than 3 and Y smaller than 4")
    print("OR")
    print("X is bigger than 6 and Y is bigger than 9")
```

## {-}

The result of a condition is always a boolean `bool`, so you can save it in a variable too.

```python
first = (x< 3 and y < 4)
second = (x > 6 and y > 9)

if(first or second):
    print("The result will be the same
           as the previous example")
```

This will greatly simplify your code and make it more **_readable_**.

## {-}

you can get the oposite of value of a given condition (or boolean) with the `not()` keyword.

```python
x = 2
first = x < 5
# First = True
oppositeOfFirst = not(first)
# oppositeOfFirst = False
```

# References

## Generic resources

1. [Generic python](https://www.w3schools.com/python/default.asp)
2. [Codility Code Challenges](https://app.codility.com/programmers/lessons/1-iterations/)
3. [Rhino Developer Docs](https://developer.rhino3d.com/guides/)
4. [RhinoCommon API](https://developer.rhino3d.com/api/RhinoCommon/html/R_Project_RhinoCommon.htm)
5. [Python for Non-Programmers](https://wiki.python.org/moin/BeginnersGuide/NonProgrammers)

## Rhino/GH resources

- [RhinoPython Primer](https://www.rhino3d.com/download/ironpython/5.0/rhinopython101)
- [Code of Space](https://codeofspace.com/tutorials/)
- [Designalyze](http://designalyze.com/course/intro-scripting-python-rhino)
- [Rhino Python Samples](https://developer.rhino3d.com/samples/#rhinopython)
