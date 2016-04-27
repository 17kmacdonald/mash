//
//  Mash.swift
//  
//
//  Created by Kenzie Macdonald on 1/20/16.
//
//

import Foundation
__author__ = 'macdonaldkenzie'
import random

from kivy.app import App
from kivy.uix.widget import Widget


class SampleUI(Widget): # The user interface for this class is specified in the .kv file
def car(self):
num = random.randint(1, 3)
if num == 1:
return self.car1.text
elif num == 2:
return self.car2.text
elif num == 3:
return self.car3.text

def numOfKids(self):
num = random.randint(1, 3)
if num == 1:
return self.numKids1.value
elif num == 2:
return self.numKids2.value
elif num == 3:
return self.numKids3.value

def jobYouHave(self):
num = random.randint(1,3)
if num == 1:
return self.job1.text
elif num == 2:
return self.job2.text
elif num == 3:
return self.job3.text

def houseYouHave(self):
num = random.randint(1,4)
if num == 1:
return 'an apartment '
elif num == 2:
return 'a house '
elif num == 3:
return 'a shack '
elif num == 4:
return 'a mansion '

def spouse(self):
num = random.randint(1,3)
if num == 1:
return self.spouse1.text
elif num == 2:
return self.spouse2.text
elif num == 3:
return self.spouse3.text

def location(self):
num = random.randint(1,3)
if num == 1:
return self.location1.text
elif num == 2:
return self.location2.text
elif num == 3:
return self.location3.text

def goOops(self):
self.oops.text = 'Oops! You need to enter in an answer for each text box.'
self.gameRules.text = ''
self.gameResult.text = ''
self.gameResult2.text = ''


def oopsies(self, obj):
if self.spouse1.text == '':
self.goOops()
elif self.spouse2.text == '':
self.goOops()
elif self.spouse3.text == '':
self.goOops()
elif self.job1.text == '':
self.goOops()
elif self.job2.text == '':
self.goOops()
elif self.job3.text == '':
self.goOops()
elif self.car1.text == '':
self.goOops()
elif self.car2.text == '':
self.goOops()
elif self.car3.text == '':
self.goOops()
elif self.location1.text == '':
self.goOops()
elif self.location2.text == '':
self.goOops()
elif self.location3.text == '':
self.goOops()
else:
self.goMASH()

def goMASH(self):
self.gameRules.text = ''
self.oops.text = ''
self.gameResult.text = 'Congrats! You will drive a ' + self.car() + ', with ' + str(int(self.numOfKids())) + 'kids, working as a '
self.gameResult2.text = self.jobYouHave() + ', married to ' + self.spouse() + ', living in ' + self.houseYouHave() + 'in ' + self.location() + '.'


def goMASH(self):
self.gameRules.text = ''
self.oops.text = ''
self.gameResult.text = 'Congrats! You will drive a ' + self.car() + ', with ' + str(int(self.numOfKids())) + ' kids, working as a'
self.gameResult2.text = self.jobYouHave() + ', married to ' + self.spouse() + ', living in ' + self.houseYouHave() + 'in ' + self.location() + '.'

def reset(self, obj):
self.car1.text = ''
self. car2.text = ''
self.car3.text = ''
self.job1.text = ''
self.job2.text = ''
self.job3.text = ''
self.numKids1.value = 0
self.numKids2.value = 0
self.numKids3.value = 0
self.spouse1.text = ''
self.spouse2.text = ''
self.spouse3.text = ''
self.gameResult.text = ''
self.gameResult2.text = ''
self.gameRules.text = "Welcome to MASH! Put an option in each text box according to the category. To choose\na number of kids, simply scroll with the sliders! When you want to insert your\nanswers, click the MASH button. HAVE FUN!! :) "
self.oops.text = ''
self.location1.text = ''
self.location2.text = ''
self.location3.text = ''

class SampleApp(App):
def build(self):
self.sampleUI = SampleUI()
self.sampleUI.mashButton.bind(on_release=self.sampleUI.oopsies)
self.sampleUI.playAgain.bind(on_release=self.sampleUI.reset)
return self.sampleUI

if __name__ == '__main__':
SampleApp().run()