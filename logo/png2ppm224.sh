#!/bin/bash

ITEAD_LOGO_NAME=${1/.png/}

pngtopnm ${ITEAD_LOGO_NAME}.png > ${ITEAD_LOGO_NAME}.pnm 
pnmquant 224 ${ITEAD_LOGO_NAME}.pnm > ${ITEAD_LOGO_NAME}224.pnm 
pnmtoplainpnm ${ITEAD_LOGO_NAME}224.pnm > ${ITEAD_LOGO_NAME}224.ppm

rm -f ${ITEAD_LOGO_NAME}.pnm  ${ITEAD_LOGO_NAME}224.pnm 

echo ${ITEAD_LOGO_NAME}224.ppm generated successfully !!!

