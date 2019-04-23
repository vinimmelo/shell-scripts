#!/bin/bash

# memory-process: verify the larger process size of the system.

if [ ! -d log ]; then
  mkdir log
fi

memory_process()
{
  process=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])

  for pid in $process; do
    process_name=$(ps -p $pid -o comm=)
    echo -n $(date +%F,%H:%M:%S,) >> log/$process_name.log
    process_size=$(ps -p $pid -o size | grep [0-9])
    echo "$(bc <<< "scale=2;$process_size/1024") MB" >> log/$process_name.log  
  done
}

memory_process

if [ $? -eq 0 ]; then
  echo "Os arquivos foram salvos com sucesso"
else
  echo "Houve um problema na hora de salvar os arquivos"
fi
