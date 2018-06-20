/****** Script for SelectTopNRows command from SSMS  ******/
	  /****** Script for SelectTopNRows command from SSMS  ******/
DECLARE @time_watched TABLE (id int, [avg_time_watched] float, [std_time_watched] float)

INSERT INTO @time_watched
SELECT[video_number]
	  ,avg([percentage_watched_defaultrate1]) as [avg time watched]
	  ,stdev([percentage_watched_defaultrate1]) as [std time watched]
  FROM [fall_2013_blended].[dbo].[SY_Mikes_attendance_ms_sampling]
  GROUP BY video_number

SELECT [Video Order]
      ,[Title]
      ,[Video Length (s)]
      ,CASE
	  WHEN [Lab Number] < 0 THEN 'lecture video'
	  ELSE 'lab video'
	  END AS [video_type]
      ,COUNT([session_user_id]) as [n_views]
	  ,COUNT(DISTINCT session_user_id) as [n_students]
	  ,v2.number_of_clicker_Qs
	  ,v3.avg_time_watched
	  ,v3.std_time_watched
  FROM [fall_2013_blended].[dbo].[Video Views] as v

  JOIN [fall_2013_blended].[dbo].[SY_video_order] as v2
  ON v.[Video Order] = v2.video_order
  
  JOIN @time_watched v3
  ON v3.id = v.[Video Order]

  GROUP BY [Video Order]
      ,[Title]
      ,[Video Length (s)]
      ,[Lab Number]
	  ,v2.number_of_clicker_Qs
	  ,v3.avg_time_watched
	  ,v3.std_time_watched