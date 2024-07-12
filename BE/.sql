-- setting up the database 
CREATE DATABASE `tarot`;
USE DATABASE `tarot`;

-- creating the tables
CREATE TABLE MajorArcana (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    number INT NOT NULL,
    meaning TEXT NOT NULL
);

CREATE TABLE wands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    number INT NOT NULL,
    meaning TEXT NOT NULL
);

CREATE TABLE cups (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    number INT NOT NULL,
    meaning TEXT NOT NULL
);

CREATE TABLE swords (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    number INT NOT NULL,
    meaning TEXT NOT NULL
);

CREATE TABLE pentacles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    number INT NOT NULL,
    meaning TEXT NOT NULL
);

-- inserting the info 
INSERT INTO MajorArcana (name, number, meaning) VALUES 
('The Fool', 0, 'New beginnings, innocence, adventure'),
('The Magician', 1, 'Skill, creativity, willpower'),
('The High Priestess', 2, 'Intuition, unconscious, inner voice'),
('The Empress', 3, 'Femininity, beauty, nature'),
('The Emperor', 4, 'Authority, structure, control'),
('The Hierophant', 5, 'Tradition, conformity, morality'),
('The Lovers', 6, 'Love, harmony, relationships'),
('The Chariot', 7, 'Control, willpower, victory'),
('Strength', 8, 'Courage, bravery, compassion'),
('The Hermit', 9, 'Introspection, solitude, guidance'),
('Wheel of Fortune', 10, 'Luck, change, cycles'),
('Justice', 11, 'Justice, fairness, truth'),
('The Hanged Man', 12, 'Sacrifice, release, martyrdom'),
('Death', 13, 'Endings, change, transformation'),
('Temperance', 14, 'Balance, moderation, patience'),
('The Devil', 15, 'Bondage, addiction, materialism'),
('The Tower', 16, 'Disaster, upheaval, sudden change'),
('The Star', 17, 'Hope, faith, rejuvenation'),
('The Moon', 18, 'Illusion, fear, anxiety'),
('The Sun', 19, 'Positivity, success, vitality'),
('Judgement', 20, 'Judgement, rebirth, inner calling'),
('The World', 21, 'Completion, accomplishment, travel');

INSERT INTO wands (name, number, meaning) VALUES 
('Ace of Wands', 1, 'Inspiration, creation, potential'),
('Two of Wands', 2, 'Planning, decisions, discovery'),
('Three of Wands', 3, 'Expansion, foresight, leadership'),
('Four of Wands', 4, 'Celebration, harmony, marriage'),
('Five of Wands', 5, 'Conflict, competition, tension'),
('Six of Wands', 6, 'Victory, success, public reward'),
('Seven of Wands', 7, 'Perseverance, defense, maintaining control'),
('Eight of Wands', 8, 'Speed, action, quick changes'),
('Nine of Wands', 9, 'Resilience, persistence, test of faith'),
('Ten of Wands', 10, 'Burden, responsibility, hard work'),
('Page of Wands', 11, 'Exploration, excitement, freedom'),
('Knight of Wands', 12, 'Energy, passion, inspired action'),
('Queen of Wands', 13, 'Courage, determination, joy'),
('King of Wands', 14, 'Natural leader, vision, entrepreneur');


INSERT INTO cups (name, number, meaning) VALUES 
('Ace of Cups', 1, 'Love, compassion, creativity'),
('Two of Cups', 2, 'Partnership, unity, love'),
('Three of Cups', 3, 'Celebration, friendship, creativity'),
('Four of Cups', 4, 'Meditation, contemplation, apathy'),
('Five of Cups', 5, 'Regret, failure, disappointment'),
('Six of Cups', 6, 'Revisiting the past, childhood memories, innocence'),
('Seven of Cups', 7, 'Opportunities, choices, illusion'),
('Eight of Cups', 8, 'Disappointment, abandonment, withdrawal'),
('Nine of Cups', 9, 'Contentment, satisfaction, gratitude'),
('Ten of Cups', 10, 'Happiness, emotional fulfillment, family'),
('Page of Cups', 11, 'Creativity, inspiration, curiosity'),
('Knight of Cups', 12, 'Romance, charm, imagination'),
('Queen of Cups', 13, 'Compassion, calm, comfort'),
('King of Cups', 14, 'Emotional balance, control, generosity');

INSERT INTO swords (name, number, meaning) VALUES 
('Ace of Swords', 1, 'Clarity, breakthroughs, focus'),
('Two of Swords', 2, 'Indecision, choices, stalemate'),
('Three of Swords', 3, 'Heartbreak, suffering, grief'),
('Four of Swords', 4, 'Rest, recovery, contemplation'),
('Five of Swords', 5, 'Conflict, defeat, competition'),
('Six of Swords', 6, 'Transition, change, rite of passage'),
('Seven of Swords', 7, 'Deception, trickery, strategy'),
('Eight of Swords', 8, 'Imprisonment, restriction, self-victimization'),
('Nine of Swords', 9, 'Anxiety, worry, fear'),
('Ten of Swords', 10, 'Betrayal, defeat, crisis'),
('Page of Swords', 11, 'Curiosity, restlessness, mental energy'),
('Knight of Swords', 12, 'Ambition, action, driven to succeed'),
('Queen of Swords', 13, 'Perception, clear-mindedness, complexity'),
('King of Swords', 14, 'Intellectual power, authority, truth');


INSERT INTO pentacles (name, number, meaning) VALUES 
('Ace of Pentacles', 1, 'Opportunity, prosperity, new ventures'),
('Two of Pentacles', 2, 'Balance, adaptability, time management'),
('Three of Pentacles', 3, 'Collaboration, learning, implementation'),
('Four of Pentacles', 4, 'Control, stability, security'),
('Five of Pentacles', 5, 'Isolation, insecurity, worry'),
('Six of Pentacles', 6, 'Generosity, charity, giving'),
('Seven of Pentacles', 7, 'Patience, hard work, delayed success'),
('Eight of Pentacles', 8, 'Skill development, mastery, dedication'),
('Nine of Pentacles', 9, 'Abundance, luxury, self-sufficiency'),
('Ten of Pentacles', 10, 'Wealth, inheritance, family'),
('Page of Pentacles', 11, 'Manifestation, financial opportunity, skill development'),
('Knight of Pentacles', 12, 'Efficiency, routine, conservatism'),
('Queen of Pentacles', 13, 'Practicality, comfort, security'),
('King of Pentacles', 14, 'Wealth, business, leadership');
