%% Time Base (10 seconds at 100Hz)
t = (0:0.01:10)'; 
deg2rad = @(x) x * pi / 180;

%% Define Full-Body Dance Motion Based on Lyrics

% Shoulders & Hips: "Left right left"
shoulder = deg2rad(25 * square(2 * pi * 0.5 * t));  % 0.5 Hz
hip = deg2rad(15 * square(2 * pi * 0.5 * t));

% Knees/Arms: "Up down up"
lift = deg2rad(30 * square(2 * pi * 1 * t));  % 1 Hz

% Wrists: "Wave wave"
wave = deg2rad(20 * sin(2 * pi * 2.5 * t));   % 2.5 Hz

% Neck/Shoulder: "Spin"
spin = deg2rad(15 * sin(2 * pi * 1 * t));     % 1 Hz

% Ankles: Bounce
bounce = deg2rad(10 * sin(2 * pi * 1 * t));   % 1 Hz

%% Assign to Joints (Full Body)

% Shoulders
left_shoulder_signal   = timeseries(shoulder, t);
right_shoulder_signal  = timeseries(-shoulder, t);
shoulder_motion_signal = timeseries(spin, t);  % for shoulder spin if needed

% Upper shoulders (for richer movement)
left2_shoulder_signal  = timeseries(0.5 * shoulder, t);
right2_shoulder_signal = timeseries(-0.5 * shoulder, t);

% Hips
left_hip_signal   = timeseries(hip, t);
right_hip_signal  = timeseries(-hip, t);
left2_hip_signal  = timeseries(0.5 * hip, t);
right2_hip_signal = timeseries(-0.5 * hip, t);

% Elbows and Knees
elbow_lift_signal  = timeseries(lift, t);
knee_lift_signal   = timeseries(lift, t);
knee2_lift_signal  = timeseries(-lift, t);

% Wrists
wrist_lift_signal  = timeseries(wave, t);
wrist2_lift_signal = timeseries(-wave, t);

% Ankles
ankle_lift_signal  = timeseries(bounce, t);
ankle2_lift_signal = timeseries(-bounce, t);

% Neck
neck_signal            = timeseries(spin, t);
neck_motion_signal     = timeseries(spin, t);  % For blocks named differently

%% Export All Signals to Base Workspace

% Shoulders
assignin('base', 'left_shoulder_signal',   left_shoulder_signal);
assignin('base', 'right_shoulder_signal',  right_shoulder_signal);
assignin('base', 'left2_shoulder_signal',  left2_shoulder_signal);
assignin('base', 'right2_shoulder_signal', right2_shoulder_signal);
assignin('base', 'shoulder_motion_signal', shoulder_motion_signal);

% Hips
assignin('base', 'left_hip_signal',   left_hip_signal);
assignin('base', 'right_hip_signal',  right_hip_signal);
assignin('base', 'left2_hip_signal',  left2_hip_signal);
assignin('base', 'right2_hip_signal', right2_hip_signal);

% Limbs
assignin('base', 'elbow_lift_signal',  elbow_lift_signal);
assignin('base', 'knee_lift_signal',   knee_lift_signal);
assignin('base', 'knee2_lift_signal',  knee2_lift_signal);
assignin('base', 'wrist_lift_signal',  wrist_lift_signal);
assignin('base', 'wrist2_lift_signal', wrist2_lift_signal);
assignin('base', 'ankle_lift_signal',  ankle_lift_signal);
assignin('base', 'ankle2_lift_signal', ankle2_lift_signal);

% Neck
assignin('base', 'neck_signal',        neck_signal);
assignin('base', 'neck_motion_signal', neck_motion_signal);

disp("✅ Full-body dance signals loaded successfully.");
