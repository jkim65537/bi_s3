#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    python_local="/home/$USER/.local/lib/python2.7/site-packages"
    bi_s3_path="/home/$USER/bi_s3"
    cd "/home/$USER"
elif [[ "$OSTYPE" == "msys" ]]; then
    python_local="C:/Users/$USERNAME/AppData/Local/Continuum/anaconda2/Lib/site-packages"
    bi_s3_path="C:/Users/$USERNAME/bi_s3"
    cd "C:/Users/$USER"
fi

if [ -d "$python_local/bi_s3" ]; then
  mkdir -p "$python_local/bi_s3"
fi

cp -TRv "$bi_s3_path" "$python_local/bi_s3"

echo "bi_s3 installation is complete"
