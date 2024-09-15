
## Overview
Polars is Fast DataFrame library similar to Pandas. 
It's key features are it's parallelization and query optimizations (performed by its lazyframes). Polars should be used for processing data that does not require being sequential.  It can easily be converted to and work with Pandas and Numpy.

## Inspecting/Viewing Polar's object

 `.head(n)`: view first n rows
 `.tail(n)`: view last n rows
  `df.shape`: view the dimensions of the dataframe
 `.sample(n,..)`:  view n rows from dataframe, where the rows are random
 `.describe()`: returns table of general statistics about the dataframe


## Underlying Mechanics
#### Parallelization
All operations in Polars are parallelized. A **parallelized operation** refers to a computational task that has been divided into smaller, independent units of work that can be executed simultaneously. It is very difficult to perform sequential operations in Polar. Examples are those in the LinAlg primer (internal link here). Parallelization allows Polars to be much faster than Pandas for operations that can be parallelized.
### Datatypes
Polars uses the [Arrow data types](https://docs.pola.rs/user-guide/concepts/data-types/overview/)
### NaN (not a number)
NaN represents a number that is undefined, missing, or the result of a undefined operation. Polars follows the IEEE 754 standards except with NaN. In Polars, any NaN is equal to any other NaN (ie. NaN == NaN). Additionally, any NaN is greater than any non-NaN (ie. NaN > 5). More information can be found [here](https://docs.pola.rs/user-guide/expressions/missing-data/)
### Categorical Data Comparison
You can create categorical datatypes both with [.Categorical()](https://docs.pola.rs/api/python/stable/reference/api/polars.datatypes.Categorical.html) or [.Enum()](https://docs.pola.rs/api/python/stable/reference/api/polars.datatypes.Enum.html). When using `.Categorical()` values are compared lexicographically (like the builtin python compare). However `.Enum()` performs comparisons based off the index position of the categorical datatype. 



## Lazy vs Eager
Polars supports two modes of operation: lazy and eager. In the eager API the query is executed immediately while in the lazy API the query is only evaluated once it is 'needed'. Deferring the execution to the last minute can have significant performance advantages and is why the Lazy API is preferred in most cases. 

#### lazy frames
The [optimizations](https://docs.pola.rs/user-guide/lazy/optimizations/) that lazyframes performs are automatic and you just need to call the `.collect()` method on your lazyframe to perform it. Once you call `.collect()` on your lazyframe. It becomes a dataframe. In lazy mode every step is executed immediately returning the intermediate results. This can be very wasteful as we might do work or load extra data that is not being used. Lazyframes have most of the same expressions that Dataframes do. They function in the same way where the same input will give the same output, however their implementations are different. 
#### streaming mode
One additional benefit of the lazy API is that it allows queries to be executed in a streaming manner. Instead of processing the data all-at-once Polars can execute the query in batches allowing you to process datasets that are larger-than-memory. However, streaming mode is still in development and may be unstable.
`Warning: Streaming mode may be unstable`
## Context and Expressions
In Polars, you modify data using expressions and manage how these operations are applied through different contexts. **Contexts** (eager mode or lazy mode) determine how and when the expressions are executed. **Expressions** define the operations you want to perform on your data and are used to construct queries. Expressions can be chained together to build complex operations, and they are evaluated when you trigger execution based on the context you are using.
```
- Contexts: Define when and how expressions are executed. In eager mode, expressions are executed immediately. In lazy mode, expressions are collected into a query plan and executed when .collect() is called.
```

```
Expressions: Define operations to be performed on data. They are used to describe transformations and can be chained together to build complex queries.
```

#### Expressions
You are able to run your own user-defined functions in parallel on the data using map_elements and map_batches. [map_elements](https://docs.pola.rs/py-polars/html/reference/expressions/api/polars.Expr.map_elements.html): Call a function separately on each value in the Series. [map_batches](https://docs.pola.rs/py-polars/html/reference/expressions/api/polars.Expr.map_batches.html): Always passes the full Series to the function.


## Comparison with Pandas
#### **Conceptual Differences**

1. **Indexing**:
    - **Pandas**: Uses multi-indexing, each row can be assigned their own special indexes.  
    - **Polars**: Does not allow assigning indexes to rows. Each row is indexed by its integer position.  
2. **Memory Representation**:
    - **Pandas**: Uses NumPy arrays for in-memory data representation.
    - **Polars**: Uses Apache Arrows. Polars can convert data to NumPy format or Pandas if needed.
3. **Parallel Operations**:
    - **Pandas**: Core operations are unthreaded and sequential. For parallel processing, additional libraries like Dask are required.
    - **Polars**: Built in Parallelization
4. **Evaluation Model**:
    - **Pandas**: No LazyFrames, everything is executed when called.
    - **Polars**: LazyFrames allow for running operations after optimization

#### **Syntax Differences**

1. **Indexing**:
    - **Pandas**: Uses `.loc[2,1]`, `.iloc[2,"b"]`.
    - **Polars**:  Use methods `df.select(["b"]).slice(start=2,length=1)`. Direct indexing  (ie. `df[:][2]` ) also works but is slower
	    - useful methods are `.select()`, `.slice()`, `.filter()`
2. **Add Columns**:
    - **Pandas**: Uses `.assign()` or `df["new col"]=new_col` in sequential time
    - **Polars**: Uses `newcol=pl.col("original col")` to add in parallel time
3. **Filtering Data**:
    - **Pandas**: Uses `.query()` or directly compare `df[(df["m2_living"] > 2500)`
    - **Polars**: Uses `.filter()` method 
## Relation to other Libraries