.class public final Lcom/datami/smi/b/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static final b:[B

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/k;->b:[B

    const/16 v0, 0x33

    sput v0, Lcom/datami/smi/b/k;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/b/k;->a:Landroid/content/SharedPreferences;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x52t
        0x55t
        -0x62t
        -0x2t
        0x0t
        0xet
        -0xbt
        0xbt
        -0x8t
        0xct
        0x9t
        0x7t
        -0x9t
        0x3t
        0xft
        -0x9t
        0x9t
        0x9t
        0xet
        -0xct
        0x10t
        0xbt
        -0xdt
        0x11t
        0xbt
        -0x16t
        0x15t
        0x6t
        -0x9t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 10

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/datami/smi/b/k;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/datami/smi/b/k;->b:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x73

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1c

    sget-object v8, Lcom/datami/smi/b/k;->b:[B

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v2, v1, [B

    if-nez v8, :cond_3

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x4

    :goto_2
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_2

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/b/k;->a:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v0, Lcom/datami/smi/b/k;->a:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_2
    aget-byte v0, v8, v6

    goto :goto_1

    :cond_3
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_2
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v3, v0, 0x73

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1c

    sget-object v8, Lcom/datami/smi/b/k;->b:[B

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v2, v1, [B

    if-nez v8, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x4

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_1
.end method
