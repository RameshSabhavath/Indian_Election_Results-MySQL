
## Indian Election Results Prediction Using MySQL

### 🎯 Project Objectives
* Analyze 543 parliamentary seats state-wise and alliance-wise to identify majority control and vote concentration patterns.
* Compare NDA, I.N.D.I.A, and regional parties to determine national dominance and regional political strength.
* Evaluate vote distribution trends and identify winning strategies through candidate and alliance performance metrics.

### 🛠 Tools, Methods & SQL Concepts Used
→ Database: MySQL  
→ Core Queries Used : JOIN, GROUP BY, ORDER BY, CASE WHEN, SUM(), COUNT(DISTINCT), Subqueries  
→ Data Engineering : 1) Added Party_Alliance column using ALTER TABLE . 2) Classified parties into NDA, I.N.D.I.A, Other using UPDATE    
→ Advanced Analysis : 1)Alliance-level seat aggregation, 2) EVM vs Postal vote distribution, 3) Top 10 highest EVM vote candidates

## ➩ 💹 Predicted Statistical Results (Aligned with Query Structure)
### 🏆 Overall Seat Distribution (Out of 543)
➡ NDA Alliance : 298 Seats ✅ (Majority) **┃** I.N.D.I.A Alliance : 208 Seats **┃** Other Parties : 37 Seats   
➡ Winning Alliance : NDA   
➡ Majority Mark Crossed : 272

### 🗳 Top Performing Party
* Bharatiya Janata Party (BJP) → Seats Won : ~ 242 **┃** Highest EVM vote share nationally (~38–40%)
* Dominant in Uttar Pradesh, Gujarat, Madhya Pradesh, Rajasthan

### 📉 Major Opposition Performance
➡ Indian National Congress (INC) Seats Won: ~ 98    
➡ Strong in Karnataka, Telangana, Kerala **┃** Weak in Hindi Belt states

### 🌍 Regional Strength Analysis
➡ NDA Strong Regions : North & West India  
➡ I.N.D.I.A Strong Regions : South India & Eastern states (West Bengal, Tamil Nadu)   
➡ Regional Parties Impact : Influenced ~37 seats in coalition dynamics

### 📈 Vote Pattern Insights
* EVM Votes Contribution : ~97%  **┃**  Postal Votes Contribution : ~3%
* BJP candidates topped highest EVM votes in 7 of Top 10 constituencies.
* Close-margin constituencies influenced by postal votes in swing states.

###  Where Parties Went Wrong ❌
⚠ I.N.D.I.A alliance faced vote fragmentation in multi-corner contests.   
⚠ Congress underperformed in high-population northern states.   
⚠ Regional vote split indirectly benefited NDA in ~20 constituencies.

### 🚀 Outcomes & Achievements
✓  Successfully converted multi-table election data into structured coalition intelligence using advanced SQL logic.   
✓  Identified highest vote-getting candidates and strongest regions, highlighting BJP’s nationwide dominance and opposition’s regional strength gaps.   
✓  Delivered a complete election prediction and alliance comparison model purely using SQL without external tools.    
✓  I.N.D.I.A alliance strong but lacked nationwide consolidation.   
✓  Election outcome driven primarily by EVM dominance and alliance arithmetic.
