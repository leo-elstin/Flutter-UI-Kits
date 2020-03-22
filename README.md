### Flutter UI Kits

This project contains various inspired UI kits purely coded in Flutter framework.

### Animated BottomBar ([Fancy Bar v1.2.0](https://pub.dev/packages/fancy_bar#-readme-tab- "Fancy Bar v1.2.0"))

Available as a seprate Package @pub
Clone the project [here.](https://github.com/leoelstin/fancy_bar "here.")

### V1
![alt text](https://raw.githubusercontent.com/leoelstin/Flutter-UI-Kits/master/images/ezgif.com-crop.gif)

### V2
![alt text](https://github.com/leoelstin/Flutter-UI-Kits/blob/master/images/fancy_bar_v2.gif?raw=true)

An animated bottom bar with AnimatedSwitcher.

Sample Code :: 

            InkWell(
              onTap: () => setItem(3),
              child: Container(
                  width: 100,
                  height: 55,
                  alignment: Alignment.center,
                  child: AnimatedSwitcher(
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    duration: Duration(milliseconds: 250),
                    child: pos == 3
                        ? Text('Profile',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                        : Icon(Icons.account_circle),
                  )),
            ),


### Wallpaper UI Kit

![alt text](https://raw.githubusercontent.com/leoelstin/Flutter-UI-Kits/master/screenshots/attachment.jpg?raw=true)


## Grocery UI Kit
![alt text](https://github.com/leoelstin/flutter_widgets/blob/master/screenshots/preview.jpg?raw=true)

Designed by **[Ishan Madushka](https://www.uplabs.com/ishan_madushka)**

# Feel free to star and fork the project

I'll continue to work on this project as im learning the flutter framework. 
This app is based on a learning course from Udemy with my own customization to make the app look good.

## Features

### Grocery UI Kit

![alt text](https://github.com/leoelstin/flutter_widgets/blob/master/screenshots/Screenshot%202019-04-28%20at%2012.01.16%20AM.png?raw=true) ![alt text](https://github.com/leoelstin/flutter_widgets/blob/master/screenshots/Screenshot%202019-04-28%20at%2012.01.23%20AM.png?raw=true) ![alt text](https://github.com/leoelstin/flutter_widgets/blob/master/screenshots/Screenshot%202019-04-28%20at%2012.01.36%20AM.png?raw=true)

 UI Kit is not completed more # Stars will motivate me work more

Donations
---------

This project needs you! If you would like to support this project's further development, the creator of this project or the continuous maintenance of this project, feel free to donate. Your donation is highly appreciated (and I love food, coffee and beer). Thank you!

**PayPal**

* **[Donate $5](https://www.paypal.me/leoelstin/5)**: Thank's for creating this project, here's a coffee (or some beer) for you!
* **[Donate $10](https://www.paypal.me/leoelstin/10)**: Wow, I am stunned. Let me take you to the movies!
* **[Donate $15](https://www.paypal.me/leoelstin/15)**: I really appreciate your work, let's grab some lunch!
* **[Donate $25](https://www.paypal.me/leoelstin/25)**: That's some awesome stuff you did right there, dinner is on me!
Of course, you can also choose what you want to donate, all donations are awesome!

