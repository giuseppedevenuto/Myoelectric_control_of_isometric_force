function  [sigf, sig2f, env]=filtering_and_envelope(r,c,ch,seg_mus,B,A,mode,Ba,Aa)

sseg_mus=seg_mus{ch,1}{r,c};

% Compute filtered data
sigf(:,ch) = filtfilt(B,A,sseg_mus);

% Rectify signal...
switch mode
    case 'MAV'
        sig2 = abs(sigf(:,ch));  % take absolute value
        
    case 'RMS'
        sig2 = sigf(:,ch).^2;    % take square...
        
end

% Low-pass filter with moving average filter
sig2f = filtfilt(Ba,Aa,sig2);  % large time window

switch mode
    case 'MAV'
        envelope(:,ch) = sig2f;
    case 'RMS'
        % Take square root (if used square to rectify)
        envelope(:,ch) = sqrt(sig2f);
        
end

env=envelope(:,ch);

end


