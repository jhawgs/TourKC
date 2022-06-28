# TourKC
FBLA Coding and Programming App

## Purpose
We built ***TourKC*** to promote tourism in the **Kansas City** area. ***TourKC*** does this by presenting 50 great attractions in a simple, accesible, and dynamic way.

## Installation with Xcode

***TourKC*** app can be installed on any **iOS** device by connecting the device to a **Mac** running **Xcode**. Clone this repository, and open it in **Xcode**. Select the destination device in the run menu (at the top of the window next to the run button, reading ***iPhone X*** by default), then click run. This will make a temporary installation of the app on the device. Occassionally, it will ask for a "Developer Team." This will require the installer to log in with their **Apple ID**.

## Usage
Upon launching ***TourKC***, the user will see ***TourKC***'s home screen, which consists of a spotlight of featured attractions and all 50 attractions divided into categories. Clicking the search button in the upper-lefthand corner of the screen, the user brings out a sidebar where they can filter the attractions by name, category, or other characteristics.

When selecting an attraction, the user is taken to a detail screen with specific information about the attraction. In this view, the attracion is placed on a map, and the user can read a brief description of the location, follow a link to the location's website, or explore recommendations of similar attractions. The user can also use the favorite button to save certain attractions for later.

<!---

## Project Structure
We designed ***TourKC's*** file structure to be intuitive and elegant. In this design, as one goes deeper into the file structure, files become less abstract.

Like files are grouped together. Folders for data retrieval are located in the *...* folder; graphical aspects, *...*; and database managers, *...*.

The app also makes use of 3rd party dependencies ... . These dependencies ... .

The top level of this repository includes an **Xcode** project, **Xcode** workspace, application test resources, the **PowerPoint** presentation, and *README.md* (this document). The following structure is found within the *TourKC* folder.
```
TourKC
│   Assets.xcassest                                    // This package contains a collection of assets for the project
│   GrapevineApp.swift                                 // This file is the residence of the main method, run upon the initialiation of the app
│   ContentView.swift                                  // This file contains the implementation of the main screens, including the viewing of the first content that is viewed on the screen to organize the naviagation process. We can see the structure of elements such as the text "Login" ; "Enter phone number" ; and "Verify". The background color is an asset in our "Assets.xcassets" folder.
│   Info.plist                                         // This file contains some basic information about the app
│   GoogleService-Info.plist                           // This file contains properties that are used with firebase. The Firebase database system is to collect contact information like phone numbers, images and more so we can have easier methods of verification, confirmation of correct information, and prevention of misleading statements. We effectively make sure that people give real and honest reviews to truly help others. It is a 3rd party service run under Google meaning it has seamless connection to a majority of modern day profiles. We collect data using the sub-document, collection, and field categories; The categories include data sets of google image apis in the form of imageurl which we get internally and string (text): uid data sets, bio, dataCreated, and username. Posts include string (text) of ref, time, title, and url. We ran this service under license: "Commercial url: https://www.firebase.com/terms/terms-of-service.html" As a credits in the comments.
│   ITC Avant Garde Gothic Bold.otf                    // A 3rd party custom font used in the app we have a license consisting of the following requirements: "2. License Grant. You are hereby granted a non-exclusive, non-assignable, non-transferable license (subject to all of the terms and conditions of the Agreement) to (a) embed the Font Software (i) into an iOS, Android or Windows Phone Application, (ii) in a secure manner which does not allow an End User to access the Font Software outside of the Application; and (b) distribute worldwide (subject to the export restrictions set forth in Section 9 of the Terms and Conditions) such Application to End Users. Foundry reserves all rights not expressly granted to you in this Agreement." We meet all the requirements and verified our end of security.
│   SDwebimage Dependencies                            // A 3rd party product that allows us to do async image loading, memory/disk caching, and animated image playback and performances for use under our fulfilled license: "Copyright (c) 2009-2020 Olivier Poitrey rs@dailymotion.com Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."
│   Cocoapods                                          // This is an application level dependency manager for Objective-C, Swift and any other languages that run on the Objective-C runtime, such as RubyMotion, that provides a standard format for managing external libraries. We have the license for this as well: "You retain your rights to any Content you submit, post or display on or through the Services. By submitting, posting or displaying Content on or through the Services, you grant us a worldwide, non-exclusive, royalty-free license (with the right to sub-license) to use, copy, reproduce, process, adapt, modify, publish, transmit, display and distribute such Content in any and all media or distribution methods (now known or later developed)."
│
└───AI
│   │   Constants.swift                                // This file contains configurations for the AIs. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │
│   └───QA
│   │   QAHandler.swift                                // This file contains the high-level wrapper of the question answering utilities implemented in the Grapevine search
│   │
│   └───BertQACore
│   │   │    LICENSE                                   // This file contains the license for all software written by The TensorFlow Authors used in this project
│   │   │
│   │   └───Extensions
│   │   │   │   DataExtension.swift                    // This file contains extensions of the Data type that allows for further Arithmetic capabilities of Arrays. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   StringExtension.swift                  // This file contains extenstions of the String type that add utilities for tokenization. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   UnicodeScalarExtension.swift           // This file contains extensions of UnicodeScalar objects that allow for text cleaning for AI. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │
│   │   │
│   │   └───Models
│   │   │   │   Dataset.swift                          // This file contains utilities for downloading AI datasets used for the model. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   FileLoader.swift                       // This file contains a utility for loading model vocabulary files. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │
│   │   │   └───ML
│   │   │   │   BertQAHandler.swift                    // This file contains a high level interface to the question answering model that is abstracted further in QAHandler.swift. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   ContentData.swift                      // This file contains utilities for extracting words from string. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   InputFeatures.swift                    // This file contains a data structure for input to the question answering model. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   Result.swift                           // This file contains a data structure for question answering model output. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │
│   │   │   └───Tokenizers
│   │   │   │   BasicTokenizer.swift                   // This file contains data preprocessing tools for question answering model input. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   FullTokenizer.swift                    // This file contains data preprocessing tools for question answering model input. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   WordpieceTokenizer.swift               // This file contains data preprocessing tools for question answering model input. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │
│   │   │
│   │   └───Resources
│   │   │   │   contents_from_squad_dict_format.json   // This file contains training data for the AI model. This file was compiled by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   mobilebert_float_20191023.tflite       // This file contains the trained question answering model. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │   vocab.txt                              // This file contains the full vocabulary utilized by the question answering model. This file was written by The TensforFlow Authors, and is used under the Apache 2.0 License. For details see the Licensing section of this document.
│   │   │   │
│   │   │
│   │
│
└───Model
│   │   FetchUser.swift                                // This file allows us to utilise the Firebase database and view corresponding data associated with it. This is responsible for fetching the data from the database such as "username" "pic" "bio" and "uid" in the form of "String".
│   │   PostModel.swift                                // This file allows us to utilise the Firebase database and import corresponding data associated with it.
│   │   UploadImage.swift                              // This file is responsible for using the available images in the Storage and converting them into Firebase api url to view inside the Firebase database.
│   │   UserModel.swift                                // This file allows us to utilise the Firebase database and import corresponding data associated with it. We print out the data in the form of "String" onto the database and it can be viewed inside Firebase indentically. This gets updated inside the database.
│   │   AlertView.swift                                // This file allows the system to indentify and create a apple system based alert whenever there is an error in the function.
│   │
│
└───View
│   │   CustomTabbar.swift                             // This file is responsible for the visual aspect of the white tabbar that is visible at the bottom of both the PostViewModel and the SettingsViewModel. It includes the components of both "Posts" and "Settings" images and their respective button destination features.
│   │   Home.swift                                     // This file is responsible for the visual aspect of the two panels after registering which includes the feed page and the settings page. It includes the background color, text, and framework that is shared between the two panels.
│   │   ImagePicker.swift                              // This file is responsible for the functional aspect of choosing an image. In this file, we utilise the third party resource of SDWebImage to retrieve and load. The built in resource also animates and caches the images.
│   │   Login.swift                                    // This file is responsible for the visual and functional aspect of the Login page which is the first page seen when loading the application. 
│   │   Logo.swift                                     // This file is a null file that was removed from the demonstration. The purpose of the file was originally to provide a seperate visual of the Logo for Grapevine that was centered in the "Home" pages but it was later integrated only in "PostView".
│   │   NewPost.swift                                  // This file is responsible for the visual and functional aspect of the post function button after pressing the "square.and.pencil" interactive button. It gives us the freedom to "cancel" or "Post" 
│   │   PostRow.swift                                  // This file is responsible for the visual and data loading aspect of the feed panel. It shows different posts and profiles generated from pre-existing users stored in Firebase.
│   │   PostView.swift                                 // This file is responsible for the visual aspect of the feed panel. It shows visually the string "feed" "No Posts !!!" and images like the Grapevine logo and the "square.and.pencil" image on the screen when applicable. 
│   │   Register.swift                                 // This file is responsible for the visual and functional aspect of the register panel that prompts if you have a unique unregistered phone number in the Firebase database. It allows you to create a unique name and bio and select a unique profile picture.
│   │   SettingsView.swift                             // This file is responsible for the visual and functional aspect of the settings panel, it allows you to edit the contents of your profile including bio, name, and profile picture. It also includes the feature of logging out.
│   │   UserView.swift                                 // This file is responsible for the visual and functional aspect of the user dialog when a user is pressed on the feed.
│   │
│
└───ViewModel                                          // All the folders in View wouldn't function without instructions or data in ViewModel, Although some of the comments suggests that files in "View" provide functionality, they are mostly visual files that generate a button that can be funtional under given routes orignating from the ViewModel
│   │   LoginViewModel.swift                           // This file uses data from Firebase to create the rules and functions for the Login process that underly elements in corresponding "View"
│   │   NewPostModel.swift                             // This file uses data from Firebase to create the rules and functions for the posting process that underly elements in corresponding "View"
│   │   PostViewModel.swift                            // This file uses data from Firebase to create the rules and functions for the viewing posts process that underly elements in corresponding "View"
│   │   RegisterViewModel.swift                        // This file uses data from Firebase to create the rules and functions for the Register process that underly elements in corresponding "View"
│   │   SettingsViewModel.swift                        // This file uses data from Firebase to create the rules and functions for the Settings processes that underly elements in corresponding "View"
│   │
│
└───Preview Content
    └───Preview Assets.xcassets                        // This file ontains global images used with previews, colors and the Logo.
```

## FBLA Guidelines
- [ ] **The app must be rated for all ages**
- [ ] **Packaged with complete file, README, and instructions**: contains README and User Guide with usage instructions as well as info page on startup
- [ ] **Application Functionality**: application can be launched on **iPhone**, and an entirely web-based, cross-platform Porgressive Web Application is included in the Android User Guide
- [ ] **Documentation and Copyright Compliance**: license information is included in the code, code structure, and README.md
- [ ] **Application addresses the topic/problem**: application is a Professional Social Media app
- [ ] **Planning Process**: planning is thoroughy described in presentation
- [ ] **Navigation**: navigation is intuitive and described in README.md and the User Guide
- [ ] **Code**: code contains commentary and is arranged logically, as explained in Project Structure
- [ ] **Icon and Graphics**: graphics are consistent with logo color scheme, and logo is shown on device home screen
- [ ] **Social Media**: the app is connected to **Google Firebase**, makes use of a Social Media design, and integrates with other platforms as a gateway, and web version supports **Google** login
- [ ] **Bugs**: no bugs have been observed, and future bugs can be reported through **GitHub** and email or **Google Form** in the app
-->
## Licensing and Templates
All 3rd party resources are used under perpetual or circumstantial licenses, and their conditions are all met.

Images appearing in the application are used under the **Creative Commons** license.

The OpenWeatherMap API is used in ***TourKC*** consistently with all agreements and licenses.

The application was built, using a tutorial from **Apple** as a starting point. Significant modifications were made to the code and accompanying data.

System symbols are licensed for free developer use by **Apple**.

***TourKC*** stores information from the app on-device.
