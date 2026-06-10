# ESP-IDF Project Analyzer

## Mục đích
Kỹ năng này dùng để phân tích project ESP-IDF/C/C++ trong workspace.

## Hướng dẫn chung
- Đọc cấu trúc thư mục trước khi phân tích.
- Xác định project dùng ESP-IDF, Arduino hay framework khác.
- Kiểm tra các file quan trọng: `CMakeLists.txt`, `sdkconfig`, `main.c`/`main.cpp`, `component.mk` nếu có, `managed_components`, `components`.
- Xác định luồng khởi động từ `app_main()`.
- Xác định các module chính: WiFi, BLE, audio, display, GPIO, I2C, SPI, UART, NVS, task FreeRTOS.
- Chỉ kết luận dựa trên code thực tế trong workspace.
- Không phỏng đoán nếu chưa thấy file hoặc đoạn code.
- Khi trả lời phải nêu rõ file, hàm, block liên quan.
- Không tự ý sửa code khi chưa được yêu cầu.

## Khi sử dụng kỹ năng
1. Khảo sát thư mục và file để xác định dạng project.
2. Tìm nguồn khởi động `app_main()` trong code.
3. Kiểm tra các module và component được import/đăng ký.
4. Báo cáo các phần liên quan và chỉ ra file/hàm cụ thể.
5. Nếu thiếu file cần kiểm tra thêm, yêu cầu rõ tệp nào.

# Project Code Comparator

## Mục đích
Kỹ năng này dùng để so sánh hai project code trong cùng workspace.

## Hướng dẫn chung
- Xác định rõ project A và project B theo đường dẫn thư mục.
- So sánh cấu trúc thư mục trước.
- So sánh hệ build: `CMakeLists.txt`, `sdkconfig`, dependencies, `managed_components`, `components`.
- So sánh điểm vào chương trình: `app_main()`, `setup()`/`loop()` nếu có.
- So sánh phần cấu hình phần cứng: GPIO, I2C, SPI, UART, audio codec, display, touch, SD card, button, LED.
- So sánh luồng xử lý chính: init, task, event, callback, state machine.
- Chỉ ra phần giống nhau, khác nhau và phần có thể port/chuyển đổi.
- Không tự ý merge code.
- Không tự ý sửa code.
- Nếu cần patch, phải đề xuất từng bước nhỏ.
- Mỗi kết luận phải kèm file/hàm liên quan nếu có thể.

## Khi sử dụng kỹ năng
1. Xác nhận đường dẫn và phạm vi hai project.
2. So sánh file cấu hình build và dependency trước.
3. So sánh điểm vào chương trình và các module phần cứng chính.
4. Báo cáo sự giống/nói khác kèm tham chiếu file/hàm cụ thể.
5. Nếu cần patch, đề xuất các bước nhỏ thay vì sửa trực tiếp.
