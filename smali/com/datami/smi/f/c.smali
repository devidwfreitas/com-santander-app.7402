.class final enum Lcom/datami/smi/f/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/f/c;

.field public static final enum b:Lcom/datami/smi/f/c;

.field private static final synthetic c:[Lcom/datami/smi/f/c;

.field private static final d:[B

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/c;->d:[B

    const/16 v0, 0xf4

    sput v0, Lcom/datami/smi/f/c;->e:I

    new-instance v0, Lcom/datami/smi/f/c;

    sget-object v1, Lcom/datami/smi/f/c;->d:[B

    aget-byte v1, v1, v3

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/f/c;->d:[B

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v2}, Lcom/datami/smi/f/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/datami/smi/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/f/c;->a:Lcom/datami/smi/f/c;

    new-instance v0, Lcom/datami/smi/f/c;

    sget-object v1, Lcom/datami/smi/f/c;->d:[B

    aget-byte v1, v1, v3

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1, v1, v2}, Lcom/datami/smi/f/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/datami/smi/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/f/c;->b:Lcom/datami/smi/f/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/datami/smi/f/c;

    sget-object v1, Lcom/datami/smi/f/c;->a:Lcom/datami/smi/f/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/datami/smi/f/c;->b:Lcom/datami/smi/f/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/datami/smi/f/c;->c:[Lcom/datami/smi/f/c;

    return-void

    :array_0
    .array-data 1
        0x46t
        -0x2ft
        0x1dt
        0x35t
        -0x10t
        -0x7t
        0x0t
        0x12t
        0x3t
        -0xet
        -0x8t
        0xdt
        -0xbt
        -0x8t
        -0xct
        0x8t
        -0x12t
        -0x10t
        -0x7t
        0x0t
        0x12t
        0x3t
        -0xet
        -0x8t
        0xdt
        -0x10t
        -0x10t
        -0x7t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    add-int/lit8 v2, p0, 0xd

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/f/c;->d:[B

    mul-int/lit8 v0, p2, 0xd

    add-int/lit8 v3, v0, 0x4

    mul-int/lit8 v0, p1, 0x2

    rsub-int/lit8 v0, v0, 0x52

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v6, v6, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/f/c;
    .locals 1

    const-class v0, Lcom/datami/smi/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/f/c;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/f/c;
    .locals 1

    sget-object v0, Lcom/datami/smi/f/c;->c:[Lcom/datami/smi/f/c;

    invoke-virtual {v0}, [Lcom/datami/smi/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/f/c;

    return-object v0
.end method
