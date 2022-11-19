#! /bin/sh

if [ ! -d Reference ]
then 
    mkdir Reference
fi
cd Reference
cp ../*.gz .
gunzip *.gz
cp ../*.set .

tonyplot3d vpex05_0.str            -set vpex05_0.set            -png vpex05_0_ref.png
tonyplot3d vpex05_1.str            -set vpex05_0.set            -png vpex05_1_ref.png
tonyplot   vpex05_2.str                                         -png vpex05_2_ref.png
tonyplot -overlay vpex05_Diam.str vpex05_Cr.str vpex05_alloy.str -set vpex05_2.set -png vpex05_curve_ref.png

cd ..
tonyplot3d vpex05_0.str            -set vpex05_0.set            -png vpex05_0_new.png
tonyplot3d vpex05_1.str            -set vpex05_0.set            -png vpex05_1_new.png
tonyplot   vpex05_2.str                                         -png vpex05_2_new.png
tonyplot -overlay vpex05_Diam.str vpex05_Cr.str vpex05_alloy.str -set vpex05_2.set -png vpex05_curve_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex05/"

cp vpex05_0_new.png        $WEBFOLDER
cp vpex05_1_new.png        $WEBFOLDER
cp vpex05_2_new.png        $WEBFOLDER
cp vpex05_curve_new.png    $WEBFOLDER

cp Reference/vpex05_0_ref.png       $WEBFOLDER
cp Reference/vpex05_1_ref.png       $WEBFOLDER
cp Reference/vpex05_2_ref.png       $WEBFOLDER
cp Reference/vpex05_curve_ref.png   $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex05_0_new.png\"       NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex05_0_ref.png\"       NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex05_1_new.png\"       NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex05_1_ref.png\"       NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex05_2_new.png\"       NAME=\"graphics3-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex05_2_ref.png\"       NAME=\"graphics3-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex05_curve_new.png\"   NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex05_curve_ref.png\"   NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
