Symmetric encryption of FILE. Gpg asks for passphrase twice and outputs FILE.gpg

```bash
gpg -c FILE
```

To decrypt FILE. Gpg asks for the password used to encrypt the file.

```bash
gpg -o FILE_output -d FILE
```

cannot encrypt dir, it must be a file

export key made
```bash
 gpg --armor --output public-key.gpg --export user@example.com
```

This fails:

```bash
gpg --fingerprint public-key.gpg

```
