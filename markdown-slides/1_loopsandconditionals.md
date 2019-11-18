---
author: MPDA'20
title: Lists, Loops and Conditionals
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

----

You can also access items on a list individually...

```python
fruitList = ["organge","apple","strawberry"]
x = fruitList[0] # x = "orange
y = fruitList[2] # y = "strawberry"
```

----

...and in ranges of indexes separated by `:`

```python
fruitList = ["apple", "banana", "cherry",
            "orange", "kiwi", "melon"]
x = fruitList[2:4]
# x = ["cherry", "orange", "kiwi"]
```

----

### `append()` function

Adding objects to the end of a list

```python
thisList = [] # An empty list
thisList.append("Something")
# now thisList = ["Something"]
thisList.append("Else")
# new thisList =["Something", "Else"]
```

----

### `insert()` function

Adding an item at a specified index

```python
thisList = ["dog","cow","cat"]
thisList.insert(1,"bird")
# thisList = ["dog", "bird", "cow","cat"]
```

----

### `remove()` function

Removing an item from a list

```python
thisList = ["dog","cow","cat"]
thisList.remove("cow")
# thisList = ["dog","cat"]
```

----

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

----

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

----

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

----

In computer science, a `loop` is a programming structure that **repeats** a sequence of instructions **_until a specific condition is met_**.

```python
for VARIABLE_NAME in LIST_TO_ITERATE:
    # Code to be looped goes here!!
    # Everything inside the loop
    # should be INDENTED
```

## Examples

----

Print each _fruit_ in a **fruit list**

```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

----

You can also loop through the letters of a word

```python
for x in "banana":
    print(x)
```

----

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

> To be completed before the 20th of November!

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
