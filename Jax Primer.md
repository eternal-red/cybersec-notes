## Overview
Jax is a python library for fast array/vector computations. It is virtually identical to Numpy in what it can do. However, in order to achieve its fast computation it has many constraints. Jax’s key features are its Automatic differentiation which does not have rounding error while Numpy’s numerical differentiation does, and its JIT computing which parallelizes computations speeding Jax up. Jax should not be used if you need to vectorize functions that use for loops and cannot be written without them. Using Jax to vectorize functions with lots of branching is quite difficult and not recommended. Jax is much faster using GPUs so using computers with GPUs is preferred. There is a lot more you can do in Jax than what is taught in this primer, such as its many features giving you fine-grain control over its parallelization. 

## Underlying mechanics
### Out of bounds

Jax will not give out of bounds errors. The `Jax.array` type and use of JIT computation prevents it from doing so. Instead indexing an out of bounds index will return the closest index that is in bounds. 

If you would like finer-grained control over the behavior for out-of-bound indices, you can use the optional parameters of [ndarray.at](https://jax.readthedocs.io/en/latest/_autosummary/jax.numpy.ndarray.at.html)

### Immutable
Each element in a Python list or tuple is treated as a separate JAX variable, and individually processed and pushed to device. You cannot directly call Jax operations on lists or tuples. You must convert them to `Jax.Array`
    
### Transformations
1. By default JAX executes operations one at a time, sequentially. However you can parallelize some functions use `.jit()`  
2. Jax uses Automatic differentiation which is more accurate than Numpy’s uses numerical differentiation which may have rounding errors. Not all JAX code can be JIT compiled, as it requires array shapes to be static & known at compile time. 
3. All Jax transformations are designed to be composable, which means you can wrap a vmapped function with jit, or a jitted function with vmap, and everything will work correctly:
## JAX constraints

Use pure functions in JAX or else functions will crash or not work as intended. A pure function in python is one that satisfied these two requirements:

**Deterministic:** Given the same input, a pure function always produces the same output. There are no random elements or internal state changes that could affect the result.

**No Side Effects:** A pure function does not alter any external state or variables. It does not modify global variables, perform I/O operations, or change any data outside its scope. Its behavior is entirely dependent on its input parameters and its output is solely based on those inputs.

JAX code used within transforms like jax.jit, jax.vmap, jax.grad, etc. requires all output arrays and intermediate arrays to have static shape: that is, the shape cannot depend on values within other arrays. 

## Transformations
Jax transformations take a function as an input and output a Jax function. There are 3 important transformations:  [jax.jit()](https://jax.readthedocs.io/en/latest/_autosummary/jax.jit.html#jax.jit), [jax.vmap()](https://jax.readthedocs.io/en/latest/_autosummary/jax.vmap.html#jax.vmap), and [jax.grad()](https://jax.readthedocs.io/en/latest/_autosummary/jax.grad.html#jax.grad).

### JLT
JIT optimizes the performance of code by compiling it into machine code at runtime.In order to use JIT on a function you need a function decorator. There are two parts to JIT:

Compilation: When the JIT-decorated function is called for the first time, JAX compiles the function. This compilation step generates optimized machine code for the function's computation.

Caching: JAX caches the compiled version of the function. Subsequent calls with the same input shapes and types will use the cached compiled version, avoiding recompilation and improving performance.

Jlt works by reusing cached compiled code.  Thus, if the cached code branches (if statements) it will cause errors. However, you can specify the static_argnums=(0,) if you still wanna use JIT on a function with branches. If you want to JLT and vectorize a function you show add the [state]([https://jax.readthedocs.io/en/latest/stateful-computations.html](https://jax.readthedocs.io/en/latest/stateful-computations.html)  as one of the function’s arguments. 

There are more options for control flow in JAX than just using static_argnums. You can use [control flow primitives](https://jax.readthedocs.io/en/latest/notebooks/Common_Gotchas_in_JAX.html#structured-control-flow-primitives) to use JIT on more complicated branching functions.

Note: Printing a JITed function will not always yield what you expect
Note: you cannot JIT every function in JAX
### Vmap

Automatic vectorization is a technique used to optimize the performance of code by converting scalar operations into vector operations that can be executed in parallel. You can do this with `vmap()`. This function automates the process of applying a function across multiple inputs, essentially batching computations to run in parallel.

#### How to vectorize with vmap

1. define a function that operates element-wise
2. call `vmap()` to map this function across a specified dimension of input arrays, which applies the function to multiple inputs in parallel.
	1. specify additional parameters such as:
	- in_axes: Specifies which dimensions of the input arrays should be mapped over. This parameter tells vmap which axis to vectorize.
	- out_axes: Specifies which dimensions of the output arrays should be retained. This parameter tells vmap how to handle the output structure.
	- axis_name: An optional parameter that can be used to name the axis being mapped over, which is useful in distributed computations.
    
### grad
Find the gradient of a function with respect to any variable.
You can’t view the equations of grad of the functions

## Debugging in JAX
[https://jax.readthedocs.io/en/latest/debugging.html](https://jax.readthedocs.io/en/latest/debugging.html) 
## Differences with Numpy
The most significant differences between Jax and Numpy are mentioned in the Underlying mechanics and constraints section. More subtle differences can be found here:
[https://jax.readthedocs.io/en/latest/notebooks/thinking_in_jax.html](https://jax.readthedocs.io/en/latest/notebooks/thinking_in_jax.html) 
[https://jax.readthedocs.io/en/latest/notebooks/Common_Gotchas_in_JAX.html](https://jax.readthedocs.io/en/latest/notebooks/Common_Gotchas_in_JAX.html)