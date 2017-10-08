#!/usr/bin/env bash
# File: guessinggame.sh


numberOfFiles=$(ls -1 | wc -l)

function askFileCount {
echo "How many files are in this directory? ($numberOfFiles)"
read response
}
echo "$response"
while [[ -z $response ]] || [[ $response -ne $numberOfFiles ]]
do

  if [[ $response -gt $numberOfFiles ]]
  then 
    echo "The number is too damn high!"
  elif [[ -n $response ]] && [[ $response -lt $numberOfFiles ]]
  then
    echo "Low energy number. Higher please."
  fi
  askFileCount
done

echo "Well done!"
exit 0
