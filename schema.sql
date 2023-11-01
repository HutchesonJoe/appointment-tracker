DROP TABLE IF EXISTS 'client';
DROP TABLE IF EXISTS 'appointment';

CREATE TABLE 'client' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'name' TEXT NOT NULL,
  'phone' TEXT NOT NULL,
  'email' TEXT NOT NULL,
);

CREATE TABLE 'appointment' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'client_id' INTEGER NOT NULL,
  'date' TEXT NOT NULL,
  'time' TEXT NOT NULL,
  'notes' TEXT NOT NULL,
  FOREIGN KEY('client_id') REFERENCES 'client'('id')
);
```