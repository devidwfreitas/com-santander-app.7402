.class public final Lcom/datami/smi/g/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:Ljava/lang/String;

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:I

.field private static h:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static i:Lorg/apache/http/conn/ClientConnectionManager;

.field private static j:Lorg/apache/http/params/HttpParams;

.field private static k:Ljava/lang/String;

.field private static final l:[B

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xdd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/g/c;->l:[B

    const/16 v0, 0x9e

    sput v0, Lcom/datami/smi/g/c;->m:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/datami/smi/g/c;->a:Z

    const/16 v0, 0x1e

    sput v0, Lcom/datami/smi/g/c;->b:I

    sget v0, Lcom/datami/smi/g/c;->m:I

    and-int/lit8 v0, v0, 0x70

    sget-object v1, Lcom/datami/smi/g/c;->l:[B

    const/16 v2, 0x21

    aget-byte v1, v1, v2

    invoke-static {v0, v0, v1}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    const/16 v0, 0xc8

    sput v0, Lcom/datami/smi/g/c;->d:I

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/datami/smi/g/c;->f:I

    const/16 v0, 0x1bb

    sput v0, Lcom/datami/smi/g/c;->g:I

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        -0x5dt
        0x78t
        0x1at
        -0x22t
        0x0t
        -0x2t
        -0xbt
        -0x4t
        0x47t
        -0x18t
        -0x29t
        0xbt
        -0xct
        0xbt
        -0x5t
        -0x5t
        0x7t
        -0x2ct
        0x1t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x47t
        -0x18t
        -0x29t
        0xbt
        -0xct
        0xbt
        -0x5t
        -0x5t
        0x7t
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x48t
        0x0t
        0xct
        0x5t
        0xet
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        0x45t
        -0x54t
        0x5t
        0x4t
        0x6t
        -0x9t
        0x4et
        -0x49t
        -0xat
        0x53t
        -0x4et
        -0x7t
        0x9t
        0x0t
        0xdt
        -0xct
        0xdt
        -0xet
        0xft
        -0xet
        -0x1t
        -0x2ct
        0x1t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x47t
        -0x47t
        -0x5t
        0x9t
        0xbt
        -0xct
        0x0t
        0x4t
        -0x2t
        0x9t
        -0xdt
        0x15t
        -0x13t
        0xft
        -0x2t
        0x3t
        0xbt
        -0x11t
        0x12t
        -0x11t
        0xbt
        -0x6t
        0x1t
        0x6t
        0x4t
        -0xat
        0xft
        -0x7t
        0x3et
        -0x34t
        -0xdt
        0xat
        -0xet
        0x3t
        0x6t
        0x5t
        0x5t
        0x2et
        0x3t
        -0xbt
        0xbt
        -0xbt
        0xat
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x34t
        -0xft
        0x0t
        -0xct
        0x0t
        0x4t
        -0x3t
        -0xft
        0x0t
        0x4t
        0x3t
        0x6t
        0x2t
        -0x13t
        0xbt
        -0x6t
        0x1t
        0x3ft
        -0x3bt
        -0x9t
        0x4t
        0x1t
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x46t
        0xet
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        0x38t
        -0x47t
        0x5t
        0x4t
        0x6t
        -0x9t
        -0x13t
        0x11t
        -0x7t
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x36t
        -0xct
        0xbt
        -0x1t
        0x38t
        -0x43t
        0xft
        -0x13t
        0xct
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x34t
        -0xft
        0x7t
        0x3ct
        -0x3et
        0x6t
        -0x14t
        -0x22t
        0x0t
        -0x2t
        -0xbt
        -0x4t
        0x1t
        0xet
        0x19t
        -0xbt
        -0x1et
        -0x2t
        -0x5t
        0x3t
        0x38t
        -0x16t
        -0x2ct
        0x1t
        -0x6t
        0x2t
        0x3t
        0x3t
        0x4bt
        -0x37t
        -0x9t
        0x4t
        0x3ct
        -0x46t
        0xft
        -0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/datami/smi/g/c;->d:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v2, p1, 0x15

    add-int/lit8 v3, p2, 0xa

    rsub-int v0, p0, 0xd4

    sget-object v8, Lcom/datami/smi/g/c;->l:[B

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v1, v0

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xb4

    sget-object v3, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0xbf

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0x25

    invoke-static {v2, v3, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/datami/smi/g/c;->a:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x97

    sget-object v3, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    const/16 v2, 0x97

    sget-object v3, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd1

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0xbf

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0xc8

    sput v2, Lcom/datami/smi/g/c;->d:I

    const-string v2, ""

    sput-object v2, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/datami/smi/g/c;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/datami/smi/g/c;->i:Lorg/apache/http/conn/ClientConnectionManager;

    sget-object v4, Lcom/datami/smi/g/c;->j:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    if-nez p4, :cond_1

    new-instance v3, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;

    sget-object v4, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/datami/smi/g/c;->m:I

    and-int/lit16 v4, v4, 0x3f0

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x3c

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x30

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x39

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x29

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x52

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x28

    aget-byte v4, v4, v5

    add-int/lit8 v5, v4, -0x4

    or-int/lit8 v6, v5, 0x31

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/datami/smi/g/c;->m:I

    and-int/lit16 v5, v5, 0x3e3

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x2a

    aget-byte v6, v6, v7

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x5f

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x28

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x62

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x93

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0xa4

    aget-byte v5, v5, v6

    const/16 v6, 0x6a

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/c/t;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const/16 v1, 0xab

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x69

    invoke-static {v1, v2, v3}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    const v1, 0x186ac

    sput v1, Lcom/datami/smi/g/c;->d:I

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xb4

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0xc

    aget-byte v6, v6, v7

    const/16 v7, 0x6e

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v5, 0x7c

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0xc

    aget-byte v6, v6, v7

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0}, Lcom/datami/smi/SmiIntentService;->getSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    :cond_4
    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v7, v6, 0x2

    or-int/lit8 v8, v7, 0x66

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x30

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0x87

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x6c

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x70

    aget-byte v4, v4, v6

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x68

    invoke-static {v4, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x28

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x62

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x73

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x69

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    sget-object v4, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v6

    array-length v4, v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_9

    move p3, v1

    :cond_5
    :goto_0
    if-nez p3, :cond_6

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x56

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x15

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x22

    aget-byte v6, v6, v7

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x39

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x29

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x52

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/entity/StringEntity;

    sget-object v5, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-direct {v4, p2, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_6
    invoke-static {v2, v3}, Lcom/ca/android/app/CaMDOHTTPClient;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    const/16 v2, 0xc3

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x29

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_d

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    sget-object v8, Lcom/datami/smi/g/c;->l:[B

    const/16 v9, 0xa4

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/g/c;->l:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    neg-int v9, v9

    invoke-static {v7, v8, v9}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v0, :cond_b

    sget-object v0, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-boolean v1, Lcom/datami/smi/g/c;->a:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x95

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v2, v2, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v2, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x95

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v2, v2, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v2, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd1

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0xbf

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    invoke-static {v2, v4, v5}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sput v1, Lcom/datami/smi/g/c;->d:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    :cond_8
    return-object v0

    :cond_9
    const/16 v4, 0xd1

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0x22

    aget-byte v7, v7, v8

    neg-int v7, v7

    invoke-static {v4, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x32

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0xa4

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/g/c;->l:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc3

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x29

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0x9d

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x32

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0xa4

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/g/c;->l:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const v1, 0x186ab

    sput v1, Lcom/datami/smi/g/c;->d:I

    throw v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_b
    :try_start_2
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    throw v0

    :cond_c
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    :try_start_0
    sput v2, Lcom/datami/smi/g/c;->d:I

    const-string v2, ""

    sput-object v2, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/datami/smi/g/c;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/datami/smi/g/c;->i:Lorg/apache/http/conn/ClientConnectionManager;

    sget-object v4, Lcom/datami/smi/g/c;->j:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    if-nez p2, :cond_0

    new-instance v3, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;

    sget-object v4, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/datami/smi/g/c;->m:I

    and-int/lit16 v4, v4, 0x3f0

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x3c

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x30

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x39

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x29

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x52

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x28

    aget-byte v4, v4, v5

    add-int/lit8 v5, v4, -0x4

    or-int/lit8 v6, v5, 0x31

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/datami/smi/g/c;->m:I

    and-int/lit16 v5, v5, 0x3e3

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x2a

    aget-byte v6, v6, v7

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x5f

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x28

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x62

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x93

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0xa4

    aget-byte v5, v5, v6

    const/16 v6, 0x6a

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/c/t;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const/16 v1, 0xab

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x69

    invoke-static {v1, v2, v3}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xb4

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0xc

    aget-byte v6, v6, v7

    const/16 v7, 0x6e

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v5, 0x7c

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0xc

    aget-byte v6, v6, v7

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/datami/smi/SmiIntentService;->getSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    :cond_3
    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v7, v6, 0x2

    or-int/lit8 v8, v7, 0x66

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/datami/smi/g/c;->k:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x30

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/16 v8, 0x87

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x6c

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x70

    aget-byte v4, v4, v6

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x68

    invoke-static {v4, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x28

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x62

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x73

    sget-object v7, Lcom/datami/smi/g/c;->l:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x69

    invoke-static {v6, v7, v8}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x56

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x15

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x22

    aget-byte v6, v6, v7

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x39

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/g/c;->l:[B

    const/16 v7, 0x29

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x52

    invoke-static {v5, v6, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/ca/android/app/CaMDOHTTPClient;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    const/16 v2, 0xc3

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x29

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    sget-object v8, Lcom/datami/smi/g/c;->l:[B

    const/16 v9, 0xa4

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/g/c;->l:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    neg-int v9, v9

    invoke-static {v7, v8, v9}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v0, :cond_7

    sget-object v0, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-boolean v1, Lcom/datami/smi/g/c;->a:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x95

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v2, v2, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v2, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x95

    sget-object v2, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0x5d

    aget-byte v2, v2, v4

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0x26

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v2, v4}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd1

    sget-object v4, Lcom/datami/smi/g/c;->l:[B

    const/16 v5, 0xbf

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    invoke-static {v2, v4, v5}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sput v1, Lcom/datami/smi/g/c;->d:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    :cond_5
    return-object v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/datami/smi/g/c;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x50

    const/16 v9, 0x10

    const/4 v0, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x5e

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/16 v4, 0x85

    sget-object v5, Lcom/datami/smi/g/c;->l:[B

    const/16 v6, 0xa4

    aget-byte v5, v5, v6

    invoke-static {v4, v5, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v8, :cond_4

    sget v2, Lcom/datami/smi/g/c;->f:I

    if-eq v2, v10, :cond_4

    sput v10, Lcom/datami/smi/g/c;->f:I

    :goto_0
    sget-object v1, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v0, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v2, 0x85

    sget-object v3, Lcom/datami/smi/g/c;->l:[B

    const/16 v4, 0xa4

    aget-byte v3, v3, v4

    invoke-static {v2, v3, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    sget v4, Lcom/datami/smi/g/c;->f:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    sget-object v0, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v2, 0x57

    invoke-static {v2, v9, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/datami/smi/g/a;

    invoke-direct {v3}, Lcom/datami/smi/g/a;-><init>()V

    sget v4, Lcom/datami/smi/g/c;->g:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/datami/smi/g/c;->j:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/datami/smi/g/c;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/datami/smi/g/c;->i:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/g/c;->i:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v1, Lcom/datami/smi/g/c;->j:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lcom/datami/smi/g/c;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v0, Lcom/datami/smi/g/c;->i:Lorg/apache/http/conn/ClientConnectionManager;

    :cond_2
    return-void

    :cond_3
    const/16 v4, 0x57

    invoke-static {v4, v9, v7}, Lcom/datami/smi/g/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v2, v8, :cond_4

    sget v2, Lcom/datami/smi/g/c;->g:I

    const/16 v3, 0x1bb

    if-eq v2, v3, :cond_4

    const/16 v1, 0x1bb

    sput v1, Lcom/datami/smi/g/c;->g:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/g/c;->e:Ljava/lang/String;

    return-object v0
.end method
