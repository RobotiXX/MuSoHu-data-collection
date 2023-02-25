import time
import subprocess

twist_file = "src/custom_package/src/twist_generator.py"
twist_arg = ["python3", twist_file, "&"]
twpid = subprocess.Popen(twist_arg)

#################################################################################################
fileName = "CustomTopics.txt"
sleepTime = 0 # time (seconds) to get ready
durationTime = "5m" # recording time (seconds) ---- can also use minutes and hours

### NAME ##
context = "" # rush, neutral, or casual
date = "" # mmddyyyy
trajectory_number = 1
# context = "neutral" # casual, neutral, rush
initial = ""
scene = ""
bagName = f"data/{date}_{initial}_{scene}_{trajectory_number}_{context}"  #"data/" + name # -- change this every trial
#################################################################################################

arg = ["rosbag", "record", "-O", f'{bagName}', f'--duration={durationTime}', '/chatter']

# rosbag record -O session --duration=30 /chatter /rosout /tf

f = open(fileName, 'r')

lines = f.readlines()

for line in lines:
    arg.append(line.strip())

print(f"Get ready in {sleepTime} seconds...")
time.sleep(sleepTime)
print("Begin")
command = subprocess.run(arg)
print("The exit code was: %d" % command.returncode)