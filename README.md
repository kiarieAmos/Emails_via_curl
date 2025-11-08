# Emails_via_curl
A simple guide to sending emails from the commandline via curl and through Gmail's SMTP server.

-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+


Often times in the world of IT, you find yourself in a super secure system where you need to send an email.
In more instances than one, I have recently found myself with a need to send emails from the command line interface of a clients RedHat box.
It goes without saying that we do not have a bunch of tools for that but curl came to my rescue.

I am leaving this guide here for you and my future self as well.

This can be useful when doing the following;
1. Testing email gateways in development environments.
2. Penetration testing in enterprise solutions.
3. Automating simple tasks.

Gmail is a common Mailing service, I am assuming that you have an account, if you do not feel free to create one, its free.
This method works with other email providers as well.

#### Setup Gmail SMTP
1. Login to your Gmail account and navigate to the account settings.
2. Under security, search for app passwords.
3. Provide a name for your app and copy the provided app password.
4. This app password should be kept super secret and serious measures must be taken to keep it a secret.
5. Once you have the app password we will write a few lines.


##### Create an email data file.

This email file is defined and formatted in line with the [RFC 5322 Standard](https://datatracker.ietf.org/doc/html/rfc5322.html).

```bash
From: Kiarie Amos <sender@gmail.com>
To: Mr Receiver <mr_receiver@gmail.com>
Subject: AN EXAMPLE OF EMAIL
Date: Sat Nov  8 11:17:36 EAST 2025

Dear Mr Receiver.

My name is Kiarie Amos, I am a software novice from Earth.

I am writing to inform you of the signifiant progress we have made here on Terra in and around AI and machine learning.
The team at Open AI has been hard at work for the past 3 years commercializing large language models.
The technology is an inception by a research team at google and its ins and outs are described briefly in paper titled "Attention is all you need".

Looking forward to hearing from you.

----
Your trully.

Software Novice.
```

This email data file will be attached to the curl command for sending the emails.

##### Refine Curl Command.

Now that we have the email data file, we are free to interact write a curl command that will actually send the email.
We will use bash because why not.

```Bash
curl --ssl-reqd \
  --url 'smtps://smtp.gmail.com:465' \
  --user 'mail@mailservice.com:password' \
  --mail-from 'mail@mailer.com' \
  --mail-rcpt 'mail@recipient.com' \
  --upload-file email.txt

```

The '\' symbol indicates that the line extends beyond one line.
The URL defines the SMTP server and port that we are going to use for this operation.
The user defines the `username:password` combination that we will use to authenticate ourselves to the SMTP server.
Mail-from and `mail-rcpt` represent the sender and recipient respectively.
Upload file represents the email date file that we have defined above.

##### Sending the Email.
1. Clone this repository.
2. Edit the email data file as necessary.
3. Edit the curl command accordingly.
4. Open your command prompt  and navigate to the repo's directory.
5. Execute the command via `./Email_commad.sh`
