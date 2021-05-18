.class public Lp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x8fd

.field public static final b:I = 0x8fe

.field public static final c:I = 0x8ff

.field public static final d:I = 0x900

.field public static final e:I = 0x901

.field public static final f:I = 0x902

.field public static final g:I = 0x903

.field public static final h:I = 0x904

.field public static final i:I = 0x905

.field public static final j:I = 0x906

.field public static final k:I = 0x90a

.field public static final l:I = 0x90b

.field public static final m:I = 0xaf0

.field private static final n:Ljava/lang/String; = "POST"

.field private static o:I

.field private static p:Ljava/net/HttpURLConnection;

.field private static q:Ljava/io/InputStream;

.field private static r:Ljava/io/OutputStream;

.field private static s:Ljava/util/Timer;

.field private static t:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/16 v0, 0x7530

    sput v0, Lp;->o:I

    .line 52
    sput-object v1, Lp;->p:Ljava/net/HttpURLConnection;

    .line 54
    sput-object v1, Lp;->q:Ljava/io/InputStream;

    .line 55
    sput-object v1, Lp;->r:Ljava/io/OutputStream;

    .line 56
    sput-object v1, Lp;->s:Ljava/util/Timer;

    .line 57
    sput-object v1, Lp;->t:Ljava/util/TimerTask;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lq;

    invoke-direct {v2}, Lq;-><init>()V

    aput-object v2, v0, v1

    .line 78
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 79
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 80
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lbgf;Ljava/lang/String;Lbft;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    const-string v0, ""

    .line 89
    invoke-virtual {p0}, Lbgf;->a()Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string v4, "http://"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {p0}, Lbgf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x2

    .line 115
    if-nez v3, :cond_1

    .line 116
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    const/4 v1, 0x3

    .line 122
    const/16 v2, 0x8fd

    :try_start_1
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    .line 383
    :goto_1
    return-void

    .line 95
    :cond_0
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbgf;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbgf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x4

    .line 127
    :try_start_2
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 129
    if-eqz v4, :cond_2

    .line 132
    :try_start_3
    invoke-static {}, Lp;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    const-wide/16 v0, 0x32

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :cond_2
    :goto_2
    const/16 v1, 0x8

    .line 153
    :try_start_5
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 162
    :goto_3
    if-nez v0, :cond_3

    .line 163
    const/16 v1, 0xb

    .line 164
    const/16 v0, 0x8fe

    const/4 v2, 0x0

    :try_start_6
    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 159
    goto :goto_3

    .line 168
    :cond_3
    const/16 v1, 0xc

    .line 169
    :try_start_7
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_4

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v2, :cond_4

    .line 170
    const/16 v1, 0xd

    .line 171
    const/16 v0, 0x8ff

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto :goto_1

    .line 175
    :cond_4
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\"><S:Header/><S:Body><tns:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbgf;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xmlns:tns=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbgf;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"><"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbgf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbgf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "></tns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbgf;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "></S:Body></S:Envelope>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v3, "Content-Type"

    const-string v5, "text/xml;charset=utf-8"

    invoke-virtual {v0, v3, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "SOAPAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbgf;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lbgf;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_5

    .line 185
    if-eqz v4, :cond_7

    .line 186
    const/16 v1, 0x10

    .line 187
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 188
    const/16 v1, 0x11

    .line 189
    new-instance v3, Lr;

    invoke-direct {v3}, Lr;-><init>()V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 197
    const/16 v1, 0x12

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 199
    const/16 v1, 0x13

    .line 200
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 201
    const/16 v1, 0x14

    .line 202
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 203
    const/16 v1, 0x15

    .line 204
    sget v3, Lp;->o:I

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 205
    sget v3, Lp;->o:I

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 207
    const/16 v1, 0x16

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 209
    const/16 v1, 0x19

    .line 211
    :try_start_9
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 234
    const/16 v1, 0x17

    .line 235
    :try_start_a
    sput-object v0, Lp;->p:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 285
    :goto_4
    :try_start_b
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lp;->r:Ljava/io/OutputStream;

    .line 286
    sget-object v0, Lp;->r:Ljava/io/OutputStream;

    const-string v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 292
    :goto_5
    :try_start_c
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v0

    .line 294
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    .line 295
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    .line 312
    :cond_5
    const/16 v1, 0x32

    .line 314
    :try_start_d
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lp;->q:Ljava/io/InputStream;

    .line 315
    const/16 v1, 0x33

    .line 316
    const/16 v0, 0x7d0

    new-array v0, v0, [C

    .line 317
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v2, Lp;->q:Ljava/io/InputStream;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 318
    const/16 v1, 0x34

    .line 320
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 322
    const/16 v2, 0x34

    .line 323
    :goto_6
    :try_start_e
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v1

    if-gtz v1, :cond_a

    .line 330
    const/4 v0, 0x0

    :try_start_f
    check-cast v0, [C
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 333
    const/16 v1, 0x35

    .line 335
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 336
    const/16 v1, 0x36

    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lbgf;->f()Ljava/lang/String;

    move-result-object v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 342
    if-nez v0, :cond_b

    .line 343
    const/16 v0, 0x903

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 212
    :catch_2
    move-exception v0

    .line 216
    const/16 v2, 0x905

    :try_start_11
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 218
    :catch_3
    move-exception v0

    .line 219
    const/16 v2, 0x906

    :try_start_12
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 221
    :catch_4
    move-exception v0

    .line 222
    const/16 v2, 0x90b

    :try_start_13
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 224
    :catch_5
    move-exception v0

    .line 226
    :try_start_14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Illegal character in authority at index"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    const/16 v2, 0x8fd

    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 230
    :cond_6
    const/16 v2, 0x900

    :try_start_15
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 237
    :cond_7
    const/16 v1, 0x1e

    .line 238
    :try_start_16
    check-cast v0, Ljava/net/HttpURLConnection;

    sput-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    .line 239
    const/16 v1, 0x1f

    .line 240
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 241
    const/16 v1, 0x20

    .line 242
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 243
    const/16 v1, 0x21

    .line 244
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 245
    const/16 v1, 0x22

    .line 246
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    sget v3, Lp;->o:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 247
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    sget v3, Lp;->o:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 248
    const/16 v1, 0x23

    .line 249
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 251
    const/16 v1, 0x24

    .line 254
    :try_start_17
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_4

    .line 260
    :catch_6
    move-exception v0

    .line 264
    const/16 v2, 0x905

    :try_start_18
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 266
    :catch_7
    move-exception v0

    .line 268
    const/16 v2, 0x906

    :try_start_19
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 270
    :catch_8
    move-exception v0

    .line 271
    const/16 v2, 0x90b

    :try_start_1a
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 273
    :catch_9
    move-exception v0

    .line 275
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Illegal character in authority at index"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    const/16 v2, 0x8fd

    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 279
    :cond_8
    const/16 v2, 0x900

    :try_start_1c
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 301
    :cond_9
    const/4 v1, 0x0

    :try_start_1d
    invoke-interface {p2, v0, v1}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 304
    :catch_a
    move-exception v0

    .line 306
    const/16 v1, 0x2c

    .line 307
    const/16 v2, 0x901

    :try_start_1e
    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 325
    :cond_a
    const/4 v5, 0x0

    :try_start_1f
    invoke-static {v0, v5, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const/4 v0, 0x0

    check-cast v0, [C

    .line 327
    const/16 v0, 0x7d0

    new-array v0, v0, [C
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_6

    .line 329
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 330
    const/4 v0, 0x0

    :try_start_20
    check-cast v0, [C

    .line 331
    throw v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 372
    :catch_b
    move-exception v0

    move v1, v2

    .line 374
    :goto_7
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/16 v1, 0x37

    .line 377
    const/16 v2, 0x904

    invoke-interface {p2, v2, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 346
    :cond_b
    :try_start_22
    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_c

    .line 347
    const/16 v0, 0x903

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 351
    :cond_c
    const/4 v3, 0x1

    :try_start_23
    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "</"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    if-nez v0, :cond_d

    .line 354
    const/16 v0, 0x903

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 356
    :cond_d
    :try_start_24
    array-length v2, v0

    if-nez v2, :cond_e

    .line 357
    const/16 v0, 0x903

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 361
    :cond_e
    const/4 v2, 0x0

    :try_start_25
    aget-object v0, v0, v2

    .line 363
    invoke-interface {p2, v0}, Lbft;->a(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_f
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 367
    :cond_f
    const/16 v1, 0x37

    .line 368
    const/16 v0, 0x903

    const/4 v2, 0x0

    :try_start_26
    invoke-interface {p2, v0, v2}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_f
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 381
    :catch_c
    move-exception v0

    .line 382
    :try_start_27
    invoke-interface {p2, v1, v0}, Lbft;->a(ILjava/lang/Exception;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 385
    invoke-static {}, Lp;->c()V

    goto/16 :goto_1

    .line 384
    :catchall_1
    move-exception v0

    .line 385
    invoke-static {}, Lp;->c()V

    .line 386
    throw v0

    .line 143
    :catch_d
    move-exception v0

    goto/16 :goto_2

    .line 139
    :catch_e
    move-exception v0

    goto/16 :goto_2

    .line 372
    :catch_f
    move-exception v0

    goto/16 :goto_7

    .line 287
    :catch_10
    move-exception v0

    goto/16 :goto_5
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 395
    new-instance v1, Lp;

    invoke-direct {v1}, Lp;-><init>()V

    .line 396
    monitor-enter v1

    .line 397
    :try_start_0
    sget-object v0, Lp;->t:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 400
    :try_start_1
    sget-object v0, Lp;->t:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lp;->s:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 407
    :try_start_3
    sget-object v0, Lp;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    :cond_1
    :goto_1
    :try_start_4
    sget-object v0, Lp;->r:Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 413
    :try_start_5
    sget-object v0, Lp;->r:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 416
    :goto_2
    const/4 v0, 0x0

    :try_start_6
    sput-object v0, Lp;->r:Ljava/io/OutputStream;

    .line 419
    :cond_2
    sget-object v0, Lp;->q:Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    .line 421
    :try_start_7
    sget-object v0, Lp;->q:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 424
    :goto_3
    const/4 v0, 0x0

    :try_start_8
    sput-object v0, Lp;->q:Ljava/io/InputStream;

    .line 427
    :cond_3
    invoke-static {}, Lp;->d()V

    .line 396
    monitor-exit v1

    .line 432
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_3

    .line 414
    :catch_1
    move-exception v0

    goto :goto_2

    .line 408
    :catch_2
    move-exception v0

    goto :goto_1

    .line 401
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private static d()V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    .line 447
    :cond_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 441
    :try_start_1
    sget-object v0, Lp;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 442
    :catch_1
    move-exception v0

    goto :goto_0
.end method
