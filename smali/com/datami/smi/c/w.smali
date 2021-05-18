.class final Lcom/datami/smi/c/w;
.super Ljava/util/TimerTask;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/smi/c/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/w;->b:[B

    const/16 v0, 0x10

    sput v0, Lcom/datami/smi/c/w;->c:I

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x6ft
        -0xbt
        -0x4ct
        -0x32t
        0x16t
        -0x1t
        -0xat
        -0x3t
        0xct
        -0x5t
        0x2t
        0x4ft
        0x1t
        -0x19t
        0x1bt
        0x4t
        0x12t
        -0xbt
        -0x6t
        -0x14t
        -0x3t
        0x9t
        -0xct
        0x1ft
        -0xct
        -0x11t
        0x9t
        0x4ct
        -0x53t
        0xct
        -0x3t
        0x9t
        -0xct
        0x53t
        -0x45t
        -0x2t
        -0x8t
        0xet
        0x2t
        0x44t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p2, 0xc

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p0, 0xd

    add-int/lit8 v1, v1, 0xd

    sget-object v8, Lcom/datami/smi/c/w;->b:[B

    mul-int/lit8 v2, p1, 0x10

    rsub-int/lit8 v3, v2, 0x55

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v8, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0xd

    sget-object v0, Lcom/datami/smi/c/w;->b:[B

    aget-byte v0, v0, v4

    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lcom/datami/smi/c/w;->b:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/w;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    new-instance v1, Lcom/datami/smi/c/u;

    iget-object v2, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    invoke-static {v2}, Lcom/datami/smi/c/v;->a(Lcom/datami/smi/c/v;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    invoke-static {v3}, Lcom/datami/smi/c/v;->b(Lcom/datami/smi/c/v;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/datami/smi/c/u;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/datami/smi/c/v;->a(Lcom/datami/smi/c/v;Lcom/datami/smi/c/u;)Lcom/datami/smi/c/u;

    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    invoke-static {v0}, Lcom/datami/smi/c/v;->c(Lcom/datami/smi/c/v;)Lcom/datami/smi/c/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/u;->join()V

    iget-object v0, p0, Lcom/datami/smi/c/w;->a:Lcom/datami/smi/c/v;

    invoke-static {v0}, Lcom/datami/smi/c/v;->c(Lcom/datami/smi/c/v;)Lcom/datami/smi/c/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/u;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/c/w;->b:[B

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/w;->b:[B

    aget-byte v3, v3, v4

    add-int/lit8 v4, v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/w;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
