.class final Lcom/datami/smi/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/d;->b:[B

    const/16 v0, 0x33

    sput v0, Lcom/datami/smi/d;->c:I

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x2ft
        0x1et
        -0x70t
        0x36t
        -0x12t
        0x5t
        0xet
        0x7t
        -0x8t
        0x9t
        0x2t
        -0x4bt
        0x4ct
        0x8t
        -0x4bt
        0x55t
        -0xat
        0x11t
        -0xbt
        0x12t
        0x3t
        -0x8t
        0x8t
        -0x4t
        -0x44t
        0x53t
        0x5t
        0x0t
        0xct
        0x4t
        -0x56t
        0x49t
        0xft
        0x0t
        0x1t
        -0x4at
        0x36t
        0x1dt
        -0x1t
        -0x23t
        0x35t
        0x1t
        0x4t
        -0x2t
        0x1t
        -0x16t
        0x10t
        0x11t
        0x7t
        0x4t
        -0xbt
        0x14t
        0xct
        0xct
        -0x1t
        -0x9t
        -0x7t
        0x1dt
        -0x1t
        -0x23t
        0x35t
        0x1t
        0x4t
        -0x2t
        0x1t
        -0x16t
        0x1et
        -0xbt
        0x15t
        0x4t
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/datami/smi/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v3, v0, 0x73

    rsub-int/lit8 v0, p1, 0x34

    add-int/lit8 v2, p0, 0x3

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/d;->b:[B

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x3

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v0, v1

    aput-byte v0, v3, v4

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

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0x1c

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/datami/smi/d;->b:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/d;->b:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/d;->b:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/d;->e:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {}, Lcom/datami/smi/c;->d()Lcom/datami/smi/SmiResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->d()Lcom/datami/smi/SmiResult;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    invoke-static {}, Lcom/datami/smi/c;->d()Lcom/datami/smi/SmiResult;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    iget v0, p0, Lcom/datami/smi/d;->a:I

    invoke-static {v0}, Lcom/datami/smi/c;->b(I)V

    :try_start_0
    invoke-static {}, Lcom/datami/smi/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/c;->d()Lcom/datami/smi/SmiResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Lcom/datami/smi/SmiResult;Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/datami/smi/d;->a:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->e()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/datami/smi/d;->a:I

    invoke-static {v0, v1}, Lcom/datami/smi/c;->a(Landroid/content/Context;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/datami/smi/d;->b:[B

    const/16 v1, 0x2f

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d;->b:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/d;->b:[B

    const/16 v3, 0x1d

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d;->a(III)Ljava/lang/String;

    const/16 v0, 0x2d

    const/16 v1, 0x31

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
