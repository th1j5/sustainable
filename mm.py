import numpy as np
import time

N = 800
t = time.process_time()
X = np.random.uniform(0,10,[N,N])
Y = np.random.uniform(0,10,[N,N])
result = np.zeros((N,N))   
elapsed_time = time.process_time() - t
print("Initialization took", elapsed_time)
# iterate through rows of X
t = time.process_time()
for i in range(len(X)):
   for j in range(len(Y[0])):
       for k in range(len(Y)):
           result[i][j] += X[i][k] * Y[k][j]
#result = np.matmul(X,Y)
elapsed_time = time.process_time() - t
print("MM took", elapsed_time)
# for r in X:
   # print(r)
# print("")
# for r in Y:
   # print(r)
# print("")
# for r in result:
   # print(r)