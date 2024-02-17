x0 = 0.5;
f0 = exp(1)^(-2*x0);
fp = -2*f0;
i = -20:0.5:0;
h = 10.^i;
err = abs (fp - (exp(1).^(-2*(x0+h)) - f0)./h );
d_err = f0/2*h;
loglog(h, err, 'b-*');
hold on
loglog(h, d_err, 'r-.');
xlabel('h');
ylabel('Relative Error')