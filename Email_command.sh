# A simple command to leverage curl and send emails directly from the command line.

curl --ssl-reqd \
  --url 'smtps://smtp.gmail.com:465' \
  --user 'mail@mailservice.com:password' \
  --mail-from 'mail@mailer.com' \
  --mail-rcpt 'mail@recipient.com' \
  --upload-file email.txt