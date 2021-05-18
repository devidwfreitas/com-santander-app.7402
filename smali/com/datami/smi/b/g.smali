.class public final Lcom/datami/smi/b/g;
.super Ljava/lang/Thread;


# static fields
.field private static final g:Ljava/lang/String; = "[dmi]AuthThread"

.field private static final h:[B

.field private static i:I


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Z

.field f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/g;->h:[B

    const/16 v0, 0x2b

    sput v0, Lcom/datami/smi/b/g;->i:I

    return-void

    :array_0
    .array-data 1
        0x10t
        -0x7at
        0x6ft
        -0x6et
        0x9t
        -0x4t
        0x7t
        0xat
        0x2t
        0xet
        0x4et
        -0x40t
        0x9t
        -0x8t
        0x3at
        -0x28t
        0x7t
        0x24t
        0x16t
        0xat
        -0x2dt
        0x8t
        0x13t
        0x47t
        0x6t
        0x10t
        -0x3ft
        0xct
        -0x1t
        0x4t
        0xet
        0x8t
        0x31t
        0x21t
        0xet
        0x2t
        0x5t
        0xct
        0x7t
        0x8t
        0x4t
        0x5t
        0x16t
        0x8t
        0x4bt
        -0x3at
        -0x6t
        0x11t
        -0x7t
        0xat
        0xdt
        0xct
        0x4bt
        -0x4ft
        0x18t
        -0x6t
        0x6t
        0x11t
        0x1t
        0x8t
        -0x2t
        -0x2t
        0xbt
        0x13t
        0x23t
        -0x2dt
        0x8t
        0x13t
        0x1bt
        -0xdt
        -0x3t
        0x14t
        0xbt
        0x4t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/datami/smi/b/g;->d:I

    iput-object p1, p0, Lcom/datami/smi/b/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/b/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/datami/smi/b/g;->c:Ljava/lang/String;

    iput p4, p0, Lcom/datami/smi/b/g;->d:I

    iput-boolean p5, p0, Lcom/datami/smi/b/g;->e:Z

    iput-object p6, p0, Lcom/datami/smi/b/g;->f:Ljava/util/List;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    mul-int/lit8 v0, p0, 0x2

    rsub-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v0, p2, 0x4

    rsub-int/lit8 v3, v0, 0x1f

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x5b

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/datami/smi/b/g;->h:[B

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v7, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/16 v7, 0x3a

    const/16 v6, 0x1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/datami/smi/b/g;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/datami/smi/SdStateChangeListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/datami/smi/SmiResult;

    invoke-direct {v1}, Lcom/datami/smi/SmiResult;-><init>()V

    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v1, v0}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    invoke-virtual {v1, v0}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    iget-object v0, p0, Lcom/datami/smi/b/g;->a:Landroid/content/Context;

    check-cast v0, Lcom/datami/smi/SdStateChangeListener;

    invoke-interface {v0, v1}, Lcom/datami/smi/SdStateChangeListener;->onChange(Lcom/datami/smi/SmiResult;)V

    :cond_0
    sget-object v0, Lcom/datami/smi/b/g;->h:[B

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/smi/b/g;->h:[B

    aget-byte v1, v1, v6

    invoke-static {v0, v0, v1}, Lcom/datami/smi/b/g;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/g;->h:[B

    const/16 v2, 0x32

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/g;->h:[B

    aget-byte v2, v2, v7

    invoke-static {v1, v1, v2}, Lcom/datami/smi/b/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/b/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/datami/smi/b/g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/datami/smi/b/g;->a:Landroid/content/Context;

    iget v3, p0, Lcom/datami/smi/b/g;->d:I

    iget-boolean v4, p0, Lcom/datami/smi/b/g;->e:Z

    iget-object v5, p0, Lcom/datami/smi/b/g;->f:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/datami/smi/SmiIntentService;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/util/List;)V

    iget-object v0, p0, Lcom/datami/smi/b/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/b/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/datami/smi/b/m;->v()V

    sget-object v0, Lcom/datami/smi/b/g;->h:[B

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/smi/b/g;->h:[B

    aget-byte v1, v1, v6

    invoke-static {v0, v0, v1}, Lcom/datami/smi/b/g;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/g;->h:[B

    const/16 v1, 0x44

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/b/g;->h:[B

    aget-byte v1, v1, v6

    add-int/lit8 v2, v1, -0x4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/g;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
