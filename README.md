# Neural-Network-RBF

Input data:

x = -pi/2:0.01:pi/2;

Test data:

xtest = -pi:0.1:pi;

# Training

MN=30;

DF=1;

net = newrb(x,y,0,1,MN,DF);


# Results:

MN=10 :

![image](https://user-images.githubusercontent.com/21992001/187099729-1f18b400-1db5-40d2-8eec-1218db288286.png)

MN=20 :

![image](https://user-images.githubusercontent.com/21992001/187099734-1658e126-ba02-4c10-923e-daee56ed09e9.png)


# Changing data:

xtest = -2*pi:0.1:2*pi;

x = -3*pi/2:0.01:3*pi/2;

![image](https://user-images.githubusercontent.com/21992001/187099831-343ae0f7-a2a1-4ef2-b686-e575cc90cfd9.png)
