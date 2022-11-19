#! /bin/sh

if [ ! -d Reference ]
then 
    mkdir Reference
fi
cd Reference
cp ../*.gz .
gunzip *.gz
cp ../*.set .

tonyplot vpex01_well.str                                      -png vpex01_well_ref.png
tonyplot vpex01_cmp.str          -set vpex01_cmp.set          -png vpex01_cmp_ref.png
tonyplot vpex01_gateox.str       -set vpex01_gateox.set       -png vpex01_gateox_ref.png
tonyplot vpex01_spacer.str       -set vpex01_spacer.set       -png vpex01_spacer_ref.png
tonyplot vpex01_single_pair.str  -set vpex01_single_pair.set  -png vpex01_single_pair_ref.png
tonyplot vpex01_final.str        -set vpex01_final.set        -png vpex01_final_ref.png


cd ..
tonyplot vpex01_well.str                                      -png vpex01_well_new.png
tonyplot vpex01_cmp.str          -set vpex01_cmp.set          -png vpex01_cmp_new.png
tonyplot vpex01_gateox.str       -set vpex01_gateox.set       -png vpex01_gateox_new.png
tonyplot vpex01_spacer.str       -set vpex01_spacer.set       -png vpex01_spacer_new.png
tonyplot vpex01_single_pair.str  -set vpex01_single_pair.set  -png vpex01_single_pair_new.png
tonyplot vpex01_final.str        -set vpex01_final.set        -png vpex01_final_new.png      

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex01/"

cp vpex01_well_new.png         $WEBFOLDER
cp vpex01_cmp_new.png          $WEBFOLDER
cp vpex01_gateox_new.png       $WEBFOLDER
cp vpex01_spacer_new.png       $WEBFOLDER
cp vpex01_single_pair_new.png  $WEBFOLDER
cp vpex01_final_new.png        $WEBFOLDER

cp Reference/vpex01_well_ref.png         $WEBFOLDER
cp Reference/vpex01_cmp_ref.png          $WEBFOLDER
cp Reference/vpex01_gateox_ref.png       $WEBFOLDER
cp Reference/vpex01_spacer_ref.png       $WEBFOLDER
cp Reference/vpex01_single_pair_ref.png  $WEBFOLDER
cp Reference/vpex01_final_ref.png        $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex01_well_new.png\"         NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_well_ref.png\"         NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex01_cmp_new.png\"          NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_cmp_ref.png\"          NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex01_gateox_new.png\"       NAME=\"graphics3-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_gateox_ref.png\"       NAME=\"graphics3-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex01_spacer_new.png\"       NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_spacer_ref.png\"       NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex01_single_pair_new.png\"  NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_single_pair_ref.png\"  NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex01_final_new.png\"        NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex01_final_ref.png\"        NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
