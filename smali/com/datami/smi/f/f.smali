.class public final enum Lcom/datami/smi/f/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/f/f;

.field public static final enum b:Lcom/datami/smi/f/f;

.field public static final enum c:Lcom/datami/smi/f/f;

.field private static final synthetic d:[Lcom/datami/smi/f/f;

.field private static final e:[B

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x12

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/f;->e:[B

    const/16 v0, 0x39

    sput v0, Lcom/datami/smi/f/f;->f:I

    new-instance v0, Lcom/datami/smi/f/f;

    sget-object v1, Lcom/datami/smi/f/f;->e:[B

    aget-byte v1, v1, v8

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/f;->e:[B

    const/16 v3, 0x19

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/f;->e:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/datami/smi/f/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/f/f;->a:Lcom/datami/smi/f/f;

    new-instance v0, Lcom/datami/smi/f/f;

    sget-object v1, Lcom/datami/smi/f/f;->e:[B

    aget-byte v1, v1, v8

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/f;->e:[B

    aget-byte v2, v2, v9

    invoke-static {v1, v2, v2}, Lcom/datami/smi/f/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/datami/smi/f/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/f/f;->b:Lcom/datami/smi/f/f;

    new-instance v0, Lcom/datami/smi/f/f;

    sget-object v1, Lcom/datami/smi/f/f;->e:[B

    aget-byte v1, v1, v9

    sget-object v2, Lcom/datami/smi/f/f;->e:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget v3, Lcom/datami/smi/f/f;->f:I

    and-int/lit8 v3, v3, 0x54

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/datami/smi/f/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/f/f;->c:Lcom/datami/smi/f/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/datami/smi/f/f;

    sget-object v1, Lcom/datami/smi/f/f;->a:Lcom/datami/smi/f/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/f/f;->b:Lcom/datami/smi/f/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/f/f;->c:Lcom/datami/smi/f/f;

    aput-object v1, v0, v7

    sput-object v0, Lcom/datami/smi/f/f;->d:[Lcom/datami/smi/f/f;

    return-void

    nop

    :array_0
    .array-data 1
        0x17t
        0x23t
        0x64t
        -0x4t
        -0x7t
        0xdt
        -0x5t
        -0x7t
        -0x13t
        -0x5t
        -0xet
        0x2t
        -0x1t
        -0x16t
        -0x12t
        0x17t
        -0x3t
        -0xct
        0x0t
        -0x7t
        0x0t
        -0xdt
        -0x8t
        -0xet
        -0x2t
        0x8t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v3, v0, 0x4

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v0, p2, 0x53

    mul-int/lit8 v1, p0, 0x4

    rsub-int/lit8 v1, v1, 0xb

    sget-object v8, Lcom/datami/smi/f/f;->e:[B

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

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x5

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

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/f/f;
    .locals 1

    const-class v0, Lcom/datami/smi/f/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/f/f;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/f/f;
    .locals 1

    sget-object v0, Lcom/datami/smi/f/f;->d:[Lcom/datami/smi/f/f;

    invoke-virtual {v0}, [Lcom/datami/smi/f/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/f/f;

    return-object v0
.end method
