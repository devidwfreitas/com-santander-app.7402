.class public final enum Lcom/datami/smi/e/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/e/b;

.field public static final enum b:Lcom/datami/smi/e/b;

.field public static final enum c:Lcom/datami/smi/e/b;

.field private static final synthetic e:[Lcom/datami/smi/e/b;

.field private static final f:[B

.field private static g:I


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/e/b;->f:[B

    const/16 v0, 0xbd

    sput v0, Lcom/datami/smi/e/b;->g:I

    new-instance v0, Lcom/datami/smi/e/b;

    sget v1, Lcom/datami/smi/e/b;->g:I

    and-int/lit8 v1, v1, 0x3

    or-int/lit8 v2, v1, 0x6

    sget-object v3, Lcom/datami/smi/e/b;->f:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/e/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v5}, Lcom/datami/smi/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/b;->a:Lcom/datami/smi/e/b;

    new-instance v0, Lcom/datami/smi/e/b;

    sget-object v1, Lcom/datami/smi/e/b;->f:[B

    aget-byte v1, v1, v4

    or-int/lit8 v2, v1, 0xd

    sget-object v3, Lcom/datami/smi/e/b;->f:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/e/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lcom/datami/smi/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/b;->b:Lcom/datami/smi/e/b;

    new-instance v0, Lcom/datami/smi/e/b;

    sget v1, Lcom/datami/smi/e/b;->g:I

    and-int/lit8 v1, v1, 0x3

    sget-object v2, Lcom/datami/smi/e/b;->f:[B

    aget-byte v2, v2, v4

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/e/b;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v7, v2}, Lcom/datami/smi/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/e/b;->c:Lcom/datami/smi/e/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/datami/smi/e/b;

    sget-object v1, Lcom/datami/smi/e/b;->a:Lcom/datami/smi/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/e/b;->b:Lcom/datami/smi/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/e/b;->c:Lcom/datami/smi/e/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/datami/smi/e/b;->e:[Lcom/datami/smi/e/b;

    return-void

    nop

    :array_0
    .array-data 1
        0x60t
        0x46t
        0x2et
        0x3ct
        -0x10t
        0xet
        0xet
        -0xft
        0x0t
        -0x8t
        -0x10t
        0xet
        0xet
        -0x4t
        -0x14t
        0xet
        -0x2t
        -0xat
        0x13t
        0x2t
        0xct
        -0x8t
        -0x10t
        0xet
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/e/b;->d:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/e/b;->d:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    add-int/lit8 v2, p0, 0x7

    mul-int/lit8 v0, p2, 0xa

    rsub-int/lit8 v0, v0, 0x56

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v3, p1, 0x11

    sget-object v8, Lcom/datami/smi/e/b;->f:[B

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v0, -0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/e/b;
    .locals 1

    const-class v0, Lcom/datami/smi/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/e/b;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/e/b;
    .locals 1

    sget-object v0, Lcom/datami/smi/e/b;->e:[Lcom/datami/smi/e/b;

    invoke-virtual {v0}, [Lcom/datami/smi/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/e/b;

    return-object v0
.end method
