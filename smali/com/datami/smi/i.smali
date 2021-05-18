.class final Lcom/datami/smi/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/smi/SmiResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/i;->b:[B

    const/16 v0, 0xc4

    sput v0, Lcom/datami/smi/i;->c:I

    return-void

    :array_0
    .array-data 1
        0x49t
        -0x5ft
        0x2ct
        0x32t
        -0xct
        -0xct
        0x1t
        0x9t
        0x15t
        -0x34t
        0xet
        -0xct
        -0x9t
        0x1ft
        -0x16t
        -0x5t
        -0x5t
        -0xdt
        -0x4t
        0xct
        -0x10t
        0x1ct
        -0x15t
        -0x10t
        -0x7t
        0xat
        0x3t
        -0x5t
        -0x22t
        -0x5t
        -0xbt
        0x3t
        -0xct
        0x7t
        0x41t
        -0x46t
        -0xft
        -0x2t
        -0x3t
        0x6t
        -0x1t
        -0x14t
        0x8t
        -0x9t
        -0x2t
        0x4bt
        -0x49t
        0x2t
        -0xbt
        -0x6t
        0x4t
        -0x2t
        -0x36t
        0x12t
        -0x5t
        -0xet
        -0x7t
        0x8t
        -0x9t
        -0x2t
        0x4bt
        -0x4ct
        -0x8t
        0x4bt
        -0x55t
        0xat
        -0x11t
        0xbt
        -0x12t
        -0x3t
        0x8t
        -0x8t
        0x4t
        0x44t
        -0x53t
        -0x5t
        0x0t
        -0xct
        -0x4t
        0x56t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/SmiResult;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/i;->a:Lcom/datami/smi/SmiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    mul-int/lit8 v0, p0, 0x18

    add-int/lit8 v3, v0, 0x4

    mul-int/lit8 v0, p2, 0x4

    rsub-int/lit8 v1, v0, 0x1d

    sget-object v7, Lcom/datami/smi/i;->b:[B

    rsub-int/lit8 v0, p1, 0x5b

    new-instance v8, Ljava/lang/String;

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x3

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0x4c

    const/4 v3, 0x6

    :try_start_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/i;->a:Lcom/datami/smi/SmiResult;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Lcom/datami/smi/SmiResult;Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/datami/smi/i;->b:[B

    aget-byte v0, v0, v4

    sget-object v1, Lcom/datami/smi/i;->b:[B

    aget-byte v1, v1, v3

    invoke-static {v0, v0, v1}, Lcom/datami/smi/i;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/i;->b:[B

    aget-byte v0, v0, v3

    or-int/lit8 v1, v0, 0x18

    sget-object v2, Lcom/datami/smi/i;->b:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/i;->a(III)Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/datami/smi/SmiIntentService;->access$000()Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/i;->b:[B

    const/16 v1, 0x2f

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/i;->b:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/i;->b:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/i;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
