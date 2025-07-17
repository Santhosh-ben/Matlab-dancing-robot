# Matlab-dancing-robot
# 🤖 Full Body Dance Generator for Humanoid Robot in Simulink

This project animates a humanoid robot to perform full-body dance movements synchronized with rhythmic lyrics such as:

> 🎵 "Left, right, left – up, down, up – wave, wave, spin!" 🎵

The movement includes:
- Shoulders
- Hips
- Elbows
- Knees
- Wrists
- Neck

## 🛠 Features

- Smooth sinusoidal and rhythmic movements
- Compatible with Simulink Simscape Multibody
- Exportable joint signals as `timeseries` format
- Easy to integrate into custom robot arms or biped models

## 📂 Files

| File                          | Description                              |
|-------------------------------|------------------------------------------|
| `generate_dance_lift_signals.m` | MATLAB script to generate dance signals |
| `humanoid_robot_model.slx`   | Example Simulink model for the robot     |
| `LICENSE`                    | MIT License                              |
| `tutorial.mp4` *(optional)*  | Tutorial video of setup and demo         |

## ▶️ How to Use

1. Open `generate_dance_lift_signals.m` in MATLAB and run the script.
2. This will load the joint signals (e.g. `left_hip_signal`) into the base workspace.
3. Open `humanoid_robot_model.slx`.
4. Connect each `From Workspace` block to a joint using the matching signal.
5. Run the simulation and watch the robot dance!

> 💡 Tip: Use a 3D Animation block or Mechanics Explorer to visualize.

## 📄 License

This project is licensed under the MIT License. See `LICENSE` for full details.

## 📺 YouTube Demo

Watch the robot dancing here: [YouTube Demo](https://youtu.be/oZqoC9uJO7w?si=y2H80zn5qZOAcrjf)

---

Created by [Santhosh.A], 2025 🎓  
