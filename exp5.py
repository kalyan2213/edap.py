import numpy as np
print("creating array object")
arr=np.array([1,2,3,4,5])
print(arr)

print(type(arr))
print("use a tuple to create a Numpy array")
arr=np.array((1,2,3,4,5))
print(arr)

print("create a 0-D array")
arr=np.array(42)
print(arr)
print("create a 1-D array")
arr=np.array([1,2,3,4,5])
print(arr)
print("create a 2-D array")
arr=np.array([[1,2,3],[4,5,6]])
print(arr)
print("create a 3-D array")
arr=np.array([[[1,2,3],[4,5,6]],[[1,2,3],[4,5,6]]])
print(arr)
print("check dimensions")
a=np.array(42)

b=np.array([1,2,3,4,5])
c=np.array([[1,2,3],[4,5,6]])
d=np.array([[[1,2,3],[4,5,6]],[[1,2,3],[4,5,6]]])
print("is 0 dimension?")
print(a.ndim)
print("is 1 dimension?")
print(b.ndim)
print("is 2 dimension?")
print(b.ndim)
print("is 3 dimension?")
print(c.ndim)
print("higher dimension")
arr=np.array([1,2,3,4],ndmin=5)
print(arr)
print("number of dimension:",arr.ndim)