# Restaurant Menu

A restaurant menu made for Ourself, by Frances Cancio

Sample:

![Simulator Screen Shot - iPhone 14 Pro Max - 2023-09-19 at 22 17 48](https://github.com/fcancio/restaurant-menu/assets/46465328/d1539509-1a42-42b9-8576-cbd6415b1798)





## Assignment

- Create a mobile restaurant menu
- Use Flutter
- Menu laid out in multiple “pages”
- Use clean code
- Estimated duration to complete: 1 to 2 hours
- Upload the resulting Flutter application to a public GitHub repo
- Include a README with instructions to run application locally

## Process

1. Started a new flutter project using the provided skeleton app template in VSCode
2. Data Classes <br />
       `MenuCategory` `MenuItem` <br />
   UI Classes <br />
       `MenuHome` `MenuCategoryPage` `MenuItemWidget`
3. Menu is initially displayed within a scrollable page in order to get all the data and functional menu on the page quickly
4. Refactored UI Classes to implement a tab navigation bar, with each tab corresponding to a unique menu category
     - easy-to-find categories
     - since one category page is displayed on the screen at a given time, item count is low, scroll is minimal, and allows for legible font size
     - similar UX to popular food app menus (i.e. DoorDash), intuitive user experience
6. Updated colors and imported assets to match Ourself branding <br />
     - background: Color.fromARGB(255, 245, 235, 228), <br />
     - primary text: Color.fromRGBO(49, 70, 96, 1), <br />
     - nav label text: Color.fromRGBO(149, 59, 112, 1), <br />
     - nav label indicator: Color.fromRGBO(235, 145, 40, 100) <br />
7. Reorganized code, added doc strings and comments, removed unnecessary code

Notes: 
- Settings icon has been removed until appropriate ThemeData for dark and light themes are complete.
- Localization has been instantiated but is not currently being used within UI Classes.
- `app.dart` contains template code from skeleton app; may be simplified for current app use
   

## Assets

Ourself logo:

![ourself_logo](https://github.com/fcancio/restaurant-menu/assets/46465328/8521aafe-333a-470a-beba-cab3ec895eb2)



## Next Steps
1. Refactor data classes to more precisely match menu text; combine Sandwiches into one page
2. Implement dark and light color theme, and settings functionality
3. Remove unnecessary code pertaining to localization, settings

## Alternate layouts
- 'Page number' design, with 3 pages, where each page can hold multiple categories
- multi-page PDF menu format
- category dropdown menu
- book page turn animation


## Run App Locally
1. Click on the green Code button and copy the repository url
2. `cd` into your desired project folder on your machine
3. In your terminal command line, enter and run `git clone <copied repository URL>`
4. Open the project in your IDE
5. Downloaded any needed dependencies
6. Run app on mobile simulator (iOS/Android)
