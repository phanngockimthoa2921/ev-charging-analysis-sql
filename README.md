# EV Charging Habits Analysis (SQL EDA)

## Project Overview
Dự án này thực hiện phân tích dữ liệu khám phá (EDA) trên tập dữ liệu sạc xe điện tại các tòa nhà chung cư nhằm giúp quản lý tòa nhà hiểu rõ thói quen của cư dân và tối ưu hóa vận hành trạm sạc.

## Key Analysis & Results
Tôi đã giải quyết 3 bài toán kinh doanh chính bằng SQL:
1. **Lưu lượng người dùng:** Xác định bãi đỗ xe có lượng người dùng duy nhất (unique users) cao nhất để ưu tiên nguồn lực.
2. **Khung giờ cao điểm:** Tìm ra Top 10 thời điểm bận rộn nhất trong tuần giúp điều tiết lưu lượng sạc.
3. **Phát hiện bất thường:** Nhận diện những người dùng sạc trung bình trên 10 giờ để hạn chế việc chiếm dụng trạm sạc quá lâu.

## Skills Demonstrated
- SQL Aggregations: COUNT(DISTINCT), AVG().
- Data Filtering: WHERE, HAVING.
- Data Grouping: GROUP BY, ORDER BY.

## Project Structure
- data/: Chứa file dữ liệu charging_sessions.csv.
- analysis.sql: Chứa toàn bộ các câu lệnh SQL thực hiện phân tích.
