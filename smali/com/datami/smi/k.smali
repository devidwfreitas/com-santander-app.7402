.class final Lcom/datami/smi/k;
.super Ljava/lang/Thread;


# static fields
.field private static final g:[B

.field private static h:I


# instance fields
.field final synthetic a:Lcom/datami/smi/b/m;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/datami/smi/SmiResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/k;->g:[B

    const/16 v0, 0xa7

    sput v0, Lcom/datami/smi/k;->h:I

    return-void

    :array_0
    .array-data 1
        0x21t
        0x6dt
        -0xft
        -0x1ct
        0x2ft
        -0x19t
        -0x2t
        0x7t
        0x0t
        -0xft
        0x2t
        -0x5t
        -0x52t
        0x53t
        -0x13t
        -0x3t
        -0x1t
        -0xbt
        -0x49t
        0x3ft
        0x5t
        -0xbt
        -0x8t
        0xdt
        -0x13t
        -0x6t
        -0x2t
        0x1t
        -0x7t
        -0x49t
        0x16t
        -0x1et
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/b/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datami/smi/SmiResult;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/k;->a:Lcom/datami/smi/b/m;

    iput-object p2, p0, Lcom/datami/smi/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/datami/smi/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/datami/smi/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/datami/smi/k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1d

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x45

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x2

    rsub-int/lit8 v3, v2, 0x4

    sget-object v8, Lcom/datami/smi/k;->g:[B

    new-array v2, v1, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v2

    aput-byte v9, v3, v0

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/datami/smi/k;->a:Lcom/datami/smi/b/m;

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Lcom/datami/smi/b/m;)Lcom/datami/smi/b/t;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/t;->d:Lcom/datami/smi/b/t;

    if-ne v1, v0, :cond_5

    :try_start_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/c/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/datami/smi/k;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/datami/smi/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/datami/smi/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/datami/smi/k;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/datami/smi/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Lcom/datami/smi/b/m;)Lcom/datami/smi/b/t;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/b/t;->a:Lcom/datami/smi/b/t;

    if-eq v2, v1, :cond_2

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    invoke-virtual {v1, v0}, Lcom/datami/smi/SmiResult;->setZmi(Lcom/datami/smi/b/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/k;->g:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    invoke-static {v3, v3, v3}, Lcom/datami/smi/k;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v1

    sget-object v2, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v2}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    sget-object v1, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    invoke-virtual {v1}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/datami/smi/b/t;->a:Lcom/datami/smi/b/t;

    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/datami/smi/k;->f:Lcom/datami/smi/SmiResult;

    iget-object v1, p0, Lcom/datami/smi/k;->a:Lcom/datami/smi/b/m;

    invoke-virtual {v1}, Lcom/datami/smi/b/m;->e()I

    move-result v1

    invoke-static {v1}, Lcom/datami/smi/SdState;->valueOf(I)Lcom/datami/smi/SdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    goto/16 :goto_0
.end method
