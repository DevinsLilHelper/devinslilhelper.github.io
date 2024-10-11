let points = 0;
let pointsPerClick = 1;
let upgradeCost = 10;

const pointsDisplay = document.getElementById('points');
const blackHoleImage = document.getElementById('blackhole');
const upgradeButton = document.getElementById('upgrade-btn');

// Update points display
function updatePoints() {
    pointsDisplay.textContent = `Points: ${points}`;
}

// Click event to increase points
blackHoleImage.addEventListener('click', () => {
    points += pointsPerClick;
    updatePoints();
});

// Upgrade event
upgradeButton.addEventListener('click', () => {
    if (points >= upgradeCost) {
        points -= upgradeCost;
        pointsPerClick += 1;  // Increase points per click
        upgradeCost *= 2;  // Double the cost for the next upgrade
        upgradeButton.textContent = `Upgrade (Cost: ${upgradeCost} Points)`;
        updatePoints();
    } else {
        alert("Not enough points to upgrade!");
    }
});
