# Gender Participation & Organizational Structure Analysis

## Overview

This project analyzes gender participation and organizational role distribution using a synthetic dataset designed for a gender-audit exercise.

The analysis examines how participation is distributed across organizational roles, responsibility levels, decision-making functions, coordination, public visibility, age groups, and activity types.

The project demonstrates an end-to-end data analytics workflow using SQL, Python, and Tableau.

> **Important:** The dataset is synthetic. It does not contain real internal data, personal data, or confidential information from the New People political party or any other organization. The patterns in the dataset are hypothetical assumptions created for analytical and educational purposes.


## Research Questions

The project explores the following questions:

- How is participation distributed by gender?
- How are women and men distributed across organizational roles?
- How does gender representation vary across responsibility levels?
- How does participation in leadership and decision-making functions differ by gender?
- How is public visibility distributed by gender?
- How does access to coordination roles vary by gender?
- Does the gender distribution of responsibility change across age groups?
- Does gender participation vary across different types of activities and policy topics?


## Dataset

The dataset contains **3,600 synthetic participation records** covering the period from **January 2025 to June 2026**.

### Main variables

| Variable | Description |

| `participant_id` | Synthetic participation record identifier |
| `activity_date` | Date of the activity |
| `activity_type` | Type of organizational activity |
| `topic` | Main topic of the activity |
| `municipality` | Municipality |
| `gender` | Gender category |
| `age_group` | Age group |
| `role` | Organizational role |
| `decision_making_role` | Whether the record is associated with decision-making |
| `event_speaker` | Whether the record is associated with a speaker role |
| `coordination_role` | Whether the record is associated with coordination |
| `responsibility_level` | Responsibility category |
| `leadership_role` | Whether the record is associated with leadership |

The dataset is structured as **participation records**, not as a verified database of unique individuals.


## Analytical Approach

The project follows an end-to-end workflow:

```text
Synthetic raw data
        ↓
SQL analysis
        ↓
Python data preparation
        ↓
Processed dataset
        ↓
Tableau dashboards
        ↓
Gender-audit analysis

## Tools

- Python
- pandas
- PostgreSQL
- DBeaver
- Tableau
- GitHub
