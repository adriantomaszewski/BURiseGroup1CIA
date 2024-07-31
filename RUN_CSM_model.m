%% CREDITS
% Created by
% Vignayanandam R. Muddapu (Ph.D. scholar)
% C/o Prof. V. Srinivasa Chakravarthy
% Indian Institute of Technology Madras
% India

% RUN script for Comprehensive SNc model


% SNc with ATP dynamics (Francis et.al., 2013)
% Dopamine synthesis, storage, release, metabolism and terminal autoreceptors (Bravo, 2012)
% Ca2+ induced apoptosis (Hong et.al., 2012)
% Calcium-induced calcium release (Marhl et.al., 2000)
% Energy Metabolism (Cloutier & Wellstead, 2010)
% PD pathology pathways (Cloutier & Wellstead, 2012)

%% CODE

gl = 1; % Glucose concentration in mM
mt = 1; % Extend of oxygen available (0-no oxygen; 1-adequate oxygen)
filename = 'test';

dur=50000; % Duration of simulation in milliseconds

apoparray = ones(11,11);
stressarray = ones(11, 11);
calcinhibstressarray = ones(21);

for i=0:10
    for j=0:10
        [maxapop, maxstress] = SNcATPapopNM(dur,gl,mt, i*0.1, 0, 0, j*2);
        disp(maxapop)
        disp(maxstress)
        apoparray(i+1, j+1) = maxapop;
        stressarray(i+1, j+1) = maxstress;
    end
end