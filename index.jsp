<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Institute Event</title>
    <link rel="stylesheet" href="styles/styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="scripts/app.js"></script>
</head>
<body ng-app="eventApp" ng-controller="EventController">
    <header>
        <h1>Institute Annual Event</h1>
        <nav>
            <ul>
                <li><a href="#about">About</a></li>
                <li><a href="#schedule">Schedule</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <section id="about">
        <h2>About the Event</h2>
        <p>This event is organized by our institute to showcase the talent and achievements of our students and faculty.</p>
    </section>

    <section id="schedule">
        <h2>Event Schedule</h2>
        <div id="schedule-list">
            <ul>
                <li ng-repeat="event in events">
                    <h3>{{ event.title }}</h3>
                    <p>{{ event.time }}</p>
                    <p>{{ event.description }}</p>
                </li>
            </ul>
        </div>
    </section>

    <section id="contact">
        <h2>Contact Us</h2>
        <form id="contact-form" ng-submit="sendMessage()">
            <label for="name">Name:</label>
            <input type="text" id="name" ng-model="contact.name" required>
            <label for="email">Email:</label>
            <input type="email" id="email" ng-model="contact.email" required>
            <label for="message">Message:</label>
            <textarea id="message" ng-model="contact.message" required></textarea>
            <button type="submit">Send</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2024 Institute Name. All rights reserved.</p>
    </footer>
</body>
</html>
