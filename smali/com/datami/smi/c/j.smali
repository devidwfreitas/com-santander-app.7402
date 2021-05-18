.class public final Lcom/datami/smi/c/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "x-dmi-service-token"

.field public static final b:Ljava/lang/String; = "x-dmi-api-key"

.field public static final c:Ljava/lang/String; = "x-dmi-code-path"

.field public static final d:Ljava/lang/String; = "x-msisdn"

.field public static final e:Ljava/lang/String; = "Content-Type"

.field public static final f:Ljava/lang/String; = "Accept-Encoding"

.field public static final g:Ljava/lang/String; = "Cache-Control"

.field public static final h:Ljava/lang/String; = "x-dmi-app"

.field public static final i:Ljava/lang/String; = "x-dmi-enable-details"

.field public static final j:Ljava/lang/String; = "x-dmi-sdk"

.field public static final k:Ljava/lang/String; = "x-dmi-uuid"

.field private static final m:[B

.field private static n:I


# instance fields
.field final synthetic l:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x88

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/j;->m:[B

    const/16 v0, 0x81

    sput v0, Lcom/datami/smi/c/j;->n:I

    return-void

    :array_0
    .array-data 1
        0x2at
        0x4t
        -0x2et
        0x55t
        0x23t
        0x1t
        0x3t
        0xct
        0x5t
        -0x46t
        0x19t
        0x2at
        -0xat
        0xdt
        -0xat
        0x6t
        0x6t
        -0x6t
        -0x4at
        0x41t
        0x7t
        -0x9t
        0xbt
        -0xet
        0xbt
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x49t
        0x1t
        -0xbt
        -0x4t
        0x2dt
        0x0t
        0x7t
        -0xet
        0xat
        0x7t
        -0x46t
        0x28t
        0x26t
        -0x8t
        -0xat
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x35t
        0x10t
        0x1t
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x47t
        -0xdt
        0xet
        0x5t
        -0xct
        -0x5t
        0x3t
        -0x37t
        0x48t
        -0x4t
        -0x3t
        -0x5t
        0xat
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x39t
        0xat
        -0xct
        0x2t
        0xbt
        -0x6t
        -0x37t
        0x38t
        0x2t
        0x10t
        -0x12t
        0x9t
        0x4t
        0x8t
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x37t
        0xdt
        -0xat
        0x2t
        -0x37t
        0x44t
        -0xet
        0x14t
        -0xbt
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x35t
        0x10t
        -0x6t
        -0x3bt
        0x3ft
        -0x5t
        0x15t
        0x1ft
        0x3t
        0x6t
        -0x2t
        -0x37t
        0x17t
        0x2dt
        0x0t
        0x7t
        -0x1t
        -0x2t
        -0x2t
        -0x4at
        0x38t
        0xat
        -0x3t
        -0x3bt
        0x47t
        -0xet
        0x8t
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/j;->l:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    rsub-int/lit8 v6, p2, 0x14

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v1, p0, 0x78

    sget-object v8, Lcom/datami/smi/c/j;->m:[B

    rsub-int/lit8 v0, p1, 0x7f

    new-array v2, v6, [B

    if-nez v8, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    move v0, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v9, v1

    add-int/lit8 v3, v0, 0x1

    aput-byte v9, v2, v0

    if-ne v3, v6, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v0, v4

    goto :goto_1
.end method
