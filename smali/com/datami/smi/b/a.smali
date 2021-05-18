.class public final enum Lcom/datami/smi/b/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/b/a;

.field public static final enum b:Lcom/datami/smi/b/a;

.field public static final enum c:Lcom/datami/smi/b/a;

.field private static final synthetic e:[Lcom/datami/smi/b/a;

.field private static final f:[B

.field private static g:I


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/16 v7, 0x11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/a;->f:[B

    const/16 v0, 0xa4

    sput v0, Lcom/datami/smi/b/a;->g:I

    new-instance v0, Lcom/datami/smi/b/a;

    sget-object v1, Lcom/datami/smi/b/a;->f:[B

    aget-byte v1, v1, v8

    neg-int v1, v1

    or-int/lit8 v2, v1, 0x18

    sget-object v3, Lcom/datami/smi/b/a;->f:[B

    aget-byte v3, v3, v8

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lcom/datami/smi/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/a;->a:Lcom/datami/smi/b/a;

    new-instance v0, Lcom/datami/smi/b/a;

    sget-object v1, Lcom/datami/smi/b/a;->f:[B

    aget-byte v1, v1, v7

    or-int/lit8 v2, v1, 0x20

    sget-object v3, Lcom/datami/smi/b/a;->f:[B

    aget-byte v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v5}, Lcom/datami/smi/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/a;->b:Lcom/datami/smi/b/a;

    new-instance v0, Lcom/datami/smi/b/a;

    sget-object v1, Lcom/datami/smi/b/a;->f:[B

    aget-byte v1, v1, v7

    or-int/lit8 v2, v1, 0x7

    invoke-static {v1, v1, v2}, Lcom/datami/smi/b/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lcom/datami/smi/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/a;->c:Lcom/datami/smi/b/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/datami/smi/b/a;

    sget-object v1, Lcom/datami/smi/b/a;->a:Lcom/datami/smi/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/datami/smi/b/a;->b:Lcom/datami/smi/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/b/a;->c:Lcom/datami/smi/b/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/datami/smi/b/a;->e:[Lcom/datami/smi/b/a;

    return-void

    :array_0
    .array-data 1
        0x54t
        -0x27t
        -0x25t
        0x57t
        -0x1t
        0x3t
        0x6t
        -0x2t
        0x1bt
        -0x1dt
        0xet
        -0x9t
        0x1ct
        -0xct
        -0xct
        -0x3t
        0x15t
        0x0t
        -0xbt
        0x18t
        -0xft
        0x0t
        0x12t
        -0x12t
        -0xat
        0x15t
        -0x6t
        -0xat
        0x6t
        0x2t
        0x11t
        -0x1bt
        -0x1t
        0x8t
        -0x4t
        0x3t
        -0x1t
        0x3t
        0x6t
        -0x2t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/b/a;->d:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/b/a;->d:I

    return v0
.end method

.method public static a(I)Lcom/datami/smi/b/a;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/datami/smi/b/a;->b:Lcom/datami/smi/b/a;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/b/a;->a:Lcom/datami/smi/b/a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/b/a;->c:Lcom/datami/smi/b/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/b/a;->f:[B

    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v3, v0, 0x5

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x4

    mul-int/lit8 v0, p0, 0xb

    add-int/lit8 v0, v0, 0x43

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    move v0, v3

    :goto_1
    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    if-ne v0, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/b/a;
    .locals 1

    const-class v0, Lcom/datami/smi/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/a;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/b/a;
    .locals 1

    sget-object v0, Lcom/datami/smi/b/a;->e:[Lcom/datami/smi/b/a;

    invoke-virtual {v0}, [Lcom/datami/smi/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/b/a;

    return-object v0
.end method
