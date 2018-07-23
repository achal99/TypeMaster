# WRITTEN BY MILO HARTSOE (SOME CODE USED FROM STACKOVERFLOW)
from __future__ import print_function
import string
from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw
import numpy as np
import matplotlib.image as mpimg

file_prefix = 'letter_data_'
width = 6
height = 8

def char_to_pixels(text, path='arialbd.ttf', fontsize=14):
    """
    Based on https://stackoverflow.com/a/27753869/190597 (jsheperd)
    """
    font = ImageFont.truetype(path, fontsize)
    w, h = font.getsize(text)
    h *= 2
    image = Image.new('L', (w, h), 1)
    draw = ImageDraw.Draw(image)
    draw.text((0, 0), text, font=font)
    arr = np.asarray(image)
    arr = np.where(arr, 0, 1)
    arr = arr[(arr != 0).any(axis=1)]
    return arr

def display(arr):
    result = np.where(arr, '#', ' ')
    print('\n'.join([''.join(row) for row in result]))

def char_to_pixels_from_image(text):
    try:
        img = Image.open(str(ord(text)) + '.png')
        arr = np.zeros((height, width))
        for i in range(img.size[0]):
            for j in range(img.size[1]):
                arr[j,i] = (255 / 2) < img.getpixel((i,j))[3]
        return arr
    except:
        print()
        return [[]]

print(file_prefix + 'lookup_letter', end='')
for letter in range(128):
    print((' ' * 37) + file_prefix + str(letter))

print()
print()

for letter in range(128):
#    arr = char_to_pixels(
#        c,
#        path='/usr/share/fonts/truetype/liberation/LiberationSerif-Bold.ttf',
#        fontsize=9)
#    padded_arr = np.zeros((width, height))
#    padded_arr[:arr.shape[0],:arr.shape[1]] = arr
#    arr = padded_arr
#    print(arr)
    c = chr(letter)
    print(file_prefix + str(letter), end='')
    arr = char_to_pixels_from_image(c)
    for row in arr:
        for i in row:
            print((' ' * 37) + str(int(i)))
