.class public final Lcom/datami/smi/c/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "code"

.field public static final b:Ljava/lang/String; = "cause"

.field public static final c:Ljava/lang/String; = "meta"

.field private static final e:[B

.field private static f:I


# instance fields
.field final synthetic d:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/h;->e:[B

    const/16 v0, 0x81

    sput v0, Lcom/datami/smi/c/h;->f:I

    return-void

    :array_0
    .array-data 1
        0x58t
        0x75t
        -0x75t
        -0x5et
        0x8t
        -0xft
        0x13t
        -0xct
        0xbt
        -0x1t
        0x2t
        -0x14t
        0x2t
        0xet
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/h;->d:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v3, v0, 0x4

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x63

    sget-object v8, Lcom/datami/smi/c/h;->e:[B

    add-int/lit8 v1, p2, 0x4

    new-array v2, v1, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v0

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
