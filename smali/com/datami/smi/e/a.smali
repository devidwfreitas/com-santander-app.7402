.class public final enum Lcom/datami/smi/e/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/e/a;

.field public static final enum b:Lcom/datami/smi/e/a;

.field public static final enum c:Lcom/datami/smi/e/a;

.field public static d:I

.field public static e:B

.field private static final synthetic g:[Lcom/datami/smi/e/a;

.field private static final h:[B

.field private static i:I


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x17

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/e/a;->h:[B

    const/16 v0, 0x3c

    sput v0, Lcom/datami/smi/e/a;->i:I

    new-instance v0, Lcom/datami/smi/e/a;

    sget-object v1, Lcom/datami/smi/e/a;->h:[B

    aget-byte v1, v1, v4

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/e/a;->h:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/e/a;->h:[B

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/e/a;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/datami/smi/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/a;->a:Lcom/datami/smi/e/a;

    new-instance v0, Lcom/datami/smi/e/a;

    sget-object v1, Lcom/datami/smi/e/a;->h:[B

    aget-byte v1, v1, v4

    add-int/lit8 v1, v1, 0x1

    or-int/lit8 v2, v1, 0x17

    and-int/lit8 v3, v2, 0xe

    invoke-static {v1, v2, v3}, Lcom/datami/smi/e/a;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v1, v6, v2}, Lcom/datami/smi/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/a;->b:Lcom/datami/smi/e/a;

    new-instance v0, Lcom/datami/smi/e/a;

    sget-object v1, Lcom/datami/smi/e/a;->h:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v1, v2, v2}, Lcom/datami/smi/e/a;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v7, v2}, Lcom/datami/smi/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/a;->c:Lcom/datami/smi/e/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/datami/smi/e/a;

    sget-object v1, Lcom/datami/smi/e/a;->a:Lcom/datami/smi/e/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/e/a;->b:Lcom/datami/smi/e/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/e/a;->c:Lcom/datami/smi/e/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/datami/smi/e/a;->g:[Lcom/datami/smi/e/a;

    sget-object v0, Lcom/datami/smi/e/a;->b:Lcom/datami/smi/e/a;

    iget v0, v0, Lcom/datami/smi/e/a;->f:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/e/b;->b:Lcom/datami/smi/e/b;

    iget v1, v1, Lcom/datami/smi/e/b;->d:I

    add-int/2addr v0, v1

    sput v0, Lcom/datami/smi/e/a;->d:I

    sget-object v0, Lcom/datami/smi/e/a;->a:Lcom/datami/smi/e/a;

    iget v0, v0, Lcom/datami/smi/e/a;->f:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/e/b;->b:Lcom/datami/smi/e/b;

    iget v1, v1, Lcom/datami/smi/e/b;->d:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    sput-byte v0, Lcom/datami/smi/e/a;->e:B

    return-void

    :array_0
    .array-data 1
        0x39t
        0x42t
        -0x1at
        0x64t
        0xet
        -0xft
        0x2t
        -0x8t
        0x15t
        -0x3t
        0xft
        -0x15t
        0xet
        -0x2t
        0xct
        0xet
        -0x11t
        0x4t
        0xft
        -0x14t
        0x10t
        0x10t
        -0x9t
        -0x1t
        0x13t
        -0xbt
        0x2t
        -0x11t
        0x4t
        0xft
        -0x14t
        0x13t
        0x7t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/e/a;->f:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/e/a;->f:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    add-int/lit8 v3, p1, 0x4

    mul-int/lit8 v0, p0, 0xb

    add-int/lit8 v0, v0, 0x41

    rsub-int/lit8 v1, p2, 0xd

    sget-object v7, Lcom/datami/smi/e/a;->h:[B

    new-instance v8, Ljava/lang/String;

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v6, v6, 0x1

    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3

    move v0, v4

    :goto_1
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/e/a;
    .locals 1

    const-class v0, Lcom/datami/smi/e/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/e/a;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/e/a;
    .locals 1

    sget-object v0, Lcom/datami/smi/e/a;->g:[Lcom/datami/smi/e/a;

    invoke-virtual {v0}, [Lcom/datami/smi/e/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/e/a;

    return-object v0
.end method
