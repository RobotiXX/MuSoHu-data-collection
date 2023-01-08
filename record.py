import time
import subprocess

#################################################################################################
fileName = "CustomTopics.txt"
sleepTime = 5 # time (seconds) to get ready
durationTime = 10 # recording time (seconds) ---- can also use minutes and hours
bagName = "data/session" # -- change this every trial
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

