#####################Midterm Seatwork No.4##########################
#Navarro, Ma. Hannah G.
#Bs CpE

#1.
install.packages("imager")
#Displaying the image (localy)
library(imager)
file <- system.file('extdata/parrots.png' , package ='imager')
image <- load.image(file)

#Resizing the image
thmb <- resize(parrots, round(width(parrots)-350), round(height(parrots)-249))
plot(image)
plot(thmb,main = "Resized Image")

######################################################################

#2.
#Displaying the image (web)
install.packages("magick")
library(magick)
frappe <- image_read('https://img.sndimg.com/food/image/upload/w_896,h_504,c_fill,fl_progressive,q_80/v1/img/recipes/33/32/3/VQNsbKtdQMuCMkcp8BCC_0S9A9144.jpg')
print(frappe)











