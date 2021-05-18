.class final Lcom/datami/smi/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:[B

.field private static e:I


# instance fields
.field final synthetic a:Lcom/datami/smi/b/m;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/datami/smi/SmiResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/s;->d:[B

    const/16 v0, 0xcd

    sput v0, Lcom/datami/smi/b/s;->e:I

    return-void

    :array_0
    .array-data 1
        0x3ct
        -0x63t
        -0x21t
        0x34t
        -0x8t
        0x13t
        -0x9t
        0x14t
        -0x2et
        0x34t
        0x5t
        -0x1bt
        0x27t
        0x2t
        0xet
        0x6t
        -0x4ct
        0x6t
        -0x4t
        0x4bt
        0x0t
        0xdt
        0x8t
        -0x2t
        0x4t
        -0x25t
        -0x15t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/b/m;Landroid/content/Context;Lcom/datami/smi/SmiResult;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/b/s;->a:Lcom/datami/smi/b/m;

    iput-object p2, p0, Lcom/datami/smi/b/s;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/datami/smi/b/s;->c:Lcom/datami/smi/SmiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 8

    mul-int/lit8 v0, p1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p2, 0x4

    rsub-int/lit8 v4, v1, 0x18

    mul-int/lit8 v1, p0, 0x3

    rsub-int/lit8 v1, v1, 0x72

    sget-object v5, Lcom/datami/smi/b/s;->d:[B

    const/4 v3, -0x1

    new-instance v6, Ljava/lang/String;

    new-array v2, v4, [B

    add-int/lit8 v7, v4, -0x1

    if-nez v5, :cond_1

    move v4, v0

    :goto_0
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v7, :cond_0

    const/4 v0, 0x0

    invoke-direct {v6, v2, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v5, v4

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/datami/smi/b/m;->L:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/b/s;->a:Lcom/datami/smi/b/m;

    invoke-static {v0}, Lcom/datami/smi/b/m;->b(Lcom/datami/smi/b/m;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/b/m;->L:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/b/s;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/b/s;->c:Lcom/datami/smi/SmiResult;

    iget-object v2, p0, Lcom/datami/smi/b/s;->a:Lcom/datami/smi/b/m;

    invoke-static {v2}, Lcom/datami/smi/b/m;->b(Lcom/datami/smi/b/m;)Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Lcom/datami/smi/SmiResult;Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datami/smi/b/s;->c:Lcom/datami/smi/SmiResult;

    invoke-virtual {v0}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/datami/smi/b/s;->a:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/b/m;->J:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/s;->d:[B

    const/16 v1, 0x14

    aget-byte v1, v0, v1

    mul-int/lit8 v0, v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    mul-int/lit8 v2, v1, 0x4

    rsub-int/lit8 v4, v2, 0x18

    mul-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x72

    sget-object v5, Lcom/datami/smi/b/s;->d:[B

    const/4 v3, -0x1

    new-instance v6, Ljava/lang/String;

    new-array v2, v4, [B

    add-int/lit8 v7, v4, -0x1

    if-nez v5, :cond_3

    move v4, v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v7, :cond_2

    invoke-direct {v6, v2, v8}, Ljava/lang/String;-><init>([BI)V

    goto :goto_0

    :cond_2
    aget-byte v0, v5, v4

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2
.end method
