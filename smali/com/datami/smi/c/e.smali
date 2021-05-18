.class public final Lcom/datami/smi/c/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static final f:[B

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/e;->f:[B

    const/16 v0, 0x1d

    sput v0, Lcom/datami/smi/c/e;->g:I

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/c/e;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c/e;->f:[B

    aget-byte v0, v0, v3

    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lcom/datami/smi/c/e;->f:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/e;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c/e;->f:[B

    aget-byte v0, v0, v3

    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lcom/datami/smi/c/e;->f:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/e;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->d:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c/e;->f:[B

    aget-byte v0, v0, v3

    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lcom/datami/smi/c/e;->f:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/e;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->e:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xet
        -0x4bt
        -0x41t
        -0x1ct
        0x11t
        -0xbt
        -0x5t
        -0x7t
        0x0t
        -0x11t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x55

    sget-object v8, Lcom/datami/smi/c/e;->f:[B

    mul-int/lit8 v1, p2, 0x4

    rsub-int/lit8 v1, v1, 0x7

    add-int/lit8 v3, p1, 0x4

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x8

    move v0, v4

    :goto_1
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

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
