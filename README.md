# Lab Notes: K-map Simplification and Logic Verification
Andy Lopez-Martinez & Ibuki Hasegawa

## 1. Lab Summary
This lab focused on simplifying logic expressions using Karnaugh maps (K-maps). We learned how to identify and minimize Boolean expressions by grouping terms within the map. We also studied the differences between Sum of Products (SOP) and Product of Sums (POS), and practiced performing the corresponding calculations. Finally, we implemented the simplified logic expressions in code, tested them on the circuit, and confirmed that the logic matched and functioned correctly.

## 2. K-map Adjacency and Gray Code
In a K-map, groups of 1’s (or 0’s) can be connected across the edges of the diagram. This is because the edges of the map are considered adjacent cells, due to the arrangement in Gray code order. In Gray code, only one bit changes between adjacent cells, so wrapping around the edges preserves adjacency. This property allows for larger groupings, which further simplifies the Boolean expression.

## 3. SOP vs. POS
The names Sum of Products (SOP) and Product of Sums (POS) reflect their logical structures:
- **SOP**: Product terms (minterms) are formed by ANDing variables, and then these terms are combined with OR operations (sums).  
  Example: F = A'B + AB'
- **POS**: Sum terms (maxterms) are formed by ORing variables, and then these terms are combined with AND operations (products).  
  Example: F = (A + B)(A' + C)

Understanding this distinction helps in converting between different forms of Boolean expressions and recognizing which form is more efficient in implementation.

## 4. Using XOR in Testbench (test.v)
In the test.v file, the XOR operation is used to verify circuit correctness:
- XOR outputs 0 when two inputs are the same.
- XOR outputs 1 when two inputs are different.

By XORing the expected output with the actual circuit output, we can detect errors:
- A result of 0 means the circuit works as expected.
- A result of 1 indicates a mismatch between expected and actual outputs.

This makes XOR a powerful tool for automated verification in hardware testbenches.
