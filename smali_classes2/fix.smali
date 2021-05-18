.class Lfix;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lfiu;


# direct methods
.method private constructor <init>(Lfiu;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lfix;->c:Lfiu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lfix;->a:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lfix;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lfix;->c:Lfiu;

    invoke-virtual {v1}, Lfiu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 225
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 230
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ca="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 236
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 238
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 239
    const-string v4, "ca"

    invoke-virtual {v1, v4, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 242
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 247
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 248
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 250
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 232
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 256
    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 261
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 263
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 267
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 270
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 274
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 272
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v2, 0x0

    .line 90
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://mbb.paas.santanderbr.pre.corp/transfer/v1/listAllBanks"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 95
    invoke-direct {p0}, Lfix;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 96
    iget-object v1, p0, Lfix;->c:Lfiu;

    invoke-static {v1}, Lfiu;->a(Lfiu;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 98
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 100
    const-string v1, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "accept"

    const-string v3, "application/json"

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 109
    const-string v1, "Authorization"

    iget-object v3, p0, Lfix;->c:Lfiu;

    invoke-static {v3}, Lfiu;->b(Lfiu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "{\"code\":\"877100000018301605021734110043020269826219074554\", \"name\":\"banco\", \"ispb\":\"3342\" }"

    .line 112
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_a

    .line 117
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 130
    :goto_0
    if-eqz v1, :cond_9

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 133
    array-length v3, v1

    int-to-long v4, v3

    const-wide/16 v6, 0x100

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 135
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 139
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 141
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 143
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 145
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 151
    :cond_0
    :goto_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    if-eqz v1, :cond_1

    .line 155
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 157
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 164
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v8, :cond_6

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 169
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 170
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lfix;->a(Ljava/io/InputStream;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 175
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 178
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lfix;->a:Ljava/lang/String;

    .line 179
    const-string v1, "access-token"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfix;->b:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x1c4

    if-ne v1, v3, :cond_8

    .line 183
    const-string v1, "452 - Erro na Autoriza\u00e7\u00e3o do Token"

    iput-object v1, p0, Lfix;->a:Ljava/lang/String;

    .line 188
    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 189
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfix;->a:Ljava/lang/String;

    .line 192
    :cond_4
    iget-object v0, p0, Lfix;->a:Ljava/lang/String;

    .line 198
    :goto_5
    return-object v0

    .line 120
    :cond_5
    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    .line 121
    invoke-virtual {v3}, Leju;->h()Leju;

    .line 122
    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 198
    goto :goto_5

    .line 164
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    goto/16 :goto_2

    .line 172
    :cond_7
    :try_start_6
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lfix;->a(Ljava/io/InputStream;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    goto :goto_3

    .line 175
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 185
    :cond_8
    const-string v1, "500 - Erro Interno"

    iput-object v1, p0, Lfix;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto/16 :goto_1

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 204
    const-string v0, "PaaS"

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lfix;->c:Lfiu;

    iget-object v0, v0, Lfiu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lfix;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfix;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lfix;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lmir;->a(Ljava/lang/String;)V

    .line 209
    const-string v0, "PaaS"

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lfix;->c:Lfiu;

    iget-object v0, v0, Lfiu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lfix;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    return-void
.end method
