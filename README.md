# Neural Network RBF – Function Approximation in MATLAB

Radial Basis Function (RBF) Networks are a particular type of Artificial Neural Network used for function approximation problems. This repository implements a simple code to show how a Radial Basis Function (RBF) Neural Network can be used to approximate mathematical functions like sine and cosine using MATLAB.

### Training Data:
Input values from `-π/2` to `π/2` are used to train the network:
```matlab
  x = -pi/2:0.01:pi/2;
```

### Test data:
The trained model is tested on a wider range to evaluate generalization:
```
xtest = -pi:0.1:pi;
```

### Training Parameters:
```
MN = 30;    % Maximum number of neurons
DF = 1;     % Spread
net = newrb(x, y, 0, 1, MN, DF);
```

### Output:
The GUI plots the original function and the network's approximation side by side for comparison.


### 📊 Sample Results
- With MN = 10:

![image](https://user-images.githubusercontent.com/21992001/187099729-1f18b400-1db5-40d2-8eec-1218db288286.png)

- With MN = 20 :

![image](https://user-images.githubusercontent.com/21992001/187099734-1658e126-ba02-4c10-923e-daee56ed09e9.png)


### Changing data:
- #### Wider Input Range
```
x = -3*pi/2:0.01:3*pi/2;
xtest = -2*pi:0.1:2*pi;
```
![image](https://user-images.githubusercontent.com/21992001/187099831-343ae0f7-a2a1-4ef2-b686-e575cc90cfd9.png)


### 🖥️ GUI Features

- Click Sin to approximate the sine function
- Click Cos to approximate the cosine function
- Click Description to view a related image (e.g., 1.jpg)
- Click Exit to close the GUI

### 📎 Notes
- Built using MATLAB GUIDE
- Designed for educational use
- Works with older versions of MATLAB (e.g., 2009–2010)
