# استخدام صورة تحتوي على Python و Node.js
FROM nikolaik/python-nodejs:python3.10-nodejs19

# تحديث الحزم وتثبيت ffmpeg
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# نسخ الملفات إلى دليل العمل
COPY . /app/
WORKDIR /app/

# تثبيت متطلبات بايثون
RUN pip3 install --no-cache-dir -U -r requirements.txt

# التأكد من وجود أذونات تشغيل على السكريبت
RUN chmod +x start

# تحديد الأمر الافتراضي لتشغيل التطبيق
CMD ["bash", "start"]
