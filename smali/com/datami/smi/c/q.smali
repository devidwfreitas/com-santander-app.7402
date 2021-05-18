.class public final Lcom/datami/smi/c/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]MsisdnDiscovery"

.field private static final f:[B

.field private static g:I


# instance fields
.field private b:Z

.field private c:Lcom/datami/smi/c/p;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/q;->f:[B

    const/16 v0, 0x49

    sput v0, Lcom/datami/smi/c/q;->g:I

    return-void

    :array_0
    .array-data 1
        0x17t
        0x23t
        0x64t
        -0x4t
        -0x10t
        -0x1t
        0x26t
        -0x1ct
        -0x3t
        0x2t
        0xat
        -0x12t
        0x11t
        -0x12t
        0xat
        -0x7t
        0x0t
        0x5t
        0x3t
        -0xbt
        0xet
        -0x8t
        0x3dt
        -0x35t
        -0xet
        0x9t
        -0xft
        0x2t
        0x5t
        0x4t
        0x4t
        0x2dt
        0x2t
        -0xct
        0xat
        -0xct
        0x9t
        0x4at
        -0x38t
        -0xat
        0x3t
        0x3bt
        -0x35t
        -0x10t
        -0x1t
        0x2t
        0x10t
        -0xdt
        0xdt
        -0x3t
        -0x10t
        0x6t
        0x9t
        -0x15t
        -0x3t
        0xet
        -0x1t
        -0x4t
        -0x10t
        0x4at
        -0x38t
        -0xat
        0x3t
        0x3bt
        -0x47t
        0xdt
        -0xet
        -0x5t
        0xct
        0x5t
        -0x3t
        0x37t
        -0x48t
        0x4t
        0x3t
        0x5t
        -0xat
        0x6t
        -0x13t
        0xat
        0x2t
        0x0t
        0x4t
        -0x17t
        0xbt
        0x4t
        0x29t
        0x4at
        -0x38t
        -0xat
        0x3t
        0x3bt
        -0x37t
        -0xdt
        0xat
        -0x2t
        0x37t
        -0x44t
        0xet
        -0x14t
        0xbt
        0x4at
        -0x38t
        -0xat
        0x3t
        0x3bt
        -0x35t
        -0x10t
        0x6t
        0x3bt
        -0x3ft
        0x5t
        -0x15t
        -0x13t
        -0xet
        -0x5t
        0xct
        0x5t
        -0x3t
        0x44t
        -0x55t
        0x4t
        0x3t
        0x5t
        -0xat
        0x4dt
        -0x4at
        -0xbt
        0x52t
        -0x26t
        -0x29t
        -0x4t
        -0x5t
        -0x6t
        0x58t
        0x0t
        0xdt
        0x18t
        -0xct
        -0x34t
        0x14t
        -0x3t
        -0xct
        -0x5t
        0xat
        -0x7t
        0x0t
        0x4dt
        -0x58t
        0xet
        -0x2t
        -0x4t
        0x6t
        0x44t
        -0x44t
        -0x10t
        0xct
        0x3t
        -0x14t
        0xat
        -0x6t
        0x6t
        0x46t
        -0x46t
        -0xat
        0xat
        -0xdt
        0xat
        -0x2t
        0x0t
        0x43t
        -0x55t
        0xat
        -0x5t
        0x7t
        0x44t
        -0x45t
        -0x6t
        -0xbt
        0xft
        -0xdt
        -0x8t
        0x10t
        -0xet
        -0x8t
        0x58t
        -0x56t
        0x2t
        0x5t
        0x4bt
        -0xat
        -0xat
        0x3t
        0xbt
        0xft
        -0x27t
        0x9t
        -0xbt
        0xet
        -0xbt
        0x29t
        -0x26t
        -0xbt
        0xft
        -0xdt
        -0x8t
        0x10t
        -0xet
        -0x8t
        -0x3bt
        0xbt
        0x4t
        0x29t
        0xbt
        0x4t
        0x29t
        0x4at
        -0x38t
        -0xat
        0x3t
        0x3bt
        -0x47t
        0xet
        -0x8t
        -0x48t
        0x45t
        0x0t
        -0x47t
        -0x1t
        0xbt
        0x4t
        0x34t
        -0x48t
        0x14t
        -0xct
        0x2t
        0x4t
        0x2t
        -0x14t
        0xet
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/datami/smi/c/p;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/datami/smi/c/q;->b:Z

    iput-object p3, p0, Lcom/datami/smi/c/q;->c:Lcom/datami/smi/c/p;

    iput p4, p0, Lcom/datami/smi/c/q;->d:I

    invoke-direct {p0, p2}, Lcom/datami/smi/c/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/q;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    rsub-int/lit8 v3, p1, 0x78

    add-int/lit8 v0, p2, 0x4

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v2, p0, 0x34

    sget-object v8, Lcom/datami/smi/c/q;->f:[B

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x1d

    const/16 v10, 0x10

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, ""

    sget-object v2, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/datami/smi/c/t;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v1, 0x20

    const/16 v2, 0x1d

    const/16 v3, 0xb9

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x6c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0xc3

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x10

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x60

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/datami/smi/SmiIntentService;->getSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/4 v6, 0x6

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x10

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/16 v8, 0x80

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x56

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x15

    aget-byte v6, v6, v7

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/16 v8, 0x12

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2b

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x10

    aget-byte v6, v6, v7

    or-int/lit16 v7, v6, 0xd3

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x1f

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/16 v8, 0x11

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/c/q;->f:[B

    const/16 v9, 0x44

    aget-byte v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2b

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x10

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x20

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0xe7

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x16

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/datami/smi/c/q;->c:Lcom/datami/smi/c/p;

    sget-object v5, Lcom/datami/smi/c/p;->c:Lcom/datami/smi/c/p;

    if-ne v1, v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x56

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/16 v8, 0x48

    aget-byte v7, v7, v8

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2f

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0xe7

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x16

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0xe7

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x16

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x21

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x10

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x36

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0xe7

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x16

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    const/16 v4, 0xe7

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0x16

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    invoke-static {v2, v4, v5}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    const/4 v4, 0x6

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0x12

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x56

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    const/16 v4, 0xe7

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    const/16 v5, 0x16

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    invoke-static {v2, v4, v5}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    sget v4, Lcom/datami/smi/c/q;->g:I

    or-int/lit16 v5, v4, 0x92

    invoke-static {v2, v4, v5}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x82

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/datami/smi/c/q;->c:Lcom/datami/smi/c/p;

    sget-object v5, Lcom/datami/smi/c/p;->b:Lcom/datami/smi/c/p;

    if-ne v1, v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0x56

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/16 v8, 0x48

    aget-byte v7, v7, v8

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x2f

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    const/16 v7, 0xcc

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x12

    aget-byte v6, v6, v7

    const/16 v7, 0xd0

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/smi/c/q;->f:[B

    const/16 v6, 0xe7

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/c/q;->f:[B

    const/16 v7, 0x16

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/q;->f:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const/16 v2, 0x20

    const/16 v3, 0xb9

    invoke-static {v2, v11, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    aget-byte v4, v4, v10

    or-int/lit8 v5, v4, 0x33

    const/16 v6, 0x86

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v1

    const/16 v2, 0x20

    const/16 v3, 0xb9

    invoke-static {v2, v11, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/c/q;->f:[B

    aget-byte v4, v4, v10

    or-int/lit8 v5, v4, 0x33

    const/16 v6, 0x86

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private c()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x48

    const/16 v3, 0x2e

    const/16 v6, 0xe7

    const/4 v5, 0x5

    const/16 v4, 0x16

    iget-object v0, p0, Lcom/datami/smi/c/q;->c:Lcom/datami/smi/c/p;

    sget-object v1, Lcom/datami/smi/c/p;->c:Lcom/datami/smi/c/p;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/q;->f:[B

    const/16 v2, 0x56

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/q;->f:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/c/q;->c:Lcom/datami/smi/c/p;

    sget-object v1, Lcom/datami/smi/c/p;->b:Lcom/datami/smi/c/p;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/q;->f:[B

    const/16 v2, 0x56

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v4

    const/16 v3, 0xcc

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/q;->f:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    const/16 v3, 0x12

    aget-byte v2, v2, v3

    const/16 v3, 0xd0

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/q;->f:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/q;->f:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/c/q;->f:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/q;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/c/q;->d:I

    return v0
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/q;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/q;->e:Ljava/lang/String;

    return-object v0
.end method
