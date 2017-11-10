# VisHW1
#### Minju Kim and Kassandra Munguia 

## Design Process:
![GitHub Logo](/vishw1.jpg)


A discussion of design decisions and changes you made to your design along the way. Were you able to include everything that you had thought of in your paper prototype? 
 
At first we decided we were going to do a visualization like the one linked in [nutrients](http://bl.ocks.org/syntagmatic/raw/3150059/). We thought that the way the authors designed their visualization to be able to interact with the data was the most efficient way to portray data.They used line marks and color hue to show variables and distinguish between them. We thought using different color lines would be a good way to distinguish items within data; however, we decided not to lable our axis with different increments like the authors did here. We have added the max of each axis at the top so that the reader can see the difference in height for each variable that an axis represents. 

We knew the requirements were that we had to make the axis move and be able to filter. We were also under impression that we were creating a visulization for a specific data set (in this case nutrients) and so once we realized that our visualization had to work for multiple vis like cars and nutrients we had to redesign our code structure. It did not affect our actual design because we thought the the different colored lines and the interactivity would work for any data that was processed through our visualization system. 

## Interactivity

A description of how your interactivity works (a user’s manual), and a justification of your design decisions using concepts we have covered in the class. Does your design work? What could be improved, given more time, and how? Did you come up with any interactivity mechanisms to support tasks other than those described above?

So our interactivity that we implemented was making of rectangles on the screen and being able to move the axis. We were not able to have both of them work at the same time but were able to have them work differently. 

### Moving axis 

So you can moves the axis by clicking on the label on top of it, so the name, and then dragging it iether left or right. There is a late response to this so it may take a little bit before you see any changes. Even though we can move it, we cannot switch the axis with one another. All you an do is make the gap between different axes larger or smaller.  If we had more time we would make response time quicker and allow for the axis to be switched with eachother. We thought that it was important that our vis allowed. 

### "Filtering"

There are two parts to the filtering interaction. One is making the actual rectangle on an axes that will filter the data that and two, making sure that the data adjusts to the area od the rectangle and only shows items that pass through the rectangle. We were able to accomplish the first part of this interaction. 

If we had more time, we would be able to make sure that you couldn't draw a rectangle on the just any part of the screen and that the data would adjust to be filtered through the area of the rectangle. 



