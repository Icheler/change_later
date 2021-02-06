#!/bin/bash
echo "-------------------------------------------------------------"
echo "TU Many Bots configuration"
echo "-------------------------------------------------------------"
echo "tmb_ROBOT_ENV: [simple_corridor, maze, maze_simple, maze_simple_2, maze_clutter]"
echo "tmb_start_both: [true, false]"
echo "tmb_publish_perception_logs: [true, false]"
echo "-------------------------------------------------------------"
if [ -z ${tmb_ROBOT_ENV+x} ]
then
  world=simple_corridor
else
  world=$tmb_ROBOT_ENV
fi
if [ $tmb_start_both == False ]
then
  start_both=$tmb_start_both
else
  start_both=True
fi
if [ $tmb_publish_perception_logs == True ]
then
  publish_perception_logs=True
else
  publish_perception_logs=False
fi

export tmb_ROBOT_ENV=$world
export tmb_ROBOT=rto-1
export tmb_ROBOT_BLIND=rto-blind
export tmb_start_both=$start_both
export tmb_publish_perception_logs=$publish_perception_logs


echo "selected world is: $world"
echo "starting both robots: $start_both"
echo "publishing perception logs: $publish_perception_logs"
echo "-------------------------------------------------------------"

if [ $world="simple_corridor" ]
then
  export tmb_start_robot1_x="0.0"
  export tmb_start_robot1_y="0.0"
  export tmb_start_robot1_z="0.0"
  export tmb_start_robot1_yaw="0.0"

  export tmb_start_robot2_x="1.0"
  export tmb_start_robot2_y="0.0"
  export tmb_start_robot2_z="0.0"
  export tmb_start_robot2_yaw="0"

  export tmb_start_robot_blind_x="3.0"
  export tmb_start_robot_blind_y="-4.0"
  export tmb_start_robot_blind_z="0.0"
  export tmb_start_robot_blind_yaw="5.7"

  export tmb_start_goal_x="0.60339"
  export tmb_start_goal_y="6.06"
  export tmb_start_goal_yaw="0"
fi
if [ $world = "maze" ]
then
  export tmb_start_robot1_x="4.3"
  export tmb_start_robot1_y="-6"
  export tmb_start_robot1_z="0.0"
  export tmb_start_robot1_yaw="3.0"

  export tmb_start_robot2_x="21.3"
  export tmb_start_robot2_y="8.0"
  export tmb_start_robot2_z="0.0"
  export tmb_start_robot2_yaw="-1.6"

  export tmb_start_robot_blind_x="15.0"
  export tmb_start_robot_blind_y="-9.0"
  export tmb_start_robot_blind_z="0.0"
  export tmb_start_robot_blind_yaw="0.0"

  export tmb_start_goal_x="0"
  export tmb_start_goal_y="0"
  export tmb_start_goal_yaw="0"
fi
if [ $world = "maze_simple" ]
then
  export tmb_start_robot1_x="3.7"
  export tmb_start_robot1_y="-8.4"
  export tmb_start_robot1_z="0.0"
  export tmb_start_robot1_yaw="0.0"

  export tmb_start_robot2_x="9.5"
  export tmb_start_robot2_y="8.5"
  export tmb_start_robot2_z="0.0"
  export tmb_start_robot2_yaw="-1.6"

  export tmb_start_robot_blind_x="-9.0"
  export tmb_start_robot_blind_y="-8.0"
  export tmb_start_robot_blind_z="0.0"
  export tmb_start_robot_blind_yaw="0.0"

  export tmb_start_goal_x="-4.60322"
  export tmb_start_goal_y="6.47698"
  export tmb_start_goal_yaw="0"
fi
if [ $world = "maze_simple_2" ]
then
  export tmb_start_robot1_x="1.0"
  export tmb_start_robot1_y="0.0"
  export tmb_start_robot1_z="0.0"
  export tmb_start_robot1_yaw="0.0"

  export tmb_start_robot2_x="-1.0"
  export tmb_start_robot2_y="0.0"
  export tmb_start_robot2_z="0.0"
  export tmb_start_robot2_yaw="0.0"

  export tmb_start_robot_blind_x="-5.0"
  export tmb_start_robot_blind_y="8.0"
  export tmb_start_robot_blind_z="0.0"
  export tmb_start_robot_blind_yaw="0.0"

  export tmb_start_goal_x="4.26245"
  export tmb_start_goal_y="-9.112855"
  export tmb_start_goal_yaw="0"
fi
if [ $world = "maze_clutter" ]
then
  export tmb_start_robot1_x="1.0"
  export tmb_start_robot1_y="0.0"
  export tmb_start_robot1_z="0.0"
  export tmb_start_robot1_yaw="0.0"

  export tmb_start_robot2_x="-1.0"
  export tmb_start_robot2_y="0.0"
  export tmb_start_robot2_z="0.0"
  export tmb_start_robot2_yaw="0.0"

  export tmb_start_robot_blind_x="-5.0"
  export tmb_start_robot_blind_y="8.0"
  export tmb_start_robot_blind_z="0.0"
  export tmb_start_robot_blind_yaw="0.0"

  export tmb_start_goal_x="4.04245"
  export tmb_start_goal_y="-9.42855"
  export tmb_start_goal_yaw="0"
fi
