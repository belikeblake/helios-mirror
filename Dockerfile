FROM istareatotherscode2/lasirenaftw:h2

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

RUN curl https://rclone.org/install.sh | bash

CMD ["bash", "start.sh"]
