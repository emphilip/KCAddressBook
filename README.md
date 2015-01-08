<h1> KCAddressBook </h1>
<h2>Overview</h2>

KCAddress is a simple address book application I developed to experiment with <a href="http://afnetworking.com/">AFNetworking</a>.  
It retrieves contact data provided by the <a href"https://randomuser.me/">Random User Generator API</a>, displaying them in standard UITableView cells, and rendering views to view contact details as well
The API Request is handled by a class KC_HTTPClient, and once retrieved, the contacts are stored in a singleton to support the ability to edit the contacts (without going into the hassle of setting up a CoreData instance just for this)

<h3>Chosen Platform</h3>
This mobile application was developed on XCode 6, and tested on iOS 8.  Why? Just because. 


<h3>Features</h3>
<ul>
  <li>Control to fetch new contacts from Random User Generator Web Service </li>
  <li>Rendering of contacts in specified views</li>
</ul>

<h3>Future Features</h3>
<ul>
  <li>Ability to pull contacts from Address book</li>
  <li>Unit tests for API call</li>
</ul>

