#!/usr/bin/env bash

declare -A code_table=(
  [a]=z [b]=y [c]=x [d]=w [e]=v [f]=u [g]=t [h]=s [i]=r [j]=q [k]=p [l]=o [m]=n
  [n]=m [o]=l [p]=k [q]=j [r]=i [s]=h [t]=g [u]=f [v]=e [w]=d [x]=c [y]=b [z]=a)

declare -r input=${2//[[:blank:][:punct:]]/}
declare -r phrase=${input,,}
declare -i len=${#phrase}
declare -i group=0

for ((i = 0; i < len; i++)); do
  ((group++))
  symbol=${code_table[${phrase:i:1}]}
  result=$result$symbol
  ((group %= 5))
done

echo "$result"
