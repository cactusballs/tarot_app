// Function for tarot pull
document.getElementById('tarotButton').addEventListener('click', () => {
  fetch('/daily-pull')
  .then(response => response.json())
  .then(card => {
    const cardDisplay = document.getElementById('cardDisplay');
    cardDisplay.innerHTML = 
    `<h2>${card.name}</h2>
    <p><strong>Meaning:</strong>${card.meaning}</p>`;
  })
  .catch(error => console.error('Error fetching a card:', error));
});
