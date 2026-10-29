FROM alpine:3.20
WORKDIR /app
COPY app/student_app.sh .
RUN chmod +x student_app.sh
EXPOSE 8080
CMD ["./student_app.sh"]
