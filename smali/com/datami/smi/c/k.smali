.class public final Lcom/datami/smi/c/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "apiKey"

.field public static final b:Ljava/lang/String; = "op"

.field public static final c:Ljava/lang/String; = "mccmnc"

.field public static final d:Ljava/lang/String; = "appId"

.field private static final f:[B

.field private static g:I


# instance fields
.field final synthetic e:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/k;->f:[B

    const/16 v0, 0x43

    sput v0, Lcom/datami/smi/c/k;->g:I

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x18t
        0x38t
        -0x72t
        0x15t
        -0x1t
        -0x18t
        0x20t
        0x1at
        0x15t
        0x6t
        -0x21t
        0x21t
        -0x4t
        0x6t
        0x10t
        0x7t
        -0x5t
        0x7t
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/k;->e:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x61

    sget-object v6, Lcom/datami/smi/c/k;->f:[B

    rsub-int/lit8 v1, p1, 0x11

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v8, p0, 0x6

    new-array v2, v8, [B

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x6

    :goto_1
    int-to-byte v0, v1

    add-int/lit8 v5, v5, 0x1

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method
