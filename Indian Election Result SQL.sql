

==>> INDIAN ELECTION RESULTS PREDICTION USING - MySQL

--1. Find the total no. of seats?

Select 
Distinct Count (Parliament_Constituency) as Total_Seats
From Constituencywise_Results

--------------------------------------------------------------------------------

--2. What is the total number of seats available for elections in each state

Select
States.State as State_Name,
Count(Distinct Constituencywise_Results.Constituency_Id) as Total_Seats
From Constituencywise_Results
Join Statewise_Results
On Constituencywise_Results.Parliament_Constituency = Statewise_Results.Parliament_Constituency
Join States
On Statewise_Results.State_Id = States.State_Id
Group By States.State
Order By Total_Seats Desc;

-------------------------------------------------------------------------------------------

--3.Total Seats Won by NDA Allianz

Select 
Sum(Case 
When party In (
'Bharatiya Janata Party - BJP', 
'Telugu Desam - TDP', 
'Janata Dal  (United) - JD(U)',
'Shiv Sena - SHS', 
'AJSU Party - AJSUP', 
'Apna Dal (Soneylal) - ADAL', 
'Asom Gana Parishad - AGP',
'Hindustani Awam Morcha (Secular) - HAMS', 
'Janasena Party - JnP', 
'Janata Dal  (Secular) - JD(S)',
'Lok Janshakti Party(Ram Vilas) - LJPRV', 
'Nationalist Congress Party - NCP',
'Rashtriya Lok Dal - RLD', 
'Sikkim Krantikari Morcha - SKM'
) Then (Won)
Else 0 
End) As NDA_Total_Seats_Won
From 
Partywise_Results

-------------------------------------------------------------------------------------------

--4.Seats Won by NDA Allianz Parties

Select
Party as Party_Name,
Won as Seats_Won
From
Partywise_Results
Where 
Party In (
'Bharatiya Janata Party - BJP', 
'Telugu Desam - TDP', 
'Janata Dal  (United) - JD(U)',
'Shiv Sena - SHS', 
'AJSU Party - AJSUP', 
'Apna Dal (Soneylal) - ADAL', 
'Asom Gana Parishad - AGP',
'Hindustani Awam Morcha (Secular) - HAMS', 
'Janasena Party - JnP', 
'Janata Dal  (Secular) - JD(S)',
'Lok Janshakti Party(Ram Vilas) - LJPRV', 
'Nationalist Congress Party - NCP',
'Rashtriya Lok Dal - RLD', 
'Sikkim Krantikari Morcha - SKM'
)
Order By Seats_Won Desc

---------------------------------------------------------------------------------------------

--5. Total Seats Won by I.N.D.I.A. Allianz

Select
Sum(Case
When Party In (
'Indian National Congress - INC',
'Aam Aadmi Party - AAAP',
'All India Trinamool Congress - AITC',
'Bharat Adivasi Party - BHRTADVSIP',
'Communist Party of India  (Marxist) - CPI(M)',
'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
'Communist Party of India - CPI',
'Dravida Munnetra Kazhagam - DMK',
'Indian Union Muslim League - IUML',
'Nat`Jammu & Kashmir National Conference - JKN',
'Jharkhand Mukti Morcha - JMM',
'Jammu & Kashmir National Conference - JKN',
'Kerala Congress - KEC',
'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
'Rashtriya Janata Dal - RJD',
'Rashtriya Loktantrik Party - RLTP',
'Revolutionary Socialist Party - RSP',
'Samajwadi Party - SP',
'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
'Viduthalai Chiruthaigal Katchi - VCK'
) Then (Won)
Else 0 
End) As INDIA_Total_Seats_Won
From
Partywise_Results

-----------------------------------------------------------------------------------------

--6. Seats Won by I.N.D.I.A. Allianz Parties

Select
    Party as Party_Name,
    Won as Seats_Won
From
    Partywise_Results
Where
    Party In (
'Indian National Congress - INC',
'Aam Aadmi Party - AAAP',
'All India Trinamool Congress - AITC',
'Bharat Adivasi Party - BHRTADVSIP',
'Communist Party of India  (Marxist) - CPI(M)',
'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
'Communist Party of India - CPI',
'Dravida Munnetra Kazhagam - DMK',
'Indian Union Muslim League - IUML',
'Nat`Jammu & Kashmir National Conference - JKN',
'Jharkhand Mukti Morcha - JMM',
'Jammu & Kashmir National Conference - JKN',
'Kerala Congress - KEC',
'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
'Rashtriya Janata Dal - RJD',
'Rashtriya Loktantrik Party - RLTP',
'Revolutionary Socialist Party - RSP',
'Samajwadi Party - SP',
'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
'Viduthalai Chiruthaigal Katchi - VCK'
)
Order By Seats_Won Desc

------------------------------------------------------------------------------------------

--7. Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER

Alter Table Partywise_Results
Add Party_Alliance Varchar(50);
--I.N.D.I.A Allianz
Update Partywise_Results
Set Party_Alliance = 'I.N.D.I.A'
Where Party In (
    'Indian National Congress - INC',
    'Aam Aadmi Party - AAAP',
    'All India Trinamool Congress - AITC',
    'Bharat Adivasi Party - BHRTADVSIP',
    'Communist Party of India  (Marxist) - CPI(M)',
    'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
    'Communist Party of India - CPI',
    'Dravida Munnetra Kazhagam - DMK',	
    'Indian Union Muslim League - IUML',
    'Jammu & Kashmir National Conference - JKN',
    'Jharkhand Mukti Morcha - JMM',
    'Kerala Congress - KEC',
    'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
    'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
    'Rashtriya Janata Dal - RJD',
    'Rashtriya Loktantrik Party - RLTP',
    'Revolutionary Socialist Party - RSP',
    'Samajwadi Party - SP',
    'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
    'Viduthalai Chiruthaigal Katchi - VCK'
);
--NDA Allianz
Update Partywise_Results
Set Party_Alliance = 'NDA'
Where party In (
    'Bharatiya Janata Party - BJP',
    'Telugu Desam - TDP',
    'Janata Dal  (United) - JD(U)',
    'Shiv Sena - SHS',
    'AJSU Party - AJSUP',
    'Apna Dal (Soneylal) - ADAL',
    'Asom Gana Parishad - AGP',
    'Hindustani Awam Morcha (Secular) - HAMS',
    'Janasena Party - JnP',
    'Janata Dal  (Secular) - JD(S)',
    'Lok Janshakti Party(Ram Vilas) - LJPRV',
    'Nationalist Congress Party - NCP',
    'Rashtriya Lok Dal - RLD',
    'Sikkim Krantikari Morcha - SKM'
);
--Other
Update Partywise_Results
Set Party_Alliance = 'Other'
Where Party_Alliance Is Null;

------------------------------------------------------------------------------------------

--8.Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states?

Select
    Partywise_Results.Party_Alliance,
    Count(Constituencywise_Results.Constituency_Id) As Seats_Won
From
    Constituencywise_Results 
Join Partywise_Results
      On Constituencywise_Results.Party_Id = Partywise_Results.Party_Id
Where 
    Partywise_Results.Party_Alliance In ('NDA', 'I.N.D.I.A', 'Other')
Group By 
    Partywise_Results.Party_Alliance
Order By
    Seats_Won Desc;

------------------------------------------------------------------------------------------

--9.What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?

Select 
   Constituencywise_Details.Candidate,
   Constituencywise_Details.Party,
   Constituencywise_Details.EVM_Votes,
   Constituencywise_Details.Postal_Votes,
   Constituencywise_Details.Total_Votes,
   Constituencywise_Results.Constituency_Name
From 
    Constituencywise_Details 
Join Constituencywise_Results  
On Constituencywise_Details.Constituency_Id = Constituencywise_Results.Constituency_Id
Where 
    Constituencywise_Results.Constituency_Name = 'MATHURA'
Order By Constituencywise_Details.Total_Votes Desc;

---------------------------------------------------------------------------------------

--10. Which candidate received the highest number of EVM votes in each constituency (Top 10)?

SELECT
    cr.Constituency_Name,
    cd.Constituency_ID,
    cd.Candidate,
    cd.EVM_Votes
FROM 
    constituencywise_details cd
JOIN 
    constituencywise_results cr ON cd.Constituency_ID = cr.Constituency_ID
WHERE 
    cd.EVM_Votes = (
        SELECT MAX(cd1.EVM_Votes)
        FROM constituencywise_details cd1
        WHERE cd1.Constituency_ID = cd.Constituency_ID
    )
ORDER BY 
    cd.EVM_Votes DESC
Limit 10;



--                                              Thank You
														-- Rsmesh Sabhavath
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                