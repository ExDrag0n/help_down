#!/bin/bash
shopt -s extglob
declare -a links=()
links=(
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-canny-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-color-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-depth-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-fuser-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-sketch-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/coadapter-style-sd15v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_canny_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_canny_sd15v2.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_color_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_depth_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_depth_sd15v2.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_keypose_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_openpose_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_seg_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_sketch_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_sketch_sd15v2.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_style_sd14v1.pth
https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_zoedepth_sd15v1.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_canny.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_hed.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_mlsd.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_normal.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_scribble.pth
https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_seg.pth
)

i=0
while [[ $i < ${#links[@]} ]]; do
    wget "${links[$i]}"
    i=$((i+1))
done
