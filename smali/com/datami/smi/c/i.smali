.class public final Lcom/datami/smi/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "eventName"

.field public static final b:Ljava/lang/String; = "eventDetails"

.field public static final c:Ljava/lang/String; = "token"

.field public static final d:Ljava/lang/String; = "networkType"

.field public static final e:Ljava/lang/String; = "operatorName"

.field public static final f:Ljava/lang/String; = "wifi"

.field public static final g:Ljava/lang/String; = "sdk"

.field public static final h:I = 0x3e8

.field private static final j:[B

.field private static k:I


# instance fields
.field final synthetic i:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/i;->j:[B

    const/16 v0, 0x15

    sput v0, Lcom/datami/smi/c/i;->k:I

    return-void

    :array_0
    .array-data 1
        0xbt
        0x64t
        0x7et
        -0x35t
        0xat
        -0xct
        -0x16t
        0xct
        -0xet
        -0xbt
        0x2bt
        -0x26t
        -0x14t
        0xet
        -0xdt
        -0x8t
        -0xct
        0x4t
        -0x14t
        -0x8t
        0x3t
        -0x8t
        0x2t
        0x12t
        -0x2at
        0x4t
        0x6t
        0x9t
        -0x2t
        -0x8t
        -0x6t
        0x6t
        -0x12t
        0xct
        -0x18t
        0x0t
        -0x8t
        0x1ft
        -0x18t
        -0x11t
        0x3t
        0x0t
        -0x1t
        0x1t
        -0xet
        -0x16t
        0xct
        -0xet
        -0xbt
        0x21t
        -0x18t
        -0x11t
        0x3t
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/i;->i:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    sget-object v7, Lcom/datami/smi/c/i;->j:[B

    rsub-int/lit8 v0, p1, 0x77

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v1, p0, 0x3

    add-int/lit8 v3, p2, 0x4

    new-array v2, v1, [B

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

    add-int/lit8 v2, v0, -0x5

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method
