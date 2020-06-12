@@echo off
color 2
:: Program ekle ve kaldir toplu işlemler için güzel bir basit bir script
title Program Ekle Kaldir 
:: Title -> Program Ekle Kaldir
color e
:: Başladığına Dahil Ekranın Rengi Değişiyor
echo Program Kaldiriliyor
:: Program Kaldiriliyor Cmd Ekranında Yazar


:: Wmic ile kaldıracağımız programin ismini öğrenelim

:: Komutu -> wmic product get name

:: kodun anlamı -> wmic -> wmic.exe çalıştır .  product where= "Google Earth Pro" -> bilgisayardaki kurulu olan programi seçiyor . call uninstall -> bu programi kaldiriyoruz.
wmic product where name="Programin adi" call uninstall

:: wmic ile programin ismini listeledik ve programin adini yaziyoruz.. 



:: Programi kaldirdik ve programi kaldirdigimizda kendi dosyalarini hala birakiyorsa aşağıdaki kodu kullanıyoruz.

:: kodun anlami -> rmdir dizini sil . /Q -> Sessiz modda çalıştır beni kimse farkıma varmasın :D . /S Bu dizini alındaki ve benide yok et :D
rmdir /Q /S "C:\Program Files (x86)\Adobe\"



echo Sistem Kuruluyor Bekleyiniz...

:: Sistem  kurmak için msi dosya yolunu yazıyoruz
msiexec /i "\\192.168.51.71\Bilgi\as\as.msi" /qb
color a

echo Hotfix Kurulumu Yapiliyor
:: Dosyanın içine bir hotfix yapılması gerekiyorsa kaynak yerden kodları copyalıyoruz. Programin kurulu olan dizinin için yolunu yazıyoruz. 

:: Copy'nin anlamı copy \Y -> (#herşeyi al direk kopyala ne varsa ne yoksa değiştir#) . * ile dizinin içindeki var olan herşeyi bul. ilk yol nerde ki dosyaları alıyoruz . ikinci yol neredeki dosyalar ile değiştirilecektir.
copy /Y "\\192.168.51.71\Ornek\Update\*" "C:\Program Files (x86)\Adobe\"  
echo Hotfix Yapildi

color d
:: Bitiş anlamına geliyor ve bir tuşa basıyorsunuz ve bitmişitir. isterseniz altaki yaziyi kaldirabilirsiniz..
echo Lutfen Bir Tusuna Basiniz
Pause   
