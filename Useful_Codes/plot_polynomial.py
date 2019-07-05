import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline

def plot_polynomial(x,y,degree, *args):
    plt.figure(figsize=(12,8))
    plt.title('')
    plt.plot(x, y,'b.')

    # polynomial fit
    z = np.polyfit(x ,y,degree)
    p = np.poly1d(z)


    # polynomial plot
    xp = np.linspace(x.min(), x.max(), 1000)
    signs = ['+' if i>0 else '-' for i in p.coeffs][::-1]
    label = '  '.join(['%s %.2g x**%i'%(signs[i], abs(p.coeffs[~i]),i) for i in reversed(range(degree+1))])
    label = label.replace('x**0','')
    label = label.replace('x**1','x')
    label = label.lstrip('+')
    plt.plot(xp, p(xp), '-',label=label)
    if len(args) > 0: plt.xlabel(args[0])
    if len(args) > 1: plt.ylabel(args[1])
    if len(args) > 2: plt.title(args[2])
    plt.legend()
    
x = np.arange(10)
y = x**2 + 2*x - 3

degree = 2
xlabel = 'x'
ylabel = 'y'
title = 't'
plot_polynomial(x,y,degree,xlabel,ylabel,title)
