# Intro to iOS App Development with Swift

## Setup

Lets get all the code onto your computer. From the above menu, select the green `Clone or Download` button and select download zip.
You can use these files throughout todays workshop and beyond.

It might be helpful to keep this page open in your browser to follow along with these instructions in an easy to read format.

## Activity 1: Swift 101

In this activity we will be working through some exercise in playground files getting you used to the language and syntax of Swift

### Beginners

If you have never done any programming before, this is the perfect place to start. And don't worry, you are in good hands!

You should start working through the [Constants and Variables.playground]() file. This playground will guide you through using variables and constants as well as getting you used to swift and playgrounds.

There are 10 exercises in total.

### Some programming experience

If you have done some programming in another language previously, then you can start directly with [Control Flow.playground](). There are 10 exercises in total.

Once you have completed that, you can then start to work through [Operators.playground] which also has 10 exercises.

## Activity 2: Hello Xcode!

### Debugging

Now its time to do some problem solving, programming style.

Open up the `FirstTimeDebugging` project by double clicking the `FirstTimeDebugging.xcodeproj` file.

There will be a few warnings and issues that appear, work through them one by one and see if you can get the project to run successfully without any *build errors*.

**Hint:**
- There are 2 errors
- There are 2 warnings

Let your facilitator know when your app has built successfully. Don't worry if it crashes, we are going to fix those issues in the next step.

### Crashes

Crashes in your code sometimes happen when you accidentally make a logic error, or call code you weren't meant to.

You will notice that when we try and run `FirstTimeDebugging` it crashes and shows us an error.

Using the information you have just learnt, see if you can get the app to stop crashing.
If you need some help or hints, holla for a facilitator.

## Activity 3: Stop or Go

## Interface Builder & View Controllers
Stop or Go is an app to help people learn about the traffic lights.

Using our knowledge of how traffic lights work, we are going to make an app that will show users the correct sequence the traffic lights appear in as well as what they should do when they see these lights.

When they tap on the 'Next' button, the app will show them the next traffic light that would appear in the sequence.

1. Open up the starter project file in the folder `StopOrGo` called `StopOrGo.xcodeproj`
2. In `MainViewController.swift`, create a `IBOutlet` `UIImageView` to use for the orange traffic light. Call it `orangeTrafficLightImageView`.
3. Once you have created the `orangeTrafficLightImageView`, open up `Main.storyboard` and navigate to the `MainViewController`.
4. There is no UIImageView to show our red light. Create a UIImageView (copy and paste is ok, just remember to remove any remaining links to other IBOutlets) and link it to the `redTrafficLightImageView` declared in our View Controller.
5. The green light image view is not connected to `greenTrafficLightImageView` in `MainViewController` either. Create a connection to it.
6. Change the text in the UIButton `nextButton` to say "Next"

When you have finished, open up the `MainViewController.swift` and check that all the connection outlets are grey for each IBOutlet declared.

Let your facilitator know when you are done. If someone else is having difficulties, see if you can help them figure out any issues!

## Activity 4: Stop or Go

We would like to execute some code when the user taps the 'Next' button, but currently the button is not responding to any touches.

1. Create a `IBAction func` in `MainViewController.swift` called `touchedNextButton()`
2. Add a print statement inside this function so we know we have touched it. `print("Next button tapped")`
3. Attach the `IBAction` to the buttons `touchUpInside` event.

Now, run the app and tap the next button. If you have successfully linked the button with the action you should see "Next button tapped" print out in the console in the bottom panel of Xcode.

## Activity 5: Group Programming

In this activity we will work together to add in a UINavigationController to our app. This will allow our users to go to different screens and to to back to the home screen.

If you already have some view controllers in a storyboard, you can easily embed them in a UINavigationController.

1. Open the .storyboard
2. Select a view controller
3. Go to the 'Editor -> Embed In -> Navigation Controller' option
4. Your navigation controller should now be in your storyboard

## Activity 6: More features!

Now that we have our traffic light app responding to user interactions, we can add even more features to it.

Go ahead and create a new UIViewController to use as our `DetailsViewController`. When a user taps on a traffic light, they can be transitioned to this screen to get more information about the light they just tapped.

Some suggestions could be:
    - Add elements to the storyboard (UIImageView, UITextView)
    - Create links between the storyboard and code
    - Changing attributes on the elements (text, image etc)

## Further Reading

- [Swift Documentation](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [App development with Swift by Apple (iBook)](https://itunes.apple.com/us/book/app-development-with-swift/id1219117996?mt=11)
