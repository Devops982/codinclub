#!/bin/bash -x

counter=0;
fruit[((counter++))]="Apple"
fruit[((counter++))]="Banana"
fruit[((counter++))]="orange"

echo ${fruit[@]}
