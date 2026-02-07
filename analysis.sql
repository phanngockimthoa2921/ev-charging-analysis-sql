-- 1. Tìm số lượng người dùng duy nhất tại mỗi bãi đỗ xe (Shared)
-- Giúp xác định nhu cầu thực tế tại từng địa điểm.
SELECT garage_id, COUNT(DISTINCT user_id) AS num_unique_users
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY garage_id
ORDER BY num_unique_users DESC;

-- 2. Tìm top 10 khung giờ bắt đầu sạc phổ biến nhất
-- Giúp quản lý tòa nhà biết khi nào trạm sạc bận rộn nhất.
SELECT weekdays_plugin, start_plugin_hour, COUNT(*) AS num_charging_sessions
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY weekdays_plugin, start_plugin_hour
ORDER BY num_charging_sessions DESC
LIMIT 10;

-- 3. Tìm những người dùng sạc trung bình hơn 10 giờ
-- Phát hiện những người có hành vi chiếm dụng trạm sạc lâu bất thường.
SELECT user_id, AVG(duration_hours) AS avg_charging_duration
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY user_id
HAVING AVG(duration_hours) > 10
ORDER BY avg_charging_duration DESC;