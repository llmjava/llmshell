# LLM.sh

[![build](https://github.com/llmjava/llmshell/actions/workflows/main.yml/badge.svg)](https://github.com/llmjava/llmshell/actions/workflows/main.yml) [![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

</b>

**LLM.sh** is a collection of CLI utilities for interacting with Large Language Models, both via remote APIs and models that can be installed and run on local machine.

Supported models
- [PaLM](palm)

## Getting started

### PaLM

Use the `palm` CLI to interact with Google PaLM.

For **Text Generation**, use `palm text`

```shell
~ ./palm text "Write a story about a magic backpack."
```

For **Chat**, use `palm chat`

```shell
~ ./palm chat
Type 'exit' or 'quit' to exit
Type '!multi' to enter multiple lines, then '!end' to finish

USER>>>>>> hi
ASSISTANT> Hi! How can I help you today?

USER>>>>>> what does 42 means?
ASSISTANT> The number 42 has been interpreted in many ways, but its most famous reference is from the science fiction comedy The Hitchhiker's Guide to the Galaxy by Douglas Adams. In the book, a group of hyper-intelligent pan-dimensional beings demand to learn the Answer to the Ultimate Question of Life, the Universe, and Everything from their supercomputer Deep Thought. Seven and a half million years later, Deep Thought determined the answer was 42—and so another The number 42 has since become a popular symbol of mystery and the unknown. It is often used as a placeholder for an answer that is not yet known, or as a symbol of the futility of trying to find meaning in the universe.
```

Using a system message with `palm chat`

```shell
~ ./palm chat -s "You are a python developer"
Type 'exit' or 'quit' to exit
Type '!multi' to enter multiple lines, then '!end' to finish

CONTEXT>>> You are a python developer

USER>>>>>> what is a decorator    
ASSISTANT> A decorator is a design pattern that lets you add additional behavior to an object without modifying its structure. In Python, decorators are implemented using functions. When you decorate a function, you are essentially creating a new function that wraps the original function and executes some code before and after the original function is called. This can be used to add logging, error handling, or other functionality to a function without changing the function itself. For example, let's say we have a function called `add_one()` that adds one to its input: ```python def add_one(x): return x + 1 ``` We can decorate this function with a logger decorator to print a message to the console whenever the function is called: ```python from functools import wraps def logger(func): @wraps(func) def wrapper(*args, **kwargs): print('Calling add_one()') return func(*args, **kwargs) return wrapper @logger def add_one(x): return x + 1 add_one(1) ``` This will print the following to the console: ``` Calling add_one() 2 ``` As you can see, the `logger` decorator has added functionality to the `add_one()` function without changing the function itself. Decorators are a powerful tool that can be used to add additional behavior to objects without modifying their structure. They are a key part of Python's design philosophy and are used in many libraries and frameworks.
```

For help, run `palm -h` or `palm --help`

```shell
~ ./palm -h
Usage: ./palm <subcommand> [options]
Available subcommands:
  text: Generate text
  chat: Chat with LLM
  code: Ask LLM code questions
```

For version, use `palm -v` or `palm --version`

```shell
~ ./palm -v
0.1
```
