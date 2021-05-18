.class public final Lcom/datami/smi/c/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "SD"

.field public static final b:Ljava/lang/String; = "NO_SD"

.field public static final c:Ljava/lang/String; = "USR_LMTEXD"

.field public static final d:Ljava/lang/String; = "DLY_LMTEXD"

.field public static final e:Ljava/lang/String; = "WKL_LMTEXD"

.field public static final f:Ljava/lang/String; = "MON_LMTEXD"

.field public static final g:Ljava/lang/String; = "PKG_LMTEXD"

.field public static final h:Ljava/lang/String; = "ROAMING"

.field public static final i:Ljava/lang/String; = "USAGE"

.field private static final k:[B

.field private static l:I


# instance fields
.field final synthetic j:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/g;->k:[B

    const/16 v0, 0xde

    sput v0, Lcom/datami/smi/c/g;->l:I

    return-void

    :array_0
    .array-data 1
        0x1bt
        -0x18t
        0x17t
        0x36t
        0x11t
        0xet
        0x1t
        -0x11t
        0x15t
        0x1t
        -0x5t
        0x11t
        -0x11t
        0x16t
        0x4t
        0x14t
        -0x4t
        0x4t
        0x4t
        0x3t
        -0xbt
        0x15t
        0x1t
        -0x5t
        0x11t
        -0x11t
        0x16t
        0x0t
        0x3t
        -0xft
        0x15t
        0x1t
        -0x5t
        0x11t
        -0x11t
        0x16t
        0x5t
        0x10t
        -0xat
        0x6t
        -0x3t
        0x9t
        0x7t
        0x6t
        -0x16t
        0x15t
        0x1t
        -0x5t
        0x11t
        -0x11t
        0x16t
        -0x6t
        -0xbt
        -0x4t
        0x15t
        0x1t
        -0x5t
        0x11t
        -0x11t
        0x16t
        0x1t
        -0xet
        0xet
        0x11t
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/g;->j:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    add-int/lit8 v1, p1, 0x2

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v0, p0, 0x3b

    sget-object v8, Lcom/datami/smi/c/g;->k:[B

    rsub-int/lit8 v3, p2, 0x57

    new-array v2, v1, [B

    if-nez v8, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x2

    move v0, v4

    :goto_1
    int-to-byte v9, v2

    add-int/lit8 v4, v0, 0x1

    aput-byte v9, v3, v0

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move v10, v3

    move-object v3, v2

    move v2, v10

    goto :goto_1
.end method
