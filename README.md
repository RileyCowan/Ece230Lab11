# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Riley Cowan, Andrew Thompson

## Summary
In this lab, we learned how modulo counters and ring counters can be used to divide clock signals. I also learned how the structure of each counter affects the output frequency and behavior, especially how they cycle through states.

## Lab Questions
### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A modulo counter toggles its output every time it completes a full count cycle. Since it takes one full cycle to switch states and another to switch back, the total division ends up being twice the count value.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
On initialization, the ring counter may not have a properly set starting state, causing all flip-flops to briefly hold a value of 1. This happens because there is no enforced single “1” circulating until after the first clock cycle stabilizes the pattern.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The width depends on the input clock frequency, but generally you would choose a counter size where the number of states divides the clock down close to 1KHz. For example, with a high-frequency clock like 1 MHz, a ring counter around 1000 stages would be needed to approximate 1KHz.
