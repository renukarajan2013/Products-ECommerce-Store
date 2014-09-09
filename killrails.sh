ps -ef | grep rails | awk '{print $2}' | xargs kill -9
