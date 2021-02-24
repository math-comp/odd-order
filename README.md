[![CI](https://github.com/math-comp/odd-order/workflows/CI/badge.svg?branch=master)](https://github.com/math-comp/odd-order/actions?query=workflow%3ACI)

# A formal proof of the Odd Order Theorem
The repository contains a [formal verification](https://hal.archives-ouvertes.fr/hal-00816699/) of 
the [Odd Order Theorem](https://en.wikipedia.org/wiki/Feit%E2%80%93Thompson_theorem) (Feit - Thompson, 1963), 
a landmark result of finite group theory.

The formal proof is based on the [Mathematical Components](https://github.com/math-comp/math-comp)
library for the [Coq](https://coq.inria.fr) proof assistant.

## Installation

If you already have OPAM installed:

```
opam repo add coq-released https://coq.inria.fr/opam/released
opam install coq-mathcomp-odd-order
```
