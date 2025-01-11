# Objective-C ARC Memory Leak: Strong Property Management

This repository demonstrates a common memory leak in Objective-C when using Automatic Reference Counting (ARC) and how to fix it. The problem occurs when a strong property is not properly managed, leading to unreleased objects. 

## Problem
The `bug.m` file shows the faulty code where a strong property (`myString`) is repeatedly assigned without releasing the previous string, causing a memory leak.

## Solution
The `bugSolution.m` file demonstrates the corrected code.  Before assigning a new value to `myString`, the old value is set to `nil` to release the previous string and preventing memory leaks.