FROM python:3.11-slim

# Tạo thư mục làm việc
WORKDIR /app

# Copy source code
COPY . .

# Cài đặt dependencies nếu có
RUN pip install --no-cache-dir -r requirements.txt || true

# Biến môi trường để dễ cấu hình
ENV MCP_ENDPOINT=""

# Entrypoint: chạy pipe khi container khởi động
CMD ["python", "mcp_pipe.py"]
