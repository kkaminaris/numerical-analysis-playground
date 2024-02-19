t = 0:.002:1;
tt = exp(-t) .* (sin(2*pi*t)+2);
rt = single(tt);
round_err = (tt - rt) ./tt ;
plot (t,round_err,'b-');
title ('Σφάλμα κατά τη δειγματοληψία της exp(‐t)(sin(2\pi t)+2) με απλή ακρίβεια')
xlabel('t')
ylabel('Σφάλμα στρογγυλοποίησης')

% το σχετικό σφάλμα πρέπει να είναι περίπου eta = eps(single)/2
rel_round_err = max(abs(round_err)) / (eps('single')/2)