
#!/bin/bash

while true; do
  # Get CPU usage (average)
  cpu_usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')

  # Get GPU usage (example for NVIDIA GPUs using nvidia-smi)
  gpu_usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{print $1 "%"}')

  # Fallback if no GPU is detected or command fails
  if [ -z "$gpu_usage" ]; then
    gpu_usage="N/A"
  fi

  # Print combined CPU and GPU usage
  echo -e " CPU: $cpu_usage 龍 GPU: $gpu_usage"
  sleep 1
done
