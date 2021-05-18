.class final Lcom/datami/smi/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:[B

.field private static e:I


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/datami/smi/b/m;

.field final synthetic c:Lcom/datami/smi/SmiResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/q;->d:[B

    const/16 v0, 0x5c

    sput v0, Lcom/datami/smi/b/q;->e:I

    return-void

    :array_0
    .array-data 1
        0x68t
        -0x27t
        -0x10t
        0x5t
        0x33t
        -0x15t
        0x2t
        0xbt
        0x4t
        -0xbt
        0x6t
        -0x1t
        -0x4et
        0x57t
        -0xft
        0x1t
        0x3t
        -0x7t
        -0x45t
        0x57t
        -0x12t
        -0x3t
        0x14t
        -0xdt
        -0x4t
        0x12t
        -0x57t
        0x49t
        0x5t
        0x5t
        0x1t
        -0x13t
        0xdt
        0x6t
        -0xbt
        -0x8t
        0x13t
        -0xbt
        0x6t
        -0x1t
        -0x4dt
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/datami/smi/b/m;Lcom/datami/smi/SmiResult;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/b/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/datami/smi/b/q;->b:Lcom/datami/smi/b/m;

    iput-object p3, p0, Lcom/datami/smi/b/q;->c:Lcom/datami/smi/SmiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    mul-int/lit8 v0, p2, 0x4

    rsub-int/lit8 v0, v0, 0x45

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v6, v1, 0x26

    add-int/lit8 v1, p0, 0x4

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/b/q;->d:[B

    new-array v2, v6, [B

    if-nez v8, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/2addr v1, v0

    move v0, v3

    :goto_1
    int-to-byte v9, v1

    add-int/lit8 v3, v0, 0x1

    aput-byte v9, v2, v0

    if-ne v3, v6, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v8, v5

    goto :goto_0

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/datami/smi/b/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/datami/smi/b/m;->b(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/datami/smi/b/q;->b:Lcom/datami/smi/b/m;

    invoke-virtual {v0}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/c;->b(I)V

    invoke-static {}, Lcom/datami/smi/b/m;->X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/b/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/b/q;->c:Lcom/datami/smi/SmiResult;

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Lcom/datami/smi/SmiResult;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/b/m;->J:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/q;->d:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0, v1, v1}, Lcom/datami/smi/b/q;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
