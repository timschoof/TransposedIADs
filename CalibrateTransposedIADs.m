%%
clear
close all
IAD='ILD';
if strcmp(IAD, 'ITD')
    ITD = 1000; % in us -- 12500 is 1/2 period for 40 Hz modulation
    starting_SNR=20*log10(ITD/100);
    START_change_dB=0;        
    MIN_change_dB = 1;
else
    starting_SNR=6;
    MIN_change_dB = 0.25;
    START_change_dB=0;    
end

TransposedIADs('SR', 'starting_SNR',starting_SNR, ...
     'IAD', IAD, ...
     'SignalDuration', 400,'LongMaskerNoise', 2400,...
    'START_change_dB', START_change_dB, ...
     'GoButton', 0, 'dBSPL', 80,...
     'BackNzLevel',-2,...
    'outputAllWavs', 1, 'DEBUG', 0);
% ,...
%     'ToneDuration', 500, 'WithinPulseISI', 100, 'NoiseDuration', 500, ...
%     'LongMaskerNoise', 00, 'fixed', 'signal');
return
