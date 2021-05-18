.class public Lary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larx;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/io/InputStream; = null

.field private static final c:Ljava/lang/String; = "[ChatServiceImpl]"

.field private static f:Lapw;

.field private static i:Lary;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:I

.field private g:I

.field private h:I

.field private j:Laru;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lary;->d:Ljava/lang/Object;

    .line 138
    const/16 v0, 0x7530

    iput v0, p0, Lary;->g:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lary;->h:I

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lary;->d:Ljava/lang/Object;

    .line 138
    const/16 v0, 0x7530

    iput v0, p0, Lary;->g:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lary;->h:I

    .line 183
    if-lez p1, :cond_0

    .line 184
    iput p1, p0, Lary;->g:I

    .line 186
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    invoke-static {}, Lary;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lary;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1540
    const-string v0, ""

    .line 1544
    :try_start_0
    invoke-static {p1}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 1546
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2}, Lase;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1563
    :cond_0
    :goto_0
    return-object v0

    .line 1549
    :catch_0
    move-exception v1

    .line 1551
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHttpData error httpURLConnection.getInputStream() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2}, Lase;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHttpData error httpURLConnection.getErrorStream() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1558
    :catch_1
    move-exception v1

    .line 1559
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHttpData error httpURLConnection.getErrorStream() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lary;Larj;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lary;->c(Larj;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lark;
    .locals 4

    .prologue
    .line 2121
    const/4 v1, 0x0

    .line 2123
    invoke-static {p1}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 2126
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->p()Lari;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2127
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->p()Lari;

    move-result-object v3

    invoke-virtual {v3}, Lari;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2135
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b()Lary;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lary;->i:Lary;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lary;

    invoke-direct {v0}, Lary;-><init>()V

    sput-object v0, Lary;->i:Lary;

    .line 151
    :cond_0
    sget-object v0, Lary;->i:Lary;

    return-object v0
.end method

.method private b(Lark;)V
    .locals 3

    .prologue
    .line 1438
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Larj;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Larj;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Larj;->d(Z)V

    .line 1443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Larj;->f(Z)V

    .line 1445
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Larz;

    invoke-direct {v2, p0, v0}, Larz;-><init>(Lary;Larj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1450
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1452
    :cond_0
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1507
    sget-object v0, Lary;->a:Ljava/lang/String;

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "Erro nao foi inicializado uma url de servico de chat valida."

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_0
    sget-object v0, Lary;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Larj;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x3e7

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1190
    invoke-virtual {p1, v3}, Larj;->e(Z)V

    .line 1191
    invoke-virtual {p1, v3}, Larj;->b(Z)V

    .line 1192
    invoke-virtual {p1, v6}, Larj;->g(Z)V

    .line 1193
    invoke-virtual {p1, v6}, Larj;->h(Z)V

    .line 1194
    invoke-virtual {p1, v3}, Larj;->i(Z)V

    .line 1196
    new-instance v0, Larw;

    invoke-direct {v0}, Larw;-><init>()V

    iput-object v0, p0, Lary;->j:Laru;

    .line 1200
    if-eqz p1, :cond_9

    .line 1202
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 3 - inicio da solicitacao token de arquivo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :try_start_0
    invoke-virtual {p0, p1}, Lary;->a(Larj;)Lari;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1211
    :goto_0
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 3 - fim da solicitacao token de arquivo"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    if-eqz v0, :cond_8

    .line 1215
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 4 - inicio de envio de arquivo"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    :try_start_2
    const-string v1, "[ChatServiceImpl]"

    const-string v4, "Log 5 - conexao"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v1, "/chatfile/sessions/file/{fileToken}"

    invoke-static {v1}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    invoke-static {}, Lard;->a()Lard;

    move-result-object v4

    invoke-static {v1, v4}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "{fileToken}"

    .line 1225
    invoke-virtual {v0}, Lari;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    const-string v1, "[ChatServiceImpl]"

    const-string v4, "Log 5 - boundary"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v1, "\r\n"

    .line 1229
    const-string v1, "--"

    .line 1230
    const-string v1, "*****"

    .line 1231
    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1233
    const-string v1, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 5 - fileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1237
    :try_start_3
    const-string v1, "[ChatServiceImpl]"

    const-string v5, "Log 6"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    sget-object v1, Lary;->b:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lash;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 1241
    const/16 v0, 0x7530

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1243
    iget v0, p0, Lary;->g:I

    if-lez v0, :cond_1

    .line 1244
    iget v0, p0, Lary;->g:I

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1249
    :goto_1
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 7 - set dos parametros de envio multipart da conexao"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1251
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1252
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1253
    sget-object v0, Lapz;->POST:Lapz;

    invoke-virtual {v0}, Lapz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1254
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v0, "ChatSessionId"

    invoke-static {}, Lard;->a()Lard;

    move-result-object v1

    invoke-virtual {v1}, Lard;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v0, "RequestSignature"

    const-string v1, ""

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v0, "HTTP_ENCTYPE"

    const-string v1, "multipart/form-data"

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v0, "Content-Type"

    const-string v1, "multipart/form-data;boundary=*****"

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "filename"

    invoke-virtual {v5, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v0, "[ChatServiceImpl]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 8 - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1266
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 9 -  header para o multipart body --boundary values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v0, "--*****\r\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1269
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 1275
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1276
    const-string v7, "[ChatServiceImpl]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Log 10 - total de bytes lido: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p1}, Larj;->r()Ljava/lang/String;

    move-result-object v1

    .line 1279
    const-string v7, "[ChatServiceImpl]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Log 10 - sendFile - cryptoKey: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-static {v1}, Lase;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1283
    iget-object v7, p0, Lary;->j:Laru;

    invoke-virtual {v7, v1, v0}, Laru;->b(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 1287
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1292
    const/16 v8, 0x1000

    .line 1296
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1298
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1299
    new-array v9, v0, [B

    .line 1301
    const-string v2, "[ChatServiceImpl]"

    const-string v10, "Log 10 - read file and write it into form"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v13, v3

    move v3, v2

    move v2, v0

    move v0, v13

    .line 1304
    :goto_2
    if-lez v3, :cond_3

    .line 1305
    const-wide/16 v10, 0x4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1306
    invoke-virtual {p1}, Larj;->l()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Larj;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1308
    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1309
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1310
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1311
    add-int/2addr v0, v2

    .line 1312
    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1313
    mul-int/lit8 v10, v0, 0x64

    array-length v11, v7

    div-int/2addr v10, v11

    invoke-virtual {p1, v10}, Larj;->a(I)V

    .line 1314
    const-string v10, "[ChatServiceImpl]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Log 11 - arquivo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - progresso envio: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Larj;->d()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    :goto_3
    :try_start_5
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1408
    :goto_4
    if-eqz v1, :cond_0

    .line 1410
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    .line 1428
    :cond_0
    :goto_5
    return-void

    .line 1207
    :catch_1
    move-exception v0

    .line 1208
    const-string v2, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ocorreu um erro na requisicao do token de envio de arquivo. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 1246
    :cond_1
    const/16 v0, 0x3a98

    :try_start_7
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 1383
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1317
    :cond_2
    :try_start_8
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 11 - progresso de envio: CANCELADO"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1408
    if-eqz v1, :cond_0

    .line 1410
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 1411
    :catch_3
    move-exception v0

    .line 1412
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFile close fileInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1322
    :cond_3
    :try_start_a
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 12 - send multipart form data init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1324
    const-string v0, "--*****--\r\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1325
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 12 - send multipart form data end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-static {v5}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 1328
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 1329
    const-string v3, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 13 - server response code: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v3, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 13 - server response message: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_5

    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->f(Z)V

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->f(Z)V

    .line 1337
    invoke-virtual {p1}, Larj;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1338
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Larj;->a(I)V

    .line 1339
    const-string v0, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log 14 - arquivo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - progresso envio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Larj;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 14 - file set"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Larj;->a(Ljava/util/Date;)V

    .line 1342
    invoke-virtual {p1}, Larj;->f()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Larj;->b(Ljava/util/Date;)V

    .line 1343
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->b(Z)V

    .line 1344
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->f(Z)V

    .line 1345
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->a(Z)V

    .line 1379
    :cond_4
    :goto_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 1380
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 1381
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 14 - dataOutputStream flush / close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 1385
    :catch_4
    move-exception v0

    .line 1386
    :goto_7
    :try_start_b
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - InvalidKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .line 1403
    :catch_5
    move-exception v0

    .line 1404
    :goto_8
    :try_start_c
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile FileNotFoundException nao foi possivel encontrar o arquivo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1408
    if-eqz v1, :cond_0

    .line 1410
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_5

    .line 1411
    :catch_6
    move-exception v0

    .line 1412
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFile close fileInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1348
    :cond_5
    :try_start_e
    new-instance v2, Larh;

    invoke-direct {v2}, Larh;-><init>()V

    .line 1349
    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Larh;->a(I)V

    .line 1350
    const-string v3, "Falha ao enviar arquivo"

    invoke-virtual {v2, v3}, Larh;->a(Ljava/lang/String;)V

    .line 1351
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Larj;->f(Z)V

    .line 1352
    invoke-virtual {p1, v2}, Larj;->a(Larh;)V

    .line 1353
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Larj;->i(Z)V

    .line 1354
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_19
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 1387
    :catch_7
    move-exception v0

    .line 1388
    :goto_9
    :try_start_f
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - NoSuchPadding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    .line 1405
    :catch_8
    move-exception v0

    .line 1406
    :goto_a
    :try_start_10
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendFile FileNotFoundException nao foi possivel enviar o arquivo "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1408
    if-eqz v1, :cond_0

    .line 1410
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_5

    .line 1411
    :catch_9
    move-exception v0

    .line 1412
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFile close fileInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1371
    :cond_6
    :try_start_12
    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    .line 1372
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Larh;->a(I)V

    .line 1373
    const-string v1, "Falha ao enviar arquivo"

    invoke-virtual {v0, v1}, Larh;->a(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p1, v0}, Larj;->a(Larh;)V

    .line 1375
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->i(Z)V

    .line 1376
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "! CryptoKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v1, v2

    goto/16 :goto_6

    .line 1389
    :catch_a
    move-exception v0

    move-object v1, v2

    .line 1390
    :goto_b
    :try_start_13
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - NoSuchAlgorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    .line 1408
    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v1, :cond_7

    .line 1410
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 1413
    :cond_7
    :goto_d
    throw v0

    .line 1391
    :catch_b
    move-exception v0

    move-object v1, v2

    .line 1392
    :goto_e
    :try_start_15
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - InvalidAlgorithmParameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1393
    :catch_c
    move-exception v0

    move-object v1, v2

    .line 1394
    :goto_f
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - IllegalBlockSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1395
    :catch_d
    move-exception v0

    move-object v1, v2

    .line 1396
    :goto_10
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - BadPadding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1397
    :catch_e
    move-exception v0

    move-object v1, v2

    .line 1398
    :goto_11
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile - InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1399
    :catch_f
    move-exception v0

    move-object v1, v2

    .line 1400
    :goto_12
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendFile - Exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_4

    .line 1411
    :catch_10
    move-exception v0

    .line 1412
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFile close fileInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1411
    :catch_11
    move-exception v1

    .line 1412
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile close fileInputStream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1417
    :cond_8
    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    .line 1418
    invoke-virtual {v0, v7}, Larh;->a(I)V

    .line 1419
    const-string v1, "Falha ao enviar arquivo"

    invoke-virtual {v0, v1}, Larh;->a(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p1, v0}, Larj;->a(Larh;)V

    .line 1421
    invoke-virtual {p1, v6}, Larj;->i(Z)V

    .line 1422
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Erro ao solicitar ticket "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-static {}, Lase;->b()V

    goto/16 :goto_5

    .line 1426
    :cond_9
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "FileWrapper null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1408
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c

    .line 1405
    :catch_12
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    .line 1403
    :catch_13
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    .line 1399
    :catch_14
    move-exception v0

    goto :goto_12

    .line 1397
    :catch_15
    move-exception v0

    goto/16 :goto_11

    .line 1395
    :catch_16
    move-exception v0

    goto/16 :goto_10

    .line 1393
    :catch_17
    move-exception v0

    goto/16 :goto_f

    .line 1391
    :catch_18
    move-exception v0

    goto/16 :goto_e

    .line 1389
    :catch_19
    move-exception v0

    goto/16 :goto_b

    .line 1387
    :catch_1a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9

    .line 1385
    :catch_1b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7
.end method

.method private j(Lard;)V
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p1}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->f(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    const-string v0, "Chat indispon\u00edvel, por favor, reconecte"

    invoke-static {v0}, Lase;->e(Ljava/lang/String;)Lark;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->b(Lark;)V

    .line 1180
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lark;)Larc;
    .locals 4

    .prologue
    .line 1570
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "receiveManagerData "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const/4 v0, 0x0

    .line 1574
    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p1}, Lark;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    :cond_0
    :goto_0
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "receiveManagerData "

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-object v0

    .line 1581
    :cond_1
    new-instance v1, Larh;

    invoke-direct {v1}, Larh;-><init>()V

    invoke-virtual {p1, v1}, Lark;->a(Larh;)V

    goto :goto_0
.end method

.method public a(Lard;)Lard;
    .locals 6

    .prologue
    .line 191
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lary;->f:Lapw;

    if-eqz v0, :cond_0

    sget-object v0, Lary;->f:Lapw;

    sget-object v1, Lapw;->Indisponivel:Lapw;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lard;->S()Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    :cond_0
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission from "

    const-string v2, "request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lapw;->Indisponivel:Lapw;

    invoke-virtual {p1, v0}, Lard;->a(Lapw;)V

    .line 199
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 201
    const/4 v1, 0x0

    .line 205
    :try_start_0
    const-string v0, "/chat/reasons/{reason}/permissions?app={app}"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0, p1}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v2

    invoke-virtual {v2}, Larb;->a()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v2, "External App getToken() implementation checkChatPermission return Null or Empty value"

    invoke-direct {v0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    :try_start_1
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "checkChatPermission error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    new-instance v2, Laqd;

    const-string v3, "999"

    const-string v4, "checkChatPermission error"

    invoke-direct {v2, v3, v4, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 274
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 281
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    :goto_1
    throw v0

    .line 215
    :cond_2
    :try_start_4
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkChatPermission getToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v3, Lapz;->GET:Lapz;

    iget v4, p0, Lary;->g:I

    sget-object v5, Lary;->b:Ljava/io/InputStream;

    invoke-static {v0, v3, v2, v4, v5}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 222
    const-string v0, "v"

    const-string v2, "2.1.8"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "CHAT VERSION: 2.1.8"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v1, :cond_7

    .line 226
    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 227
    invoke-direct {p0, v1}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p1, v0}, Lard;->a(I)V

    .line 232
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "checkChatPermission "

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_6

    .line 235
    const-string v0, "status"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lapw;->fromString(Ljava/lang/String;)Lapw;

    move-result-object v3

    invoke-virtual {p1, v3}, Lard;->a(Lapw;)V

    .line 239
    invoke-static {v0}, Lapw;->fromString(Ljava/lang/String;)Lapw;

    move-result-object v0

    sput-object v0, Lary;->f:Lapw;

    .line 241
    invoke-virtual {p1}, Lard;->q()Lapw;

    move-result-object v0

    sget-object v3, Lapw;->Disponivel:Lapw;

    if-eq v0, v3, :cond_3

    .line 242
    invoke-virtual {p1}, Lard;->q()Lapw;

    move-result-object v0

    sget-object v3, Lapw;->Indisponivel:Lapw;

    if-ne v0, v3, :cond_5

    .line 244
    :cond_3
    invoke-virtual {p1}, Lard;->w()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    :goto_2
    if-eqz v1, :cond_4

    .line 274
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 281
    :cond_4
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 295
    :goto_4
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object p1

    .line 248
    :cond_5
    :try_start_7
    const-string v0, "msg"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v3, "title"

    invoke-static {v3, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/String;)V

    .line 251
    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Lard;->b(I)V

    goto :goto_2

    .line 256
    :cond_6
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkChatPermission error server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1, v0}, Lard;->b(I)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server connection failed, status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v1}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->e(Ljava/lang/String;)V

    .line 261
    new-instance v0, Lasc;

    invoke-direct {v0, p0}, Lasc;-><init>(Lary;)V

    goto :goto_2

    .line 264
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "checkChatPermission error httpURLConnection is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 282
    :catch_2
    move-exception v0

    .line 283
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "checkChatPermission error chatBase.getChatSessionToken().refreshTokenTransacao() "

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 275
    :catch_3
    move-exception v1

    .line 276
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "checkChatPermission httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :catch_4
    move-exception v1

    .line 283
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "checkChatPermission error chatBase.getChatSessionToken().refreshTokenTransacao() "

    .line 284
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 288
    :cond_8
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission chatBase.getChatSessionToken() == null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 292
    :cond_9
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "checkChatPermission from "

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lary;->f:Lapw;

    invoke-virtual {p1, v0}, Lard;->a(Lapw;)V

    goto/16 :goto_4
.end method

.method public a(Larj;)Lari;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 1598
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "requestFileToken "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1602
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1611
    :try_start_0
    const-string v0, "/chat/sessions/transcript"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v1, "{\"event\" : \"{event}\", \"fileName\" : \"{fileName}\", \"fileSize\" : \"{fileSize}\" }"

    const-string v2, "{event}"

    sget-object v3, Lapy;->FileTransferRequest:Lapy;

    .line 1615
    invoke-virtual {v3}, Lapy;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{fileName}"

    .line 1616
    invoke-static {}, Lars;->a()Lars;

    move-result-object v3

    .line 1617
    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lars;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1616
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{fileSize}"

    .line 1618
    invoke-static {}, Lars;->a()Lars;

    move-result-object v3

    .line 1619
    invoke-virtual {p1}, Larj;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lars;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1618
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/sessions/transcript"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1624
    invoke-static {}, Lard;->a()Lard;

    move-result-object v2

    invoke-virtual {v2}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1625
    invoke-static {}, Lard;->a()Lard;

    move-result-object v2

    invoke-virtual {v2}, Lard;->E()Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-static {v1, v2}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1628
    sget-object v1, Lapz;->POST:Lapz;

    const/4 v2, 0x0

    iget v3, p0, Lary;->g:I

    sget-object v4, Lary;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1631
    invoke-static {}, Lard;->a()Lard;

    move-result-object v8

    invoke-virtual {v8}, Lard;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1628
    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1633
    if-eqz v1, :cond_3

    .line 1635
    :try_start_1
    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 1637
    invoke-static {v11, v1}, Lase;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 1639
    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFileToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lary;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    .line 1643
    const-string v2, "event"

    const/4 v3, 0x0

    .line 1644
    invoke-static {v2, v0, v3}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1643
    invoke-static {v2}, Lase;->b(Ljava/lang/Object;)Lapy;

    move-result-object v2

    .line 1645
    const-string v3, "fileToken"

    const/4 v4, 0x0

    .line 1646
    invoke-static {v3, v0, v4}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1645
    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    invoke-virtual {p1, v2}, Larj;->a(Lapy;)V

    .line 1649
    new-instance v2, Lari;

    invoke-direct {v2, v0}, Lari;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Larj;->a(Lari;)V

    .line 1653
    const-string v2, "ResponseSignature"

    invoke-static {v1, v2}, Lase;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1656
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFileToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-virtual {p1}, Larj;->p()Lari;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1687
    if-eqz v1, :cond_0

    .line 1689
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1704
    :cond_0
    :goto_0
    return-object v0

    .line 1690
    :catch_0
    move-exception v1

    .line 1691
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1661
    :cond_1
    :try_start_3
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lard;->b(I)V

    .line 1662
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lard;->b(Ljava/lang/String;)V

    .line 1663
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-direct {p0, v1}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lard;->e(Ljava/lang/String;)V

    .line 1664
    const-string v0, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFileToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lard;->a()Lard;

    move-result-object v3

    invoke-virtual {v3}, Lard;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    new-instance v0, Lasc;

    invoke-direct {v0, p0}, Lasc;-><init>(Lary;)V

    .line 1666
    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    .line 1667
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Larh;->a(I)V

    .line 1668
    const-string v2, "Falha ao enviar arquivo"

    invoke-virtual {v0, v2}, Larh;->a(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1, v0}, Larj;->a(Larh;)V

    .line 1670
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->i(Z)V

    .line 1671
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Erro ao solicitar ticket "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1687
    if-eqz v1, :cond_2

    .line 1689
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1702
    :cond_2
    :goto_1
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "requestFileToken "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 1704
    goto/16 :goto_0

    .line 1675
    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "requestFileToken error httpURLConnection is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1678
    :catch_1
    move-exception v0

    .line 1680
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1681
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFileToken error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1682
    new-instance v2, Laqd;

    const-string v3, "999"

    const-string v4, "requestFileToken error"

    invoke-direct {v2, v3, v4, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1687
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 1689
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1692
    :cond_4
    :goto_4
    throw v0

    .line 1690
    :catch_2
    move-exception v0

    .line 1691
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1687
    :cond_5
    if-eqz v1, :cond_2

    .line 1689
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1690
    :catch_3
    move-exception v0

    .line 1691
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1690
    :catch_4
    move-exception v1

    .line 1691
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1699
    :cond_6
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "requestFileToken invalidSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1687
    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_3

    .line 1678
    :catch_5
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    sput-object v0, Lary;->f:Lapw;

    .line 304
    return-void
.end method

.method public a(Larj;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1710
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 1 - downloadFile init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const/4 v1, 0x0

    .line 1714
    invoke-virtual {p1, v2}, Larj;->e(Z)V

    .line 1715
    invoke-virtual {p1, v2}, Larj;->b(Z)V

    .line 1716
    invoke-virtual {p1, v10}, Larj;->g(Z)V

    .line 1717
    invoke-virtual {p1, v10}, Larj;->h(Z)V

    .line 1718
    invoke-virtual {p1, v2}, Larj;->i(Z)V

    .line 1722
    :try_start_0
    const-string v0, "[ChatServiceImpl]"

    const-string v2, "Log 2 - inicio da solicitacao token de arquivo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {p0, p1}, Lary;->a(Larj;)Lari;

    move-result-object v1

    .line 1725
    invoke-virtual {v1}, Lari;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1726
    invoke-virtual {p1, v1}, Larj;->a(Lari;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1737
    :goto_0
    if-eqz v1, :cond_0

    .line 1738
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->j()Ljava/lang/String;

    move-result-object v1

    .line 1739
    const-string v0, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log 3 - downloadFile - chatSessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-static {}, Lars;->a()Lars;

    move-result-object v0

    invoke-virtual {p1}, Larj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-static {}, Lars;->a()Lars;

    move-result-object v2

    invoke-virtual {v2, v0}, Lars;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1743
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log 4 - downloadFile - fileIdReceived  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Larj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log 4 - downloadFile - fileIdDecrypted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const-string v0, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 4 - downloadFile - fileIdEncrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    if-nez p2, :cond_2

    .line 1749
    const-string v0, "/chatfile/sessions/file/{fileToken}"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    :goto_1
    invoke-static {}, Lard;->a()Lard;

    move-result-object v3

    invoke-static {v0, v3}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{fileToken}"

    .line 1755
    invoke-virtual {p1}, Larj;->p()Lari;

    move-result-object v5

    invoke-virtual {v5}, Lari;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1757
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 5 - downloadFile - url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-static {}, Lard;->a()Lard;

    move-result-object v4

    invoke-virtual {v4}, Lard;->E()Ljava/lang/String;

    move-result-object v4

    .line 1760
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 6 - downloadFile - signatureKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Log 7 - downloadFile - signatureParam "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    :try_start_1
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "Log 8 - downloadFile - conexao"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    sget-object v4, Lary;->b:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lash;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 1771
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1773
    iget v4, p0, Lary;->g:I

    if-lez v4, :cond_3

    .line 1774
    iget v4, p0, Lary;->g:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1779
    :goto_2
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "Log 9 - downloadFile - set dos parametros da conexao"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    sget-object v4, Lapz;->GET:Lapz;

    invoke-virtual {v4}, Lapz;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1781
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string v4, "FileId"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v2, "ChatSessionId"

    invoke-virtual {v3, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v1, "RequestSignature"

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1789
    :try_start_2
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 1790
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 10 - downloadFile - httpCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 10 - download - httpMsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 1795
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 11 - 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1798
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "Log 11 - 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {p1}, Larj;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1802
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 - 3"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1806
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1808
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1809
    const/4 v6, 0x0

    .line 1810
    invoke-virtual {p1, v6}, Larj;->a(I)V

    .line 1811
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 1813
    const-string v7, "[ChatServiceImpl]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Log 11 - available to download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :goto_3
    const/4 v7, -0x1

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 1817
    invoke-virtual {p1}, Larj;->l()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1819
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1820
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    .line 1821
    invoke-virtual {p1, v7}, Larj;->a(I)V

    .line 1822
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Larj;->h(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1865
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1866
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1867
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1912
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1920
    :goto_4
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log - downloadFile end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    invoke-virtual {p1, v10}, Larj;->h(Z)V

    .line 1923
    :goto_5
    return-void

    .line 1728
    :cond_1
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1, v0}, Larj;->i(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 1732
    :catch_1
    move-exception v0

    .line 1733
    invoke-virtual {p1, v10}, Larj;->i(Z)V

    .line 1734
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 2 - Ocorreu um erro na requisicao do file token. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1751
    :cond_2
    const-string v0, "/chatfile/sessions/file/thumbnail/{fileToken}"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1776
    :cond_3
    const/16 v4, 0x3a98

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 1915
    :catch_2
    move-exception v0

    .line 1916
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log catch - ProtocolException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1824
    :cond_4
    :try_start_7
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 11 - progresso de download: CANCELADO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1912
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 1917
    :catch_3
    move-exception v0

    .line 1918
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log catch - IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1829
    :cond_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1830
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1831
    const-string v0, "[ChatServiceImpl]"

    const-string v5, "Log 11 - 4"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1834
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1835
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1836
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 - 5"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    new-instance v2, Larw;

    invoke-direct {v2}, Larw;-><init>()V

    invoke-static {}, Lard;->a()Lard;

    move-result-object v4

    invoke-virtual {v4}, Lard;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Larw;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 1839
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 - 6"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1843
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 11 - 7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1846
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1847
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1848
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1850
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Larj;->a(I)V

    .line 1851
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->b(Z)V

    .line 1852
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->h(Z)V

    .line 1861
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->h(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1912
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_4

    .line 1855
    :cond_6
    const/4 v0, 0x1

    :try_start_b
    invoke-virtual {p1, v0}, Larj;->i(Z)V

    .line 1856
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->b(Z)V

    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->g(Z)V

    .line 1858
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 1869
    :catch_4
    move-exception v0

    .line 1870
    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1871
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1872
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1873
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - NoSuchAlgorithmException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1912
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 1875
    :catch_5
    move-exception v0

    .line 1876
    const/4 v1, 0x1

    :try_start_e
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1877
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1878
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1879
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - InvalidKeyException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1912
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 1881
    :catch_6
    move-exception v0

    .line 1882
    const/4 v1, 0x1

    :try_start_10
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1883
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1884
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1885
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - InvalidAlgorithmParameterException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1912
    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_4

    .line 1887
    :catch_7
    move-exception v0

    .line 1888
    const/4 v1, 0x1

    :try_start_12
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1889
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1890
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1891
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - NoSuchPaddingException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1912
    :try_start_13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_4

    .line 1893
    :catch_8
    move-exception v0

    .line 1894
    const/4 v1, 0x1

    :try_start_14
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1895
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1896
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1897
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - BadPaddingException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1912
    :try_start_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_4

    .line 1899
    :catch_9
    move-exception v0

    .line 1900
    const/4 v1, 0x1

    :try_start_16
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1901
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1902
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1903
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - IllegalBlockSizeException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1912
    :try_start_17
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_4

    .line 1905
    :catch_a
    move-exception v0

    .line 1906
    const/4 v1, 0x1

    :try_start_18
    invoke-virtual {p1, v1}, Larj;->i(Z)V

    .line 1907
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->b(Z)V

    .line 1908
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Larj;->g(Z)V

    .line 1909
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "N\u00e3o foi poss\u00edvel efetuar o download do arquivo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadFile - Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1912
    :try_start_19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_19
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
.end method

.method public a(Lark;Z)V
    .locals 3

    .prologue
    .line 1932
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    .line 1933
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lasa;

    invoke-direct {v2, p0, v0, p2}, Lasa;-><init>(Lary;Larj;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1943
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1944
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lary;->i:Lary;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lary;->b()Lary;

    .line 165
    :cond_0
    invoke-static {p1}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_1
    sput-object v0, Lary;->a:Ljava/lang/String;

    .line 175
    sput-object p2, Lary;->b:Ljava/io/InputStream;

    .line 180
    return-void

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "Erro nao foi inicializado uma url de servico de chat valida."

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lard;Lapu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1487
    sget-object v1, Lasb;->a:[I

    invoke-virtual {p2}, Lapu;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1498
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1489
    :pswitch_0
    invoke-virtual {p0, p1}, Lary;->d(Lard;)Z

    goto :goto_0

    .line 1492
    :pswitch_1
    invoke-virtual {p0, p1}, Lary;->e(Lard;)Z

    goto :goto_0

    .line 1495
    :pswitch_2
    invoke-virtual {p0, p1}, Lary;->f(Lard;)V

    goto :goto_0

    .line 1487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Lard;)Lard;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 308
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v3, p0, Lary;->e:I

    .line 314
    iput v3, p0, Lary;->h:I

    .line 318
    :try_start_0
    const-string v0, "/chat/sessions"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0, p1}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->a()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "External App getToken() implementation startChatSession return Null or Empty value"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 456
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 457
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startChatSession error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    new-instance v2, Laqd;

    const-string v3, "999"

    const-string v4, "checkChatPermission error"

    invoke-direct {v2, v3, v4, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 465
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 472
    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 477
    :cond_1
    :goto_3
    throw v0

    .line 328
    :cond_2
    :try_start_4
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startChatSession getToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p1, v1}, Lard;->a(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lars;->a()Lars;

    move-result-object v1

    invoke-virtual {v1}, Lars;->b()Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v2, "{\"app\" : \"{app}\", \"reason\" : \"{reason}\", \"eccClientKey\" : \"{eccClientKey}\"}"

    const-string v3, "{reason}"

    .line 337
    invoke-virtual {p1}, Lard;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{app}"

    .line 338
    invoke-virtual {p1}, Lard;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{eccClientKey}"

    .line 339
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lard;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    sget-object v1, Lapz;->POST:Lapz;

    .line 344
    invoke-virtual {p1}, Lard;->i()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lary;->g:I

    sget-object v4, Lary;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 343
    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 347
    :try_start_5
    const-string v0, "v"

    const-string v2, "2.1.8"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz v1, :cond_9

    .line 351
    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 353
    invoke-static {v11, v1}, Lase;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 355
    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 356
    invoke-direct {p0, v1}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {p1, v0}, Lard;->a(I)V

    .line 361
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "startChatSession "

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v3, 0xc9

    if-ne v0, v3, :cond_8

    .line 366
    invoke-static {}, Lase;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->a(Ljava/util/Date;)V

    .line 369
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->a(Ljava/lang/Integer;)V

    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/Integer;)V

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lard;->b(Z)V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lard;->a(Ljava/util/List;)V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lard;->c(Z)V

    .line 379
    const-string v0, "chatSessionId"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[ChatServiceImpl]"

    invoke-virtual {p1, v0, v3}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "[ChatServiceImpl]"

    const-string v3, "chatSessionId: "

    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v0, "fileTransferEnabled"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lard;->d(Z)V

    .line 385
    const-string v0, "pollingInterval"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lard;->d(I)V

    .line 386
    const-string v0, "pollingTimeout"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lard;->c(I)V

    .line 388
    const-string v0, "urlFeedBackLoop"

    invoke-static {v0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v3, "signatureKey"

    invoke-static {v3, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {p1}, Lard;->G()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    const-string v4, "cryptoKey"

    invoke-static {v4, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 1 - cryptoKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v4}, Lase;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 399
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 2 - cryptoKey isNullorEmpty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lase;->b(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1, v4}, Lard;->g(Ljava/lang/String;)V

    .line 401
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 3 - cryptoKey getFileTransferCryptoKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lard;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_3
    const-string v4, "eccServerKey"

    invoke-static {v4, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 1 - keyPhase2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eccServerKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "keyPhase2 "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 414
    invoke-static {v2}, Lars;->a(Ljava/lang/String;)V

    .line 415
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 3 - keyPhase2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lars;->a()Lars;

    move-result-object v2

    invoke-virtual {p1}, Lard;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lard;->g(Ljava/lang/String;)V

    .line 418
    const-string v2, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log 3.1 - getFileTransferCryptoKey decrypted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lard;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 421
    invoke-static {}, Lars;->a()Lars;

    move-result-object v2

    invoke-virtual {v2, v0}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lard;->i(Ljava/lang/String;)V

    .line 422
    const-string v2, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FEEDBACK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lars;->a()Lars;

    move-result-object v5

    invoke-virtual {v5, v0}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_4
    invoke-virtual {p1}, Lard;->A()I

    move-result v0

    iput v0, p0, Lary;->g:I

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lard;->a(Ljava/lang/String;)V

    .line 434
    invoke-static {v3}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    invoke-static {}, Lars;->a()Lars;

    move-result-object v0

    invoke-virtual {v0, v3}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->f(Ljava/lang/String;)V

    .line 437
    :cond_5
    invoke-virtual {p1}, Lard;->w()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 463
    :goto_4
    if-eqz v1, :cond_6

    .line 465
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 472
    :cond_6
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 473
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 480
    :cond_7
    :goto_6
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-object p1

    .line 441
    :cond_8
    :try_start_8
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startChatSession error server connection failed, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p1, v0}, Lard;->b(I)V

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1, v2}, Lard;->e(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lard;->f(Z)V

    .line 449
    new-instance v0, Lasc;

    invoke-direct {v0, p0}, Lasc;-><init>(Lary;)V

    goto :goto_4

    .line 454
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 452
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "startChatSession error httpURLConnection is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 466
    :catch_2
    move-exception v0

    .line 467
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 474
    :catch_3
    move-exception v0

    .line 475
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() "

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 463
    :cond_a
    if-eqz v1, :cond_b

    .line 465
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 472
    :cond_b
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 473
    invoke-virtual {p1}, Lard;->D()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_6

    .line 474
    :catch_4
    move-exception v0

    .line 475
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() "

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 466
    :catch_5
    move-exception v0

    .line 467
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 466
    :catch_6
    move-exception v1

    .line 467
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatSession httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 474
    :catch_7
    move-exception v1

    .line 475
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() "

    .line 476
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 463
    :catchall_1
    move-exception v0

    move-object v1, v10

    goto/16 :goto_1
.end method

.method public b(Larj;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1948
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 1 - downloadThumbnail init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :try_start_0
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 2 - inicio da solicitacao token de arquivo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-virtual {p0, p1}, Lary;->a(Larj;)Lari;

    move-result-object v0

    .line 1957
    invoke-virtual {v0}, Lari;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1959
    invoke-virtual {p1, v0}, Larj;->a(Lari;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1968
    :goto_0
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    .line 1969
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log 3 - downloadThumbnail - chatSessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-static {}, Lars;->a()Lars;

    move-result-object v1

    invoke-virtual {p1}, Larj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1972
    invoke-static {}, Lars;->a()Lars;

    move-result-object v2

    invoke-virtual {v2, v1}, Lars;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1973
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log 4 - downloadThumbnail - fileIdReceived  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Larj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log 4 - downloadThumbnail - fileIdDecrypted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string v1, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 4 - downloadThumbnail - fileIdEncrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const-string v1, "/chatfile/sessions/file/thumbnail/{fileToken}"

    invoke-static {v1}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1979
    invoke-static {}, Lard;->a()Lard;

    move-result-object v3

    invoke-static {v1, v3}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{fileToken}"

    .line 1980
    invoke-virtual {p1}, Larj;->p()Lari;

    move-result-object v5

    invoke-virtual {v5}, Lari;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1982
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 5 - downloadThumbnail - url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-static {}, Lard;->a()Lard;

    move-result-object v4

    invoke-virtual {v4}, Lard;->E()Ljava/lang/String;

    move-result-object v4

    .line 1985
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log 6 - downloadThumbnail - signatureKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Log 7 - downloadThumbnail - signatureParam "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1994
    :try_start_1
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "Log 8 - downloadThumbnail - conexao"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    sget-object v4, Lary;->b:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lash;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 1996
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1998
    iget v4, p0, Lary;->g:I

    if-lez v4, :cond_1

    .line 1999
    iget v4, p0, Lary;->g:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2004
    :goto_1
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "Log 9 - downloadThumbnail - set dos parametros da conexao"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    sget-object v4, Lapz;->GET:Lapz;

    invoke-virtual {v4}, Lapz;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2006
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const-string v4, "FileId"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string v2, "ChatSessionId"

    invoke-virtual {v3, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string v0, "RequestSignature"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2014
    :try_start_2
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 2015
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 10 - downloadThumbnail - httpCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log 10 - downloadThumbnail - httpMsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 2020
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 11 downloadThumbnail - 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 2023
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "Log 11 downloadThumbnail - 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-virtual {p1}, Larj;->z()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2027
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 downloadThumbnail - 3"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2031
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2033
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 2035
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 2037
    const-string v7, "[ChatServiceImpl]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Log 11 downloadThumbnail - available to download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :goto_2
    const/4 v7, -0x1

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2040
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2041
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    .line 2043
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Larj;->h(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    :try_start_3
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2093
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2104
    :goto_3
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log - downloadThumbnail end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    invoke-virtual {p1, v10}, Larj;->h(Z)V

    .line 2106
    return-void

    .line 1961
    :cond_0
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1, v0}, Larj;->i(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1964
    :catch_1
    move-exception v0

    .line 1965
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log 2 - Ocorreu um erro na requisicao do file token. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2001
    :cond_1
    const/16 v4, 0x3a98

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 2096
    :catch_2
    move-exception v0

    .line 2097
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log downloadThumbnail catch - ProtocolException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2046
    :cond_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2047
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2048
    const-string v0, "[ChatServiceImpl]"

    const-string v5, "Log 11 downloadThumbnail - 4"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2051
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2052
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2053
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 downloadThumbnail - 5"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    new-instance v2, Larw;

    invoke-direct {v2}, Larw;-><init>()V

    invoke-static {}, Lard;->a()Lard;

    move-result-object v4

    invoke-virtual {v4}, Lard;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Larw;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 2056
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Log 11 downloadThumbnail - 6"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2060
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log 11 downloadThumbnail - 7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2063
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2064
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2065
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 2067
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->k(Z)V

    .line 2068
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Larj;->h(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2093
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    .line 2098
    :catch_3
    move-exception v0

    .line 2099
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log downloadThumbnail catch - IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2071
    :cond_3
    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p1, v0}, Larj;->j(Z)V

    .line 2072
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Larj;->k(Z)V

    .line 2073
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "N\u00e3o foi poss\u00edvel efetuar o download do thumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 2078
    :catch_4
    move-exception v0

    .line 2079
    :try_start_a
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - NoSuchAlgorithmException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2093
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    .line 2100
    :catch_5
    move-exception v0

    .line 2101
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "Log downloadThumbnail catch "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2080
    :catch_6
    move-exception v0

    .line 2081
    :try_start_c
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - InvalidKeyException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2093
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    .line 2082
    :catch_7
    move-exception v0

    .line 2083
    :try_start_e
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - InvalidAlgorithmParameterException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2093
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_3

    .line 2084
    :catch_8
    move-exception v0

    .line 2085
    :try_start_10
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - NoSuchPaddingException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2093
    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_3

    .line 2086
    :catch_9
    move-exception v0

    .line 2087
    :try_start_12
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - BadPaddingException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2093
    :try_start_13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_3

    .line 2088
    :catch_a
    move-exception v0

    .line 2089
    :try_start_14
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log - downloadThumbnail - IllegalBlockSizeException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2093
    :try_start_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_3

    .line 2090
    :catch_b
    move-exception v0

    .line 2091
    :try_start_16
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "Log - downloadThumbnail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2093
    :try_start_17
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_17
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
.end method

.method public c(Lard;)Lard;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 488
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatSession "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v8

    .line 491
    invoke-virtual {p1}, Lard;->E()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Lard;->m()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Lard;->n()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lase;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 496
    const-string v4, "[ChatServiceImpl]"

    invoke-virtual {p1, v10, v4}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "endChatSession "

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {v8}, Lase;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 506
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/chat/sessions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {v4, v0}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    const-string v0, "/chat/sessions"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0, v1, v2, v3}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatSession "

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v1, Lapz;->DELETE:Lapz;

    const/4 v2, 0x0

    iget v3, p0, Lary;->g:I

    sget-object v4, Lary;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 519
    if-eqz v0, :cond_2

    .line 521
    :try_start_1
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatSession "

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 523
    invoke-direct {p0, v0}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 527
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "httpCode "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lase;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "endChatSession "

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v3, 0xcc

    if-ne v1, v3, :cond_1

    .line 534
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatSession "

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p1}, Lard;->w()V

    .line 537
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatSession sucess, response code: 204"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    :goto_0
    if-eqz v0, :cond_0

    .line 557
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 567
    :cond_0
    :goto_1
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatSession "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object p1

    .line 539
    :cond_1
    :try_start_3
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "endChatSession "

    const-string v5, "4e"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endChatSession error server connection failed, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p1, v1}, Lard;->b(I)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lard;->b(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v2}, Lard;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    :goto_2
    :try_start_4
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "infra socket ste"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 555
    if-eqz v0, :cond_0

    .line 557
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 558
    :catch_1
    move-exception v0

    .line 559
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    :cond_2
    :try_start_6
    new-instance v1, Laqd;

    const-string v2, "endChatSession error httpURLConnection is null"

    invoke-direct {v1, v2}, Laqd;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 551
    :catch_2
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    .line 552
    :goto_3
    :try_start_7
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endChatSession error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v1, Laqd;

    const-string v2, "999"

    const-string v3, "endChatSession error"

    invoke-direct {v1, v2, v3, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 555
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_3

    .line 557
    :try_start_8
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 560
    :cond_3
    :goto_5
    throw v0

    .line 558
    :catch_3
    move-exception v0

    .line 559
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatSession httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :catch_4
    move-exception v1

    .line 559
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatSession httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 564
    :cond_4
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatSession getSessionChatId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 555
    :catchall_1
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_4

    .line 551
    :catch_5
    move-exception v0

    goto :goto_3

    .line 549
    :catch_6
    move-exception v0

    move-object v0, v10

    goto :goto_2
.end method

.method public d(Lard;)Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 575
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget v0, p0, Lary;->h:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 578
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript "

    const-string v2, "EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 659
    :goto_0
    return v0

    .line 582
    :cond_0
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 588
    :try_start_0
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 590
    const-string v0, "{\"event\" : \"{event}\" }"

    const-string v1, "{event}"

    sget-object v2, Lapu;->TypingStarted:Lapu;

    .line 591
    invoke-virtual {v2}, Lapu;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/sessions/transcript"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p1}, Lard;->E()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v0, v1}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    const-string v0, "/chat/sessions/transcript"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0, p1}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v0

    .line 602
    sget-object v1, Lapz;->POST:Lapz;

    const/4 v2, 0x0

    iget v3, p0, Lary;->g:I

    sget-object v4, Lary;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 604
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 602
    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 606
    :try_start_1
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 608
    invoke-static {v13, v0}, Lase;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 610
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 611
    invoke-direct {p0, v0}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {p1, v1}, Lard;->a(I)V

    .line 616
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "startChatTranscript "

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_2

    .line 626
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatTranscript "

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 646
    if-eqz v0, :cond_1

    .line 648
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move v0, v11

    .line 627
    goto/16 :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 629
    :cond_2
    :try_start_3
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startChatTranscript error server connection failed, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v3, "999"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lard;->b(I)V

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lard;->b(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1, v2}, Lard;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    :goto_2
    if-eqz v0, :cond_3

    .line 648
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 658
    :cond_3
    :goto_3
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 659
    goto/16 :goto_0

    .line 635
    :cond_4
    :try_start_5
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript error chatSessionId cannot be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v0, "999"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lard;->b(I)V

    .line 637
    const-string v0, "startChatTranscript error chatSessionId cannot be null"

    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v12

    goto :goto_2

    .line 649
    :catch_1
    move-exception v0

    .line 650
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 639
    :catch_2
    move-exception v0

    move-object v0, v12

    .line 640
    :goto_4
    :try_start_6
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "infra socket ste"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 646
    if-eqz v0, :cond_3

    .line 648
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 649
    :catch_3
    move-exception v0

    .line 650
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 641
    :catch_4
    move-exception v0

    .line 642
    :goto_5
    :try_start_8
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startChatTranscript error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    new-instance v1, Laqd;

    const-string v2, "999"

    const-string v3, "endChatSession error"

    invoke-direct {v1, v2, v3, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 646
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v12, :cond_5

    .line 648
    :try_start_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 651
    :cond_5
    :goto_7
    throw v0

    .line 649
    :catch_5
    move-exception v1

    .line 650
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "startChatTranscript httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 655
    :cond_6
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "startChatTranscript getSessionChatId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 646
    :catchall_1
    move-exception v1

    move-object v12, v0

    move-object v0, v1

    goto :goto_6

    .line 641
    :catch_6
    move-exception v1

    move-object v12, v0

    move-object v0, v1

    goto :goto_5

    .line 639
    :catch_7
    move-exception v1

    goto :goto_4
.end method

.method public e(Lard;)Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 665
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget v0, p0, Lary;->h:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 668
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript "

    const-string v2, "EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 741
    :goto_0
    return v0

    .line 672
    :cond_0
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 678
    :try_start_0
    const-string v0, "{\"event\" : \"{event}\" }"

    const-string v1, "{event}"

    sget-object v2, Lapu;->TypingStopped:Lapu;

    .line 679
    invoke-virtual {v2}, Lapu;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/sessions/transcript"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 683
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p1}, Lard;->E()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v0, v1}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 686
    const-string v0, "/chat/sessions/transcript"

    invoke-static {v0}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0, p1}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v0

    .line 690
    sget-object v1, Lapz;->POST:Lapz;

    const/4 v2, 0x0

    iget v3, p0, Lary;->g:I

    sget-object v4, Lary;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 692
    invoke-virtual {p1}, Lard;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 690
    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 694
    :try_start_1
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 696
    invoke-static {v13, v0}, Lase;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 698
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 699
    invoke-direct {p0, v0}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-virtual {p1, v1}, Lard;->a(I)V

    .line 704
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "endChatTranscript "

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/16 v3, 0xc9

    if-ne v1, v3, :cond_2

    .line 714
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatTranscript "

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 728
    if-eqz v0, :cond_1

    .line 730
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move v0, v11

    .line 715
    goto/16 :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 717
    :cond_2
    :try_start_3
    const-string v3, "[ChatServiceImpl]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endChatTranscript error server connection failed, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p1, v1}, Lard;->b(I)V

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server connection failed, status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lard;->b(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p1, v2}, Lard;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 728
    if-eqz v0, :cond_3

    .line 730
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 740
    :cond_3
    :goto_2
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 741
    goto/16 :goto_0

    .line 731
    :catch_1
    move-exception v0

    .line 732
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 722
    :catch_2
    move-exception v0

    move-object v0, v12

    .line 723
    :goto_3
    :try_start_5
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "infra socket ste"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 728
    if-eqz v0, :cond_3

    .line 730
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 731
    :catch_3
    move-exception v0

    .line 732
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript httpURLConnection.disconnect();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 724
    :catch_4
    move-exception v0

    .line 725
    :goto_4
    :try_start_7
    const-string v1, "[ChatServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endChatTranscript error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    new-instance v1, Laqd;

    const-string v2, "999"

    const-string v3, "endChatTranscript error"

    invoke-direct {v1, v2, v3, v0}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 728
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v12, :cond_4

    .line 730
    :try_start_8
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 733
    :cond_4
    :goto_6
    throw v0

    .line 731
    :catch_5
    move-exception v1

    .line 732
    const-string v1, "[ChatServiceImpl]"

    const-string v2, "endChatTranscript httpURLConnection.disconnect();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 737
    :cond_5
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "endChatTranscript getSessionChatId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 728
    :catchall_1
    move-exception v1

    move-object v12, v0

    move-object v0, v1

    goto :goto_5

    .line 724
    :catch_6
    move-exception v1

    move-object v12, v0

    move-object v0, v1

    goto :goto_4

    .line 722
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method public f(Lard;)V
    .locals 17

    .prologue
    .line 747
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript "

    const-string v4, "init"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 750
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lase;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lark;

    .line 752
    if-eqz v12, :cond_1

    .line 753
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lark;->g(Z)V

    .line 756
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lary;->h:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 757
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript "

    const-string v4, "EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_1
    return-void

    .line 762
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lark;->f(Z)V

    .line 764
    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 766
    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Larj;->c(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Larj;->h(Z)V

    .line 769
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatTranscript - getFileTransferCryptoKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lard;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lard;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Larj;->b(Ljava/lang/String;)V

    .line 771
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatTranscript - getCryptoKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lark;->l()Larj;

    move-result-object v4

    invoke-virtual {v4}, Larj;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lary;->b(Lark;)V

    goto/16 :goto_0

    .line 779
    :cond_3
    const/4 v13, 0x0

    .line 784
    :try_start_0
    invoke-virtual {v12}, Lark;->d()Ljava/lang/String;

    move-result-object v2

    .line 786
    const-string v3, "{\"event\" : \"{event}\", \"msg\" : \"{msg}\" }"

    const-string v4, "{event}"

    sget-object v5, Lapu;->TextMessageSent:Lapu;

    .line 787
    invoke-virtual {v5}, Lapu;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{msg}"

    .line 790
    invoke-static {}, Lars;->a()Lars;

    move-result-object v5

    .line 791
    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lars;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/sessions/transcript"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-virtual/range {p1 .. p1}, Lard;->E()Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-static {v2, v3}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 800
    const-string v2, "/chat/sessions/transcript"

    invoke-static {v2}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v2

    .line 804
    sget-object v3, Lapz;->POST:Lapz;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lary;->g:I

    sget-object v6, Lary;->b:Ljava/io/InputStream;

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 806
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 804
    invoke-static/range {v2 .. v11}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 808
    :try_start_1
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 810
    invoke-static {v15, v3}, Lase;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 812
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 814
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->a(I)V

    .line 816
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 817
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendChatTranscript - httpData: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/16 v5, 0xc9

    if-ne v2, v5, :cond_8

    .line 820
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendChatTranscript - httpCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lary;->h:I

    .line 825
    invoke-static {v4}, Lase;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 832
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Transcript enviado: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 837
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lark;

    .line 839
    if-eqz v2, :cond_4

    .line 841
    invoke-virtual {v2}, Lark;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lase;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 843
    invoke-static {}, Lars;->a()Lars;

    move-result-object v5

    invoke-virtual {v2}, Lark;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 842
    invoke-virtual {v2, v5}, Lark;->a(Ljava/lang/String;)V

    .line 848
    :cond_5
    invoke-virtual {v2}, Lark;->a()J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Lark;->a(J)V

    .line 849
    invoke-virtual {v2}, Lark;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lark;->c(Ljava/lang/String;)V

    .line 850
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lark;->c(Z)V

    .line 851
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lark;->f(Z)V

    .line 852
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lark;->d(Z)V

    .line 853
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lark;->g(Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 888
    :catch_0
    move-exception v2

    move-object v2, v3

    .line 889
    :goto_3
    :try_start_2
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "infra socket ste"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 901
    if-eqz v2, :cond_0

    .line 903
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 904
    :catch_1
    move-exception v2

    .line 905
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript httpURLConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 857
    :cond_6
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v12, v2}, Lark;->g(Z)V

    .line 859
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "sendChatTranscript "

    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 901
    :cond_7
    :goto_4
    if-eqz v3, :cond_0

    .line 903
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 904
    :catch_2
    move-exception v2

    .line 905
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript httpURLConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 863
    :cond_8
    :try_start_6
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendChatTranscript error server connection failed, status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 864
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lase;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 863
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->b(I)V

    .line 866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server connection failed, status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->b(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->e(Ljava/lang/String;)V

    .line 871
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lark;->h(Z)V

    .line 872
    new-instance v2, Larh;

    invoke-direct {v2}, Larh;-><init>()V

    invoke-virtual {v12, v2}, Lark;->a(Larh;)V

    .line 873
    invoke-virtual {v12}, Lark;->k()Larh;

    move-result-object v2

    const/16 v5, 0x3e7

    invoke-virtual {v2, v5}, Larh;->a(I)V

    .line 874
    invoke-virtual {v12}, Lark;->k()Larh;

    move-result-object v2

    invoke-virtual {v2, v4}, Larh;->b(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v12}, Lark;->k()Larh;

    move-result-object v2

    const-string v4, "Nao foi possivel enviar a mensagem"

    invoke-virtual {v2, v4}, Larh;->a(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lary;->h:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lary;->h:I

    .line 881
    move-object/from16 v0, p0

    iget v2, v0, Lary;->h:I

    const/4 v4, 0x5

    if-le v2, v4, :cond_7

    .line 884
    invoke-direct/range {p0 .. p1}, Lary;->j(Lard;)V

    .line 885
    invoke-virtual/range {p0 .. p1}, Lary;->c(Lard;)Lard;
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 890
    :catch_3
    move-exception v2

    .line 891
    :goto_5
    :try_start_7
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "sendChatTranscript error "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    new-instance v4, Larh;

    invoke-direct {v4}, Larh;-><init>()V

    invoke-virtual {v12, v4}, Lark;->a(Larh;)V

    .line 895
    invoke-virtual {v12}, Lark;->k()Larh;

    move-result-object v4

    const/16 v5, 0x3e7

    invoke-virtual {v4, v5}, Larh;->a(I)V

    .line 896
    invoke-virtual {v12}, Lark;->k()Larh;

    move-result-object v4

    const-string v5, "Nao foi possivel enviar a mensagem"

    invoke-virtual {v4, v5}, Larh;->a(Ljava/lang/String;)V

    .line 899
    new-instance v4, Laqd;

    const-string v5, "999"

    const-string v6, "sendChatTranscript error"

    invoke-direct {v4, v5, v6, v2}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 901
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v3, :cond_9

    .line 903
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 906
    :cond_9
    :goto_7
    throw v2

    .line 904
    :catch_4
    move-exception v3

    .line 905
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "sendChatTranscript httpURLConnection.disconnect();"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 913
    :cond_a
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript getSessionChatId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_b
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "sendChatTranscript "

    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 901
    :catchall_1
    move-exception v2

    move-object v3, v13

    goto :goto_6

    :catchall_2
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_6

    .line 890
    :catch_5
    move-exception v2

    move-object v3, v13

    goto :goto_5

    .line 888
    :catch_6
    move-exception v2

    move-object v2, v13

    goto/16 :goto_3
.end method

.method public g(Lard;)Lard;
    .locals 18

    .prologue
    .line 921
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "receiveChatTranscript "

    const-string v4, "init"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 925
    const/4 v12, 0x0

    .line 931
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    .line 933
    const-string v2, "/chat/sessions/transcript?gt={position}"

    invoke-static {v2}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/sessions/transcript?gt={position}"

    const-string v5, "{position}"

    .line 942
    invoke-virtual/range {p1 .. p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lase;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-virtual/range {p1 .. p1}, Lard;->E()Ljava/lang/String;

    move-result-object v4

    .line 941
    invoke-static {v3, v4}, Lase;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 946
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lase;->a(Ljava/lang/String;Lard;)Ljava/lang/String;

    move-result-object v2

    .line 948
    sget-object v3, Lapz;->GET:Lapz;

    const/4 v4, 0x0

    .line 949
    invoke-virtual/range {p1 .. p1}, Lard;->A()I

    move-result v5

    sget-object v6, Lary;->b:Ljava/io/InputStream;

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 951
    invoke-virtual/range {p1 .. p1}, Lard;->j()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 948
    invoke-static/range {v2 .. v11}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 953
    :try_start_1
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :try_start_2
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v4

    .line 960
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->a(I)V

    .line 962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lary;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 964
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_a

    .line 966
    invoke-static {v2}, Lase;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 968
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 970
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lark;

    .line 972
    if-eqz v2, :cond_0

    .line 975
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 977
    const-string v6, "[ChatServiceImpl]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receiveChatTranscript: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {v2}, Lark;->c()Lapu;

    move-result-object v6

    sget-object v7, Lapu;->FileTransfer:Lapu;

    if-eq v6, v7, :cond_4

    .line 983
    invoke-static {}, Lars;->a()Lars;

    move-result-object v6

    .line 984
    invoke-virtual {v2}, Lark;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 981
    invoke-virtual {v2, v6}, Lark;->a(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->b(Lark;)V

    .line 990
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->a(Lark;)V

    .line 993
    invoke-virtual {v2}, Lark;->b()Laqb;

    move-result-object v6

    sget-object v7, Laqb;->Agent:Laqb;

    if-ne v6, v7, :cond_0

    .line 994
    invoke-virtual {v2}, Lark;->c()Lapu;

    move-result-object v6

    sget-object v7, Lapu;->TextMessageSent:Lapu;

    if-eq v6, v7, :cond_1

    .line 995
    invoke-virtual {v2}, Lark;->c()Lapu;

    move-result-object v6

    sget-object v7, Lapu;->AgentLeft:Lapu;

    if-ne v6, v7, :cond_0

    .line 997
    :cond_1
    const-string v6, "typing stopped manual"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lase;->a(Ljava/lang/String;Larj;)Lark;

    move-result-object v6

    .line 998
    sget-object v7, Laqb;->Agent:Laqb;

    invoke-virtual {v6, v7}, Lark;->a(Laqb;)V

    .line 999
    sget-object v7, Lapu;->TypingStopped:Lapu;

    invoke-virtual {v6, v7}, Lark;->a(Lapu;)V

    .line 1000
    invoke-virtual {v2}, Lark;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lark;->b(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v2}, Lark;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lark;->c(Ljava/lang/String;)V

    .line 1002
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lark;->g(Z)V

    .line 1003
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lard;->a(Lark;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1135
    :catch_0
    move-exception v2

    .line 1139
    :try_start_3
    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(I)V

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server connection failed, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 1142
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lary;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->e(Ljava/lang/String;)V

    .line 1143
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "getResponseCode IOException (check timeout) "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1156
    :goto_2
    if-eqz v3, :cond_2

    .line 1158
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1167
    :cond_2
    :goto_3
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "receiveChatTranscript "

    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-object p1

    .line 937
    :cond_3
    :try_start_5
    const-string v2, "/chat/sessions/transcript?gt={position}"

    invoke-static {v2}, Lary;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto/16 :goto_0

    .line 1008
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Lark;->t()Ljava/lang/String;

    move-result-object v2

    .line 1010
    const-string v6, "event"

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lase;->b(Ljava/lang/Object;)Lapy;

    move-result-object v6

    .line 1012
    sget-object v7, Lapy;->FileTransferRequest:Lapy;

    invoke-virtual {v6, v7}, Lapy;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1014
    const-string v7, "id"

    const/4 v8, 0x1

    invoke-static {v7, v2, v8}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lase;->e(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1015
    const-string v8, "fileName"

    const/4 v9, 0x0

    invoke-static {v8, v2, v9}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1016
    const-string v9, "peerId"

    const/4 v10, 0x0

    invoke-static {v9, v2, v10}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1017
    const-string v10, "nickname"

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1018
    const-string v11, "fileSize"

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1019
    const-string v12, "fileId"

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1020
    const-string v13, "source"

    const/4 v14, 0x0

    invoke-static {v13, v2, v14}, Lase;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lase;->c(Ljava/lang/Object;)Laqb;

    move-result-object v13

    .line 1021
    const-string v14, "[ChatServiceImpl]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Teste - EVENT: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lapy;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v14, "[ChatServiceImpl]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Teste - JSON Transcript: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v2, Larj;

    invoke-direct {v2}, Larj;-><init>()V

    .line 1026
    const-string v14, ""

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lase;->a(Ljava/lang/String;Larj;)Lark;

    move-result-object v14

    .line 1027
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lark;->a(J)V

    .line 1028
    invoke-virtual {v14, v2}, Lark;->a(Larj;)V

    .line 1029
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    invoke-static {}, Lars;->a()Lars;

    move-result-object v7

    invoke-virtual {v7, v8}, Lars;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Larj;->d(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v14, v13}, Lark;->a(Laqb;)V

    .line 1031
    invoke-virtual {v14, v9}, Lark;->c(Ljava/lang/String;)V

    .line 1032
    sget-object v2, Lapu;->FileTransfer:Lapu;

    invoke-virtual {v14, v2}, Lark;->a(Lapu;)V

    .line 1033
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2, v6}, Larj;->a(Lapy;)V

    .line 1034
    invoke-virtual {v14, v10}, Lark;->b(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2, v11}, Larj;->c(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2, v12}, Larj;->a(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1038
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v8

    invoke-virtual {v8}, Larj;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v2, v6}, Larj;->a(Ljava/io/File;)V

    .line 1040
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->c()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Laqr;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1042
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lard;->a()Lard;

    move-result-object v8

    invoke-virtual {v8}, Lard;->x()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v8

    invoke-virtual {v8}, Larj;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Larj;->b(Ljava/io/File;)V

    .line 1043
    invoke-virtual {v14}, Lark;->l()Larj;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lary;->b(Larj;)V

    .line 1044
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lark;->g(Z)V

    .line 1045
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :goto_4
    const-string v2, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Teste - Transcript"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lark;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v2, "[ChatServiceImpl]"

    const-string v6, "receiveChatTranscript - File Not Permitted"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1145
    :catch_1
    move-exception v2

    .line 1146
    :try_start_7
    const-string v4, "[ChatServiceImpl]"

    const-string v5, "getResponseCode Exception "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1149
    :catch_2
    move-exception v2

    .line 1150
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1151
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    new-instance v4, Laqd;

    const-string v5, "999"

    const-string v6, "endChatSession error"

    invoke-direct {v4, v5, v6, v2}, Laqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1156
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v3, :cond_5

    .line 1158
    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1161
    :cond_5
    :goto_7
    throw v2

    .line 1048
    :cond_6
    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v14, v2}, Lark;->g(Z)V

    .line 1049
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1069
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lase;->o(Ljava/util/List;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->a(Ljava/lang/Integer;)V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Lard;->o()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lard;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_9

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lard;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_8

    .line 1080
    invoke-virtual/range {p1 .. p1}, Lard;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->b(Ljava/lang/Integer;)V

    .line 1088
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lard;->w()V

    goto/16 :goto_2

    .line 1083
    :cond_9
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->b(Ljava/lang/Integer;)V

    goto :goto_8

    .line 1093
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lary;->e:I

    const/16 v6, 0x96

    if-gt v5, v6, :cond_c

    .line 1095
    const/16 v5, 0x194

    if-ne v4, v5, :cond_b

    .line 1096
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receiveChatTranscript error server connection failed, status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(I)V

    .line 1098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server connection failed, status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 1099
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript error server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->e(Ljava/lang/String;)V

    .line 1101
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Disconnect manual from client"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-direct/range {p0 .. p1}, Lary;->j(Lard;)V

    goto/16 :goto_2

    .line 1105
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lary;->e:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lary;->e:I

    .line 1106
    const-string v2, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Monitor error count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lary;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v2, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript error server connection failed, status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1110
    :cond_c
    const/16 v5, 0x191

    if-ne v4, v5, :cond_d

    .line 1111
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Disconnect manual from client"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct/range {p0 .. p1}, Lary;->j(Lard;)V

    .line 1113
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Atingiu o limite maximo de erro no receiveChatTranscript >= 150"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receiveChatTranscript error server connection failed, status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(I)V

    .line 1116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server connection failed, status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 1117
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript error server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->e(Ljava/lang/String;)V

    .line 1130
    :goto_9
    invoke-direct/range {p0 .. p1}, Lary;->j(Lard;)V

    goto/16 :goto_2

    .line 1120
    :cond_d
    const-string v5, "[ChatServiceImpl]"

    const-string v6, "Atingiu o limite maximo de erro no receiveChatTranscript >= 150"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v5, "[ChatServiceImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receiveChatTranscript error server connection failed, status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(I)V

    .line 1123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server connection failed, status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 1124
    const-string v4, "[ChatServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveChatTranscript error server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lard;->e(Ljava/lang/String;)V

    .line 1126
    const-string v2, "[ChatServiceImpl]"

    const-string v4, "Disconnect manual from client"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-direct/range {p0 .. p1}, Lary;->j(Lard;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 1159
    :catch_3
    move-exception v2

    .line 1160
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "receiveChatTranscript httpURLConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1156
    :cond_e
    if-eqz v3, :cond_2

    .line 1158
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 1159
    :catch_4
    move-exception v2

    .line 1160
    const-string v2, "[ChatServiceImpl]"

    const-string v3, "receiveChatTranscript httpURLConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1159
    :catch_5
    move-exception v3

    .line 1160
    const-string v3, "[ChatServiceImpl]"

    const-string v4, "receiveChatTranscript httpURLConnection.disconnect();"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1156
    :catchall_1
    move-exception v2

    move-object v3, v12

    goto/16 :goto_6

    .line 1149
    :catch_6
    move-exception v2

    move-object v3, v12

    goto/16 :goto_5
.end method

.method public h(Lard;)Lard;
    .locals 3

    .prologue
    .line 1457
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "sendFile "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    if-eqz p1, :cond_1

    .line 1461
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {p1}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1465
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "Log 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {p1}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larj;

    .line 1470
    invoke-direct {p0, v0}, Lary;->c(Larj;)V

    goto :goto_0

    .line 1474
    :cond_0
    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Lard;->b(I)V

    .line 1475
    const-string v0, "N\u00e3o existe arquivo para ser enviado."

    invoke-virtual {p1, v0}, Lard;->b(Ljava/lang/String;)V

    .line 1479
    :cond_1
    const-string v0, "[ChatServiceImpl]"

    const-string v1, "sendFile "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-object p1
.end method

.method public i(Lard;)V
    .locals 0

    .prologue
    .line 2111
    return-void
.end method
