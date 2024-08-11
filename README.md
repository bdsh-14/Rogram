## Introduction

This native iOS app demonstrates the implementation of a photo listing app using SwiftUI and detailed photo views.
Endpoint used for this project - https://jsonplaceholder.typicode.com/album/1/photos

## Table of contents

- [Project Overview](#project-overview)
- [Tech Stack](#tech-stack)
- [Running the Project](#running-the-project)
- [Architecture](#architecture)
- [Further Improvements](#further-improvements)
- [Screenshots](#screenshots)
- [Contact](#contact)

## Project Overview

This project implements two views.
1. The main screen displays a list of images and their titles.
2. Tapping on an image opens a full-screen detail view modally. Tapping on `dismiss` button or dragging the modal view dismisses it.

### Assumptions and Considerations
1. Assumed that the heart symbol beside the title could potebtially be used for persisting images or upvotimg in a social media context. However, since this app was meant to be a basic version of home screen, I chose to add an SF symbol with the title. 
2. Assumed that all API responses contain valid data.
3. Opted to use Kingfisher for image caching to ensure smooth scrolling in the photo list view. While NSCache or disk cache can be done, the third party library have been tested for performance. 

## Tech Stack

- iOS 16+
- Xcode: Version 15.4 (or, the latest stable version)
- Swift 5.10
- Swift Package Manager
- External Libraries: [Kingfisher](https://github.com/onevcat/Kingfisher) for image loading and caching

## Running the project

1. Clone the repository or unzip the files

    `git clone https://github.com/your-username/your-repo-name.git`
    `cd your-repo-name`

2. Install dependencies

    The project uses Swift Package Manager (SPM). After opening the project in Xcode, dependencies should automatically resolve. If not, go to File > Packages > Resolve Package Versions.

3. Double-click on the .xcodeproj file to open the project.
4. Build and run
   - Select the appropriate scheme.
   - Press `Cmd+B` to build and `Cmd+R` to run in your chosen simulator.


## Architecture 

This project uses the Model-View-ViewModel (MVVM) architecture with a separate network layer. Here's a brief explanation of each component:

- **Model:** Represents the data of the application. It stores and formats data that can be used by the other components in the app.
- **View:** Represents the UI layer, responsible for displaying the data to the user. In this project, SwiftUI is used to create the views.
- **ViewModel:** Acts as a mediator between the Model and the View. It retrieves data from the Model and processes it, then provides the processed data to the View. I
- **Network Manager**: A separate component responsible for handling all network requests and interactions with APIs. It ensures that the network logic is decoupled from the rest of the application, providing a clean separation of concerns.

## Further Improvements 

With more time, the following enhancements could be made:
1. Improve accessibility by adding VoiceOver support.
2. Add Localization
3. Error screens
4. Option to `Like` images (using the heart label on list screen.

## Screenshots 

| Home screen | Detail Screen |
|:--:|:--:|
|<img src=https://github.com/user-attachments/assets/eaafdea2-49e7-49c6-9207-dc66c7e457c8 width=250 />|<img src=https://github.com/user-attachments/assets/905386e0-f44f-43a5-b4ac-ded1af382404 width=250 />|

## Contact

- Email: bdsh.14@gmail.com
- LinkedIn: [www.linkedin.com/in/biswasbidisha](https://www.linkedin.com/in/biswasbidisha)
