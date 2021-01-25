#! /usr/bin/bash
# 3. Bir klasorde bulunan tum js dosyalarini tarayan, dosya adi "app.js" ise icinde gecen "innerHTML" kelimelerinin toplamini ekrana yazdiran scripti 

NEW="app.js"
DOSYALAR=$(ls * .js)
for DOSYA in $DOSYALAR
do
if [ "$DOSYA == $NEW" ]
then
grep innerHTML $NEW
break
fi
done


# 1. Bulundugumuz klasorde "app.js" dosyasi varsa adini "main.js" olarak degistiren, 
# yoksa main.js dosyasi olusturan, yapilan islemlerle ilgili bilgi mesajlarini ekrana yazdiran bir script yaziniz.

for filename in $(ls)
do
ext=${filename##*\.}
case "$ext" in
js) if [ "$filename" == "app.js" ]
then
mv $filename "main.js"
echo "app.js dosya ismi main.js olarak degistirildi"
break
fi
;;
*) touch "main.js"
echo " main.js dosyasi yeniden olusturuldu"
break
;;
esac
done

# 2. iki sayiyi toplayan bir fonksiyon ve sonucu ekranda gosteren script

sum (){
read -p "birinci giriniz: " BIRINCISAYI 
read -p "2.sayiyi giriniz: " IKINCISAYI
(( sum=$BIRINCISAYI + $IKINCISAYI))
return sum
 }
sum
echo " Iki sayinin toplami: $sum"

