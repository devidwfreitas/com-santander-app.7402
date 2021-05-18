.class final Lcom/datami/smi/c/s;
.super Ljava/util/TimerTask;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/smi/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/s;->b:[B

    const/16 v0, 0x40

    sput v0, Lcom/datami/smi/c/s;->c:I

    return-void

    :array_0
    .array-data 1
        0x42t
        -0x52t
        0x4at
        -0x74t
        -0x9t
        0x6t
        -0x2t
        -0xat
        0x1ct
        -0xft
        0xbt
        -0x5t
        0x4t
        -0x8t
        -0x48t
        0x43t
        0x0t
        0xet
        -0x10t
        -0x3t
        0x10t
        -0xct
        0x5t
        -0x2t
        -0x4ft
        0x45t
        -0x6t
        0x7t
        0x2t
        -0x8t
        -0x2t
        -0x45t
        0x0t
        -0x1t
        -0x1t
        0x1ct
        -0xft
        0xbt
        -0x5t
        0x4t
        -0x8t
        -0x14t
        0x14t
        0x3t
        -0x9t
        0xct
        -0x1ft
        0xct
        0x11t
        -0x9t
        -0x4ct
        0x53t
        -0xct
        0x3t
        -0x9t
        0xct
        -0x53t
        0x45t
        0x2t
        0x8t
        -0xet
        -0x2t
        -0x44t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/s;->a:Lcom/datami/smi/c/r;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    sget-object v7, Lcom/datami/smi/c/s;->b:[B

    new-instance v8, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x1e

    add-int/lit8 v3, v0, 0x52

    add-int/lit8 v2, p0, 0x5

    add-int/lit8 v0, p2, 0x4

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v7, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v4, v1

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x21

    const/16 v4, 0x10

    const/16 v0, 0x18

    sget-object v1, Lcom/datami/smi/c/s;->b:[B

    aget-byte v1, v1, v4

    or-int/lit8 v2, v1, 0x1e

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/s;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/s;->a:Lcom/datami/smi/c/r;

    invoke-static {v0}, Lcom/datami/smi/c/r;->a(Lcom/datami/smi/c/r;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/s;->b:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/c/s;->b:[B

    aget-byte v2, v2, v5

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/s;->b:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/s;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-static {}, Lcom/datami/smi/c/c;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/datami/smi/c/r;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/datami/smi/c/c;->a(Z)V

    invoke-static {}, Lcom/datami/smi/c/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/datami/smi/b/m;->N()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/datami/smi/b/m;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x17

    sget-object v1, Lcom/datami/smi/c/s;->b:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/c/s;->b:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/s;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
