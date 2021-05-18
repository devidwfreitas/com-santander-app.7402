.class public final Lcom/datami/smi/d/e;
.super Ljava/lang/Thread;


# static fields
.field private static final e:[B

.field private static f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/d/e;->e:[B

    const/16 v0, 0xcf

    sput v0, Lcom/datami/smi/d/e;->f:I

    return-void

    :array_0
    .array-data 1
        0x15t
        0x25t
        0x68t
        0x6ct
        -0x32t
        0x16t
        -0x1t
        -0xat
        -0x3t
        0xct
        -0x5t
        0x2t
        0x4ft
        -0x48t
        -0x4t
        0x4ft
        -0x52t
        0xft
        -0x8t
        0xbt
        -0x4t
        -0x4t
        0x8t
        0x48t
        -0x43t
        0x4t
        -0x12t
        0x14t
        0x42t
        -0x45t
        -0xbt
        0x4t
        0x3t
        0x4et
        -0x53t
        0xdt
        -0x9t
        0xet
        0x5t
        -0x2t
        0x45t
        -0x2bt
        0x4t
        0x1t
        0x8t
        0x3t
        -0x10t
        0x6t
        -0x2t
        0x53t
        -0x34t
        0x4t
        0x7t
        0x2dt
        -0x8t
        -0x8t
        0x5t
        0xdt
        0x19t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x23t
        -0x12t
        -0x1t
        -0x1t
        -0x9t
        0x0t
        0x10t
        -0xct
        0x20t
        -0x11t
        -0xct
        -0x3t
        0xet
        0x7t
        -0x1t
        -0x2bt
        0x4t
        0x1t
        0x8t
        0x3t
        -0x10t
        0x6t
        -0x2t
        0x53t
        -0x51t
        0xet
        -0xdt
        0x4t
        0x2t
        0x2t
        -0x4t
        0xft
        0x46t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/datami/smi/d/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/datami/smi/d/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/d/e;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/datami/smi/d/e;->d:Z

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    rsub-int/lit8 v6, p0, 0x26

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/d/e;->e:[B

    mul-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v1, v0, 0x5b

    rsub-int/lit8 v0, p1, 0x4e

    new-array v2, v6, [B

    if-nez v8, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v8, 0x23

    const/16 v7, 0x3a

    const/16 v6, 0x44

    :try_start_0
    sget-object v0, Lcom/datami/smi/d/e;->e:[B

    const/16 v1, 0x23

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/e;->e:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    const/16 v3, 0x44

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/d/e;->e:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/d/e;->e:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/d/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/datami/smi/d/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/d/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/datami/smi/d/e;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/datami/smi/d/e;->d:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/d/e;->e:[B

    const/16 v2, 0x23

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    const/16 v3, 0x3a

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/d/e;->e:[B

    const/16 v4, 0x44

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/d/e;->e:[B

    const/16 v4, 0x44

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/e;->e:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/datami/smi/d/e;->e:[B

    aget-byte v1, v1, v8

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    aget-byte v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/d/e;->e:[B

    aget-byte v3, v3, v6

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/d/e;->e:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x4a

    sget-object v4, Lcom/datami/smi/d/e;->e:[B

    const/16 v5, 0x13

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/d/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
