# cuhksz_ce_camp_covid_19

## Goals
- To analyze the COVID-19 data in China and get a mathematical epdimic model for the virus.
- To explore that how different policies can affect the model.
- To use the model created above to predict the breakpoint for people.
- To conclude some good advice for the policy maker to flatten the curve.

## Tool
Matlab

## Methods
- Using the basic SEIR model and modifying it with actual factors (policies, medical ability...).
- Using the previous data to train a model which satisfies the previous data.
- Caculating the error between the model trained by the previous and the real new data.
- Using Matlab to solve the diffierential equations and graphing.
- Maybe using Matlab to use the knowledge machine learning to get some good enough parameters.
  
## Thoughts
$$
    S(t+1) = S(t) - \frac{\beta_{1}S(t)I(t)r(t)}{N(t)} - \frac{\beta_{2}S(t)E(t)r(t)}{N(t)}
$$

$$
    E(t+1) = E(t) + \frac{\beta_{1}S(t)I(t)r(t)}{N(t)} + \frac{\beta_{2}S(t)E(t)r(t)}{N(t)} - \sigma E(t)
$$

$$
    I(t+1) = I(t) + \sigma E(t) - \gamma I(t)
$$

$$
    R(t+1) = R(t) + \gamma I(t)
$$