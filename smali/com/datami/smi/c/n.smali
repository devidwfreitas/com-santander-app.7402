.class public final Lcom/datami/smi/c/n;
.super Ljava/lang/Object;


# static fields
.field private static final e:[B

.field private static f:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v0, 0xa1

    sput v0, Lcom/datami/smi/c/n;->f:I

    return-void

    :array_0
    .array-data 1
        0xat
        -0x74t
        -0x28t
        0x1at
        0x0t
        0xct
        -0xct
        0x12t
        -0x12t
        0x6t
        -0x2t
        0x0t
        0xct
        0x0t
        -0xat
        0x5t
        -0x2t
        -0x9t
        0xdt
        0x9t
        -0x8t
        -0x5t
        0xbt
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    const/16 v7, 0xf

    const/16 v6, 0x9

    const/4 v5, 0x7

    const/16 v4, 0xa

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    add-int/lit8 v2, p1, 0x3

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/c/n;->e:[B

    add-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v3, p2, 0x6f

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

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v0, 0x1

    move v0, v4

    :goto_1
    int-to-byte v4, v1

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8

    const/16 v7, 0xf

    const/16 v6, 0x9

    const/4 v5, 0x7

    const/16 v4, 0xa

    const/4 v3, 0x4

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v5

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/n;->e:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/n;->e:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, -0x2

    sget-object v2, Lcom/datami/smi/c/n;->e:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/n;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/n;->c:Ljava/lang/String;

    return-object v0
.end method
