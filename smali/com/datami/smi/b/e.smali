.class public final enum Lcom/datami/smi/b/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/b/e;

.field public static final enum b:Lcom/datami/smi/b/e;

.field public static final enum c:Lcom/datami/smi/b/e;

.field private static final synthetic e:[Lcom/datami/smi/b/e;

.field private static final f:[B

.field private static g:I


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/e;->f:[B

    const/16 v0, 0xbe

    sput v0, Lcom/datami/smi/b/e;->g:I

    new-instance v0, Lcom/datami/smi/b/e;

    sget-object v1, Lcom/datami/smi/b/e;->f:[B

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v1, 0x5

    sget-object v3, Lcom/datami/smi/b/e;->f:[B

    aget-byte v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lcom/datami/smi/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/e;->a:Lcom/datami/smi/b/e;

    new-instance v0, Lcom/datami/smi/b/e;

    sget-object v1, Lcom/datami/smi/b/e;->f:[B

    aget-byte v1, v1, v7

    invoke-static {v1, v1, v1}, Lcom/datami/smi/b/e;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v5}, Lcom/datami/smi/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/e;->b:Lcom/datami/smi/b/e;

    new-instance v0, Lcom/datami/smi/b/e;

    sget-object v1, Lcom/datami/smi/b/e;->f:[B

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v2, v1, 0xc

    and-int/lit8 v3, v2, 0x3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/e;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v6, v2}, Lcom/datami/smi/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/e;->c:Lcom/datami/smi/b/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/datami/smi/b/e;

    sget-object v1, Lcom/datami/smi/b/e;->a:Lcom/datami/smi/b/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/datami/smi/b/e;->b:Lcom/datami/smi/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/b/e;->c:Lcom/datami/smi/b/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/datami/smi/b/e;->e:[Lcom/datami/smi/b/e;

    return-void

    nop

    :array_0
    .array-data 1
        0x1dt
        -0x1ft
        0x16t
        -0x75t
        0x10t
        -0xet
        -0xet
        0xft
        0x0t
        0x8t
        0x10t
        -0xet
        -0xet
        0x4t
        0x14t
        -0xet
        0x2t
        0xat
        -0x13t
        -0x2t
        -0xct
        0x8t
        0x10t
        -0xet
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/b/e;->d:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/b/e;->d:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/b/e;->f:[B

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v3, p0, 0x7

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p2, 0xa

    rsub-int/lit8 v0, v0, 0x56

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/b/e;
    .locals 1

    const-class v0, Lcom/datami/smi/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/e;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/b/e;
    .locals 1

    sget-object v0, Lcom/datami/smi/b/e;->e:[Lcom/datami/smi/b/e;

    invoke-virtual {v0}, [Lcom/datami/smi/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/b/e;

    return-object v0
.end method
