-- 🔹 Task 1: Top 10 Most Viewed Videos
SELECT 
  video_id,
  title,
  channel_title,
  views
FROM `confident-inn-459118-h1.youtube_project.trending_videos`
ORDER BY views DESC
LIMIT 10;

-- 🔹 Task 2: Most Trending Channels
SELECT 
  channel_title,
  COUNT(video_id) AS total_trending_videos
FROM `confident-inn-459118-h1.youtube_project.trending_videos`
GROUP BY channel_title
ORDER BY total_trending_videos DESC
LIMIT 10;

-- 🔹 Task 3: Average Likes by Category
SELECT 
  category_id,
  ROUND(AVG(likes), 2) AS avg_likes
FROM `confident-inn-459118-h1.youtube_project.trending_videos`
GROUP BY category_id
ORDER BY avg_likes DESC
LIMIT 10;

-- 🔹 Task 4: RANK Videos by Views
SELECT
  video_id,
  title,
  views,
  RANK() OVER (ORDER BY views DESC) AS view_rank
FROM `confident-inn-459118-h1.youtube_project.trending_videos`
LIMIT 10;
