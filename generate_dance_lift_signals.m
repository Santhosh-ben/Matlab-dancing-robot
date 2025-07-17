%% Time Base (10 seconds, 100Hz)
t = (0:0.01:10)'; 
deg2rad = @(x) x * pi / 180;

%% Define Motion to Match Lyrics

% Lyrics structure for ~10 seconds (1 second per phrase):
% "Left right left"  → shoulders and hips sway
% "Up down up"       → knees and arms lift
% "Wave wave"        → wrists
% "Spin"             → neck and shoulders twist

% Shoulder & Hip Swings (Left-Right-Left)
shoulder = deg2rad(25 * square(2 * pi * 0.5 * t));
hip = deg2rad(15 * square(2 * pi * 0.5 * t));

% Up-Down-Up Knee/Arm Movements
lift = deg2rad(30 * square(2 * pi * 1 * t));

% Wave motion for wrist
wave = deg2rad(20 * sin(2 * pi * 2.5 * t));

% Neck spin motion
spin = deg2rad(15 * sin(2 * pi * 1 * t));

%% Assign to Joints

% Shoulders
left_shoulder  = shoulder;
right_shoulder = -shoulder;
left2_shoulder  = 0.5 * shoulder;
right2_shoulder = -0.5 * shoulder;

% Hips
left_hip  = hip;
right_hip = -hip;
left2_hip = 0.5 * hip;
right2_hip = -0.5 * hip;

% Elbows
elbow_lift = lift;

% Knees
knee_lift = lift;
knee2_lift = -lift;

% Wrists (wave)
wrist_lift = wave;
wrist2_lift = -wave;

% Ankles (light bounce)
ankle_lift = deg2rad(10 * sin(2 * pi * 1 * t));
ankle2_lift = -ankle_lift;

% Neck (spin)
neck_move = spin;

%% Send to Base Workspace as Timeseries

assignin('base', 'left_shoulder_signal',   timeseries(left_shoulder, t));
assignin('base', 'right_shoulder_signal',  timeseries(right_shoulder, t));
assignin('base', 'left2_shoulder_signal',  timeseries(left2_shoulder, t));
assignin('base', 'right2_shoulder_signal', timeseries(right2_shoulder, t));

assignin('base', 'left_hip_signal',        timeseries(left_hip, t));
assignin('base', 'right_hip_signal',       timeseries(right_hip, t));
assignin('base', 'left2_hip_signal',       timeseries(left2_hip, t));
assignin('base', 'right2_hip_signal',      timeseries(right2_hip, t));

assignin('base', 'elbow_lift_signal',      timeseries(elbow_lift, t));
assignin('base', 'knee_lift_signal',       timeseries(knee_lift, t));
assignin('base', 'knee2_lift_signal',      timeseries(knee2_lift, t));
assignin('base', 'wrist_lift_signal',      timeseries(wrist_lift, t));
assignin('base', 'wrist2_lift_signal',     timeseries(wrist2_lift, t));
assignin('base', 'ankle_lift_signal',      timeseries(ankle_lift, t));
assignin('base', 'ankle2_lift_signal',     timeseries(ankle2_lift, t));

assignin('base', 'neck_signal',            timeseries(neck_move, t));

disp('✅ Lyric-based dance signals loaded into base workspace.');












