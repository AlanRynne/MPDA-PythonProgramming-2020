---
layout: default
title: Python Intro Exercises 01
permalink: /python-intro-exercises-01/
---

- [Exercise 1: Circular points!](#exercise-1-circular-points)
- [Exercise 2: Grid of points!](#exercise-2-grid-of-points)
- [Exercise 3:](#exercise-3)

# Exercise 1: Circular points!

Points using circular coordinates

## Setup

### Input:

1. _count_ (item):
   - The amount of numbers to be generated
2. _radius_ (item):
   - The desired radius

### Output:

1. _points_ (list):
   - A list of points in a straight line in the X coordinate

## Circular coordinates

$$
(r,\theta)\longrightarrow
\begin{eqnarray}
x &=& r\cos\theta\\
y &=& r\sin\theta\\
z &=& 0
\end{eqnarray}\longrightarrow pt
$$

**where** $r$ = `radius` **and** $\theta$ = `angle`

## Steps

> If you use any mathematical operations like `sin()` or `cos()`, remember to `import math` at the beggining of your script. Then you can use them as `math.sin()` and `math.cos()`

1. Create an empty list to hold your points
2. Compute the angle `step` = `2*PI/count`
3. Loop as many times as `count`:
4. At each iteration `i`:
   1. Compute the angle for the current iteration (`angle = step * i`)
   2. Compute the $x$, $y$ and $z$ coordinates of the point independently (one per line)
      - You'll need to use the radius and the angle from the previous step.
   3. Create the point
   4. Add the point to the list
5. Once the loop is finished, assign the point list to the output.

## Extra (you may come back later to do this part)

If done correctly, the steps above will generate a circle around the Origin `{0,0,0}`. The following steps might be a little bit more tricky:

### Adding an origin point

1. Create a new input in the script node called `origin` and set it's type hint to `Point3d`.
2. Modify your code so the points will be generated around `origin`.

> #### Reminder:
>
> Your can add points together directly: `point = pt1 + pt2`.  
> But you can also acces it's coordinates individually: `point.X`, `point.Y` or `point.Z` (notice the capital letter).

### Plane instead of Point

By now, we will be able to move our circle around, but it will always lie on the `XY Plane`. Modify your code to generate your circle around a `Plane` instead of a `Point3d`.

1. You will need to change the _type-hint_ in the `origin` input to `Plane`.
2. Computing the absolute coordinates from relative coordinates around a plane might come in handy!

> #### `Rhino.Geometry.Plane`
>
> The `RG.Plane` class represents a plane in 3D space. It is composed of an origin point and 3 direction vectors.  
> If you had a plane called `pln`, you can access each of them like:
>
> ```python
> pln.Origin # Origin point of the plane
> pln.XAxis # X Axis of the plane
> pln.YAxis # Y Axis of the plane
> pln.ZAxis # Z Axis of the plane
> ```
>
> The plane class also contains a function that will be useful:
>
> `pln.PointAt(u,w,z)`: This function takes in 3 numbers, one for each relative coordinate of the plane, and returns a point in World Coordinates.

# Exercise 2: Grid of points!

Create a grid of points

## Setup

### Input:

1. _uCount_ (item): The ammount of points to generate in the X direction.
2. _vCount_ (item): The ammount of points to generate in the Y direction.

### Output:

1. _points_ (list): The resulting grid of points as a list.

## Info:

You can create a double loop in python by _nesting_ one loop inside another. Copy this code into a python component and run it to see what happens!

```python
for i in range(5):
    for j in range(7):
        print(i, j)
```

Since the variable for each loop changes on each iteration, you can use `i` as the $x$ coordinate and `j` as the $y$ coordinate of a point.

## Steps:

1. Create an empty list to hold the points in our grid.
2. Create a loop from `0` to `uCount`
3. For every iteration `i` (inide the loop):
   1. Create a loop from `0` to `vCount`:
   2. For every iteration `j` (inside the second loop):
      1. Create a point with coordinates `{i,j,0}`
      2. Add the point to the list
4. After BOTH loops have finished (remember _indentation_ has meaning) output the list of points.

## Extra:

### Adding spacing

1. Add a new input to your script called `spacing` and set it's type-hint to `float`.
2. Modify your script so that you can use the `spacing` variable to control the distance between the points.
3. Change your code to be able to specify a spacing value per direction (`uSpacing` and `vSpacing`) instead of a uniform value for each direction (`spacing`).

### Create the points relative to a plane

1. Add a new input to your script called `basePlane` and set it's type-hint to `Plane`.
2. Modify your script so that the points that you generate lie on the provided plane.
   > Remember the `Plane` class has a `PointAt(u,v,w)` function.

### Adding conditinals

Include a condition to create each point only if:

1. The value in `i` is an odd number **AND** the value in `j` is an odd number.
2. The value in `i` is an odd number **OR** the value in `j` is an odd number.
3. The value in `i` is an even number **AND** the value in `j` is an even number.
4. The value in `i` is an even number **OR** the value in `j` is an even number.
5. Condition no.1 **OR** Condition no.2

Try all 5 scenarios.

> #### Remember:
>
> If a number is divisible by 2, it is an **even number** Remember you can use the _modulus_ (`%`) to find out if a number is divisible by any another number.
> In python, you can obtain the modulus of 2 numbers by:
>
> ```python
> num1 = 5
> mod = num1 % 2 # Result 0.5, number is odd
>
> num2 = 8
> mod = num2 % 2 # Result 0, number is even
> ```
>
> If you are not sure how or why this works, try it out by it self on a separate script or using the _modulus component_ in grasshopper directly to familiarize your self with this concept.

# Exercise 3: 
