
- It seems the person who implemented OpenStruct originally didn't do it all the way down to the bottom of the code. Instead, they just added it at the top and when passing it down they used an OpenStruct.to_hash call, and from there down its used as a hash.  This works for the purpose of using the code, but it decreases maintainability and makes debugging confusing.  Should change all options to options, the OpenStruct object, to use OpenStruct.