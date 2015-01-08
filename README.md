<h1> KC AddressBook </h1>

KCAddress is a simple address book application I developed with the standard UIKit components to experiment with <a href="http://afnetworking.com/">AFNetworking</a>.  
It retrieves contact data provided by the <a href"https://randomuser.me/">Random User Generator API</a>, displaying them in a standard UITableView, and allows the selection of any contact to navigate to their details view.

This code should compile without any warnings, and the Test Target for this application should build as well, passing all relevant tests.<br/>

<h3>Approach</h3>
This application uses Singleton classes for the Data manager (to store the contacts), as well as to manage the HTTP requests the application makes.  Rather than setting up CoreData to handle the storage and access of contact data, the Singleton allows for access to the same data source from any controller in the application, allowing for changes to propogate easily throughout the other views in the application.<br/><br/>
I've also used a singleton to manage the API requests made by the application .  I have also used a delegate to notify the result of the request (upon completion) back to the controller so that it can notify it's views (in this case, just the tableview) to reload itself to display the fetched data.

The views use AutoLayout contraints/properties (as found in the Storyboard file) in order to support loading on various iOS screen sizes.

<h3>Chosen Platform</h3>
This mobile application was developed on XCode 6, and tested on iOS 8 (but only on the iOS simulator).  This application will need to be signed with your development team/license in order to run on a device.  I've encountered various nuances with <a href="http://www.epstudiossoftware.com/?p=1600">Autolayout</a> in XCode 6 and <a href="http://stackoverflow.com/questions/25372318/error-domain-nsurlerrordomain-code-1005-the-network-connection-was-lost">iOS 8</a> in my other applications, and believe that using this version of iOS  and XCode would be best suited to demonstrate by abilities.


<h3>What features I completed</h3>
<ul>
  <li>Control to fetch new contacts from Random User Generator Web Service </li>
  <li>Rendering of contacts in specified views</li>
  <li>XCTests to test creation of Contact object(s) from JSON response</li>
  <li>XCTests to test convenience methods that format various strings for display purposes </li>
  <li>Contact Display picture is displayed in a circular frame</li>
</ul>

<h3>Given more time, what else would I have liked to complete and how long it would have taken me?</h3>
<ul>
  <li>Move from UITableView to UICollectionView to show contacts in tiles ~ 1.5 hours </li>
  <li>Link phone number and email fields in "View Contact" Screen to launch Phone and Mail apps respectively ~ 0.5 hours</li>
  <li>Background Images, borders, Icons where appropriate for Aesthetic appeal ~ 1 hour </li>
  <li>Ability to pull contacts from Address book (And refactor necessary parsing logic) ~ 2 hours</li>
  <li>An indicator to appear when the getContacts API call is made and data is being parsed and loaded into the view </li>
  <li>LazyLoading of Images in Contact Views ~ 1 hour </li>
  <li>Edit Contact functionality ~ 1 hour</li>
  <li>Unit tests for API call(s) ~ .5 hours</li>
  <li>Localization - no estimate</li>
  <li>Relevant Unit tests for above features ~ 2 hours</li>
  <li>Unit tests to test for expected errors ~ 1 hours</li> 
  <li>Integration/System/GUI tests to test the application using <a href="http://www.froglogic.com/">Squish</a></li>
</ul>

