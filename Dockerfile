FROM abod-19/am:slim-buster

RUN git clone https://github.com/abod-19/AM.git /root/ZeMusic

WORKDIR /root/ZeMusic

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/ZeMusic/bin:$PATH"

CMD ["python3","-m","ZeMusic"]
