Objective: In an experiment, the activity of N muscles of the upper limb is recorded 
while a subject applies forces at a fixed handle in different directions. The goal is to use 
muscle activity (electromyographic signals) to estimate the force exerted by the hand 
on the handle in real time.
Method: Low-pass filter, rectify and integrate each of the EMG signals. Use PCA to 
explore the EMG data. Apply polynomial regression models to estimate hand force 
from the EMG signals. Compare the performance of different polynomial orders. Use 
cross-validation to establish the correct model order. 
Bonus: Analyze the spatial distribution of muscle activities (which muscles are 
activated in the various directions).
