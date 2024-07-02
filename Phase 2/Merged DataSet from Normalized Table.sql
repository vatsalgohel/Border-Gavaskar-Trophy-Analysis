
SELECT IR.[Test Series Year]
	 , IR.[Test Number]
	 , IR.Innings
	 , MN.Venue
	 , ML.Host
	 , IR.[Highest Scorer]
	 , TS.[Team]
	 , IR.[Runs by highest scorer]
	 , IR.[best bowler]
	 , IR.[wickets by best bowler]
	 , IR.[Runs per Innings]
	 , IR.[Wickets Fallen]
	 , MN.Winner
	 , MN.[Win Margin Descriptive]
	 , MN.[Man of the Match]
	 , MN.[Ind captain]
	 , MN.[Aus captain]
	 , SA.[Man of the Series]
	 , SA.[Series Victory]
FROM Project_BGT.Project_BGT.Innings_Records as IR
LEFT JOIN Project_BGT.Project_BGT.Top_Scorer as TS on IR.[Highest Scorer] = TS.[Highest Scorer]
LEFT JOIN Project_BGT.Project_BGT.Match_Narration as MN on IR.[Test Series Year] = MN.[Test Series Year] AND IR.[Test Number] = MN.[Test Number]
LEFT JOIN Project_BGT.Project_BGT.Streak_Achievement as SA on MN.[Test Series Year] = SA.[Test Series Year]
LEFT JOIN Project_BGT.Project_BGT.Match_Location as ML on MN.[Venue] = ML.[Venue] 
