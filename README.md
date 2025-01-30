# Unexpected Error Handling in VBScript Function

This example showcases a common pitfall in VBScript's error handling mechanism.  The `Err.Raise` statement within a function might not propagate errors correctly if the calling code isn't prepared to handle them appropriately.

The `bug.vbs` file demonstrates the issue. The solution in `bugSolution.vbs` shows how to properly manage the error and prevent unexpected behavior.

## How to Reproduce the Bug

1. Run `bug.vbs`.  Observe that the script might crash or produce unexpected results.
2. Run `bugSolution.vbs`. Notice how the solution uses `On Error Resume Next` to handle the potential error gracefully.

## Solution

The key to fixing the issue lies in properly handling potential errors raised by functions. Using `On Error Resume Next` is a common technique in VBScript, but be mindful of when to use it.