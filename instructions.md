# Hướng dẫn AI cho repository xiaozhi-esp32

## Ngôn ngữ
- Luôn trả lời bằng tiếng Việt.

## Phân tích code
- Chỉ dựa trên code thực tế trong workspace.
- Không phỏng đoán file, hàm, biến hoặc cấu trúc nếu chưa kiểm tra.
- Nếu thiếu file liên quan thì nói rõ cần kiểm tra file nào.
- Phải chỉ rõ file, hàm, block hoặc dòng liên quan nếu có thể.

## Sửa code
- Không xuất toàn bộ file.
- Chỉ đưa đoạn cần thay hoặc đoạn cần chèn.
- Phải chỉ rõ vị trí patch: file nào, hàm nào, chèn sau block nào hoặc thay block nào.
- Không đổi tên biến, hàm, class, struct nếu không cần thiết.
- Không thay đổi logic đang hoạt động ổn định.

## Với ESP-IDF
- Khi lỗi build, ưu tiên phân tích log lỗi trước.
- Kiểm tra `CMakeLists.txt`, `sdkconfig`, component, include path và version ESP-IDF.
- Project đang ưu tiên ESP-IDF v5.5.4.
- Sau mỗi patch, yêu cầu build lại bằng lệnh `idf.py build`.
- Không tự ý flash firmware nếu chưa được yêu cầu.

## Với Git
- Trước khi sửa lớn, nhắc kiểm tra git status.
- Sau khi sửa, nhắc kiểm tra git diff.
