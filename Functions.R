simpleTrap <- function(fun, a, b){
  #return the area of the trapezoid made given a function and 2 endpoints 
  (1/2)*(b-a)*(fun(a) + fun(b))
}



trapRule <- function(fun, a, b, traps){
  #Compute the constant width value for the necessary number of trapezoids
  w = (b-a)/(traps)
  
  #Set the nodes for the first trapezoid
  x0 = a
  x1 = a+w
  
  #Initialize sum to 0
  sum = 0
  
  #While there are more trapezoids to check
  while(x1 <= b){
    
    #Update Sum to include the area of This trapezoid
    sum = sum + simpleTrap(fun,x0,x1)
    
    #Update the nodes to the next trapezoid
    x0 = x0 + w
    x1 = x1 + w
  }
  
  #Return the Total Area
  return (sum)
}



simpleSimp <- function (fun, a, b){
  #For Simpsons Rule, we need a third node inbetween a and b
  c = (a+b)/2
  
  #Define h to be the distance between 2 consecutive nodes.
  h = (b-a)/2
  
  # Computer Area for one interval Using Simpson's rule
  return ( (h/3) * (fun(a) + 4*(fun(c)) + fun(b)) )
}



simpRule <- function (fun, a, b, intervals){
  #Initialize sum to 0
  sum = 0
  
  #Define h to be the distance between 2 consecutive nodes.
  h = (b-a)/intervals
  
  #Set the nodes for the first Interval
  x0 = a
  x2 = a + 2*h
  
  #While there are more intervals to check
  while(x2 <= b){
    #Update Sum to include the area of This interval
    sum = sum + simpleSimp(fun,x0,x2)
    
    #Update the nodes to the next Interval
    x0 = x2
    x2 = x2 + 2*h
  }
  
  #Return the Total Area
  return (sum)
}

