.class public Lfiu;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "https://mbb.paas.isbanbr.dev.corp/"

.field private static final e:Ljava/lang/String; = "https://mbb.paas.santanderbr.pre.corp/"

.field private static final f:Ljava/lang/String; = "transfer/v1/listAllBanks"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/widget/TextView;

.field private c:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 50
    iput-object v0, p0, Lfiu;->a:Landroid/app/Activity;

    .line 51
    iput-object v0, p0, Lfiu;->b:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lfiv;

    invoke-direct {v0, p0}, Lfiv;-><init>(Lfiu;)V

    iput-object v0, p0, Lfiu;->c:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 283
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lfiu;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfiu;->c:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic b(Lfiu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lfiu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 294
    :try_start_0
    new-instance v0, Liq;

    invoke-direct {v0}, Liq;-><init>()V

    .line 295
    const-string v1, "payment/v1/checkBarcode"

    invoke-virtual {v0, v1}, Liq;->a(Ljava/lang/String;)V

    .line 296
    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Liq;->a(Lim;)V

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 299
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v2, "accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v2, "x-uid"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v2, "x-authorization-token"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 307
    const-string v3, "barcode"

    const-string v4, "846200000004399002962013710100550007001230742650"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    invoke-virtual {v0, v1}, Liq;->a(Lorg/json/JSONObject;)V

    .line 310
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liq;->a(Ljava/lang/Object;)V

    .line 311
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Liq;->a(Ljava/lang/Boolean;)V

    .line 312
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Lfiw;

    invoke-direct {v2, p0}, Lfiw;-><init>(Lfiu;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "ERROR_PAAS"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lfiu;->setContentView(I)V

    .line 71
    iput-object p0, p0, Lfiu;->a:Landroid/app/Activity;

    .line 72
    const v0, 0x7f1003c7

    invoke-virtual {p0, v0}, Lfiu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfiu;->b:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0}, Lfiu;->b()V

    .line 78
    return-void
.end method
