# Tarot Card Daily Pull Application

This is an application to pull a daily Tarot card when you're away from your deck. Use this as a journal prompt or for a moment of mindfulness.
View the live site here - https://cactusballs.github.io/tarot_app/

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Tarot Card Daily Pull application allows users to randomly draw a Tarot card from the Major Arcana and Minor Arcana. This can be used as a daily journal prompt, for reflection, or for a moment of mindfulness. Whether you're on the go or simply don't have your deck with you, this application is a perfect companion.

## Features

- Draw a random Tarot card from a complete deck.
- Display the card's name, number, and meaning.
- User-friendly interface with a single button to pull a card.
- Useful for daily mindfulness practices or journaling.

## Technologies Used

- **Frontend:**
  - HTML
  - CSS
  - JavaScript

- **Backend:**
  - Node.js
  - Express.js
  - MySQL

- **Others:**
  - Nodemon (for development)

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Node.js
- npm (Node Package Manager)
- MySQL

### Setup and Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/cactusballs/tarot_app.git
   cd tarot_app```


2. **Install the dependencies:**

  ` npm install ` 

3. **Set up the DataBase:**

  - Create a new MySQL database. 
  - Import the tarot card data (found in the .sql file on this repo)
  - create a .env using the .env.example file. 

4. **Start the Server:**

  `npm start` 

5. **Access the application:**

  Open your browser and navigate to http://localhost:3000

### Usage

 - Navigate to http://localhost:3000 in your web browser.
 - Click the "Get Random Card" button to draw a random Tarot card.
 - The card's name, number, and meaning will be displayed.

 ### API Endpoints 

  - GET / daily-pull
    - Description: Fetch a Tarot Card from the DB.
    - Response: JSON object containing the card's name and meaning. 



