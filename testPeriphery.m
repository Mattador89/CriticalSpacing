% MATLAB script to run CriticalSpacing.m
% Copyright 2015,2016, Denis G. Pelli, denis.pelli@nyu.edu
clear o
if 0
   % FOR CHILDREN
   o.showProgressBar=1;
   o.fractionEasyTrials=0.2; % 0.2 adds 20% easy trials. 0 adds none.
   o.speakEncouragement=1; % 1 to say "good," "very good," or "nice" after every trial.
   o.speakEachLetter=1;
else
   % FOR ADULTS
   o.showProgressBar=1;
   o.fractionEasyTrials=0; % Add 20% extra easy trials. 0 for none.
   o.speakEncouragement=0; % 1 to say "good," "very good," or "nice" after every trial.
   o.speakEachLetter=1;
end
o.setTargetHeightOverWidth=0;
o.trials=4; % Number of trials (i.e. responses) for the threshold estimate.
o.viewingDistanceCm=100;
o.flipScreenHorizontally=0; % Set to 1 when using a mirror.
o.useSpeech=1;
o.beepPositiveFeedback=1;
o.beepNegativeFeedback=0;
o.usePurring=0;
o.minimumTargetPix=6; % Minimum viewing distance depends soley on this & pixPerCm.

% You don't need to change any of these parameters.
o.measureThresholdVertically=0;
o.observer=''; % Ask for name at beginning of run, or
% o.observer='Shivam'; % enter observer name here.
o.readAlphabetFromDisk=1; % 1 makes the program more portable.
o.usePurring=0; % Play purring sound while awaiting user response.
% o.radialOrTangential='tangential'; % vertically arranged flankers for single target
o.radialOrTangential='radial'; % horizontally arranged flankers for single target
o.negativeFeedback=0;
o.fixationCrossDeg=5;
o.durationSec=1; % duration of display of target and flankers
o.measureBeta=0;
o.textFont='Arial';
o.fixationLocation='left';
o.task='identify';
o.targetFont='Sloan';
o.alphabet='DHKNORSVZ'; % Sloan alphabet, excluding C
o.borderLetter='X';
% o.targetFont='Pelli';
% o.alphabet='123456789'; 
% o.borderLetter='$';

% DEBUGGING AIDS
o.displayAlphabet=0; 
o.showLineOfLetters=0;
o.showBounds=0;
o.frameTheTarget=0; 
o.printSizeAndSpacing=0;
o.speakSizeAndSpacing=0;
o.useFractionOfScreen=0; 

o.fixedSpacingOverSize=1.4; % Requests size proportional to spacing.

% FIRST RUN (measures two thresholds, interleaved)
o.repeatedTargets=0;
o.eccentricityDeg=0;
o.fourFlankers=1;
o.thresholdParameter='size';
% o(2)=o(1); % Copy the condition
o=CriticalSpacing(o); 
