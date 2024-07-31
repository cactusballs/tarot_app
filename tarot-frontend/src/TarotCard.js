import React, { useState } from 'react';

function TarotCard() {
  const [card, setCard] = useState(null);
  const [error, setError] = useState(null);

  const fetchCard = () => {
    fetch('/cards.json')
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        const randomIndex = Math.floor(Math.random() * data.length);
        const randomCard = data[randomIndex];
        setCard(randomCard);
        setError(null);
      })
      .catch(error => {
        console.error('Error fetching a card:', error);
        setError(`Error fetching a card: ${error.message}`);
      });
  };

  return (
    <div>
      <button id="tarotButton" onClick={fetchCard}>My Daily Pull</button>
      {error && <p>{error}</p>}
      {card && (
        <div id="cardDisplay">
          <h2>{card.name}</h2>
          <p><strong>Meaning:</strong> {card.meaning}</p>
        </div>
      )}
    </div>
  );
}

export default TarotCard;
