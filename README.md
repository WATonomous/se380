# se380
WATonomous' take on SE380 practical labs and projects
![SE380 Carla Arch](https://user-images.githubusercontent.com/15329294/215183671-02674616-ac87-4367-beee-ebd63d9b210a.png)


## Example Assignment Workflow:
1. Create a simulator scenario using the Carla Python API. For example, the scenario could spawn the ego vehicle and target vehicle, target vehicle follows some cosine velocity profile.
1. Student programs an adaptive cruise controller using some theory and practical knowledge taught in class, perhaps using the Python [PID package](https://pypi.org/project/simple-pid/).
1. Student executes script that runs the scenario and collects a ROS Bag of data from the scenario, for example distance between ego and target vehicle.
1. Student can see the results (e.g. the distance between ego and target) live in [foxglove studio](https://foxglove.dev/, or replay the bag file afterwards.
