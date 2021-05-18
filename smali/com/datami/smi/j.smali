.class final Lcom/datami/smi/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:[B

.field private static e:I


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/datami/smi/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/j;->d:[B

    const/16 v0, 0x10

    sput v0, Lcom/datami/smi/j;->e:I

    return-void

    :array_0
    .array-data 1
        0x3ct
        -0x63t
        -0x21t
        0x34t
        0x2t
        -0xbt
        0x0t
        0x3t
        -0x5t
        0x7t
        0x47t
        -0x47t
        0x2t
        -0xft
        0x33t
        -0x2ft
        0x0t
        0x1dt
        0xft
        0x3t
        -0x34t
        0x1t
        0xct
        0x40t
        -0x1t
        0x9t
        -0x46t
        0x5t
        -0x8t
        -0x3t
        0x7t
        0x1t
        0x2at
        0x1at
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/datami/smi/h;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/datami/smi/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/j;->c:Lcom/datami/smi/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v2, v0, 0x1f

    mul-int/lit8 v0, p1, 0x4

    rsub-int/lit8 v3, v0, 0x4

    sget-object v8, Lcom/datami/smi/j;->d:[B

    mul-int/lit8 v0, p2, 0x3

    rsub-int/lit8 v0, v0, 0x63

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    :goto_1
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

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/datami/smi/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/datami/smi/SmiSdk;->access$002(Z)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/j;->d:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1f

    mul-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v3, v1, 0x4

    sget-object v8, Lcom/datami/smi/j;->d:[B

    mul-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x63

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_1
    neg-int v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    :goto_2
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5}, Lcom/datami/smi/SmiSdk;->access$002(Z)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :try_start_2
    aget-byte v0, v8, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/datami/smi/SmiSdk;->access$002(Z)Z

    throw v0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_2
.end method
