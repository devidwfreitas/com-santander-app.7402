.class public final enum Lcom/datami/smi/SdState;
.super Ljava/lang/Enum;


# static fields
.field private static final $:[B

.field private static $$:I

.field private static final synthetic $VALUES:[Lcom/datami/smi/SdState;

.field public static final enum SD_AVAILABLE:Lcom/datami/smi/SdState;

.field public static final enum SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

.field public static final enum WIFI:Lcom/datami/smi/SdState;


# instance fields
.field private statusCode:I


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/SdState;->$:[B

    add-int/lit8 v0, p0, 0x4

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    rsub-int/lit8 v1, v1, 0x57

    mul-int/lit8 v2, p2, 0x4

    add-int/lit8 v3, v2, 0x4

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v0

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/SdState;->$:[B

    const/16 v0, 0x25

    sput v0, Lcom/datami/smi/SdState;->$$:I

    new-instance v0, Lcom/datami/smi/SdState;

    const/16 v1, 0x19

    invoke-static {v1, v5, v5}, Lcom/datami/smi/SdState;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v6}, Lcom/datami/smi/SdState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    new-instance v0, Lcom/datami/smi/SdState;

    sget-object v1, Lcom/datami/smi/SdState;->$:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    neg-int v2, v1

    sget-object v3, Lcom/datami/smi/SdState;->$:[B

    const/16 v4, 0x1f

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdState;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v7}, Lcom/datami/smi/SdState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    new-instance v0, Lcom/datami/smi/SdState;

    sget-object v1, Lcom/datami/smi/SdState;->$:[B

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/SdState;->$$:I

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x2

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdState;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/datami/smi/SdState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    new-array v0, v8, [Lcom/datami/smi/SdState;

    sget-object v1, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/datami/smi/SdState;->$VALUES:[Lcom/datami/smi/SdState;

    return-void

    :array_0
    .array-data 1
        0x45t
        0x21t
        0x59t
        0x3et
        0xet
        -0x1ct
        0x1dt
        -0x16t
        0x14t
        -0x9t
        -0x4t
        0xat
        -0x2t
        -0xbt
        0x6t
        0xet
        -0x1ct
        0x10t
        -0x2t
        -0x6t
        -0xct
        0x1dt
        -0x16t
        0x14t
        -0x9t
        -0x4t
        0xat
        -0x2t
        -0xbt
        0x6t
        0xdt
        0x2t
        -0x4t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/SdState;->statusCode:I

    return-void
.end method

.method public static valueOf(I)Lcom/datami/smi/SdState;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/SdState;
    .locals 1

    const-class v0, Lcom/datami/smi/SdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/SdState;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/SdState;
    .locals 1

    sget-object v0, Lcom/datami/smi/SdState;->$VALUES:[Lcom/datami/smi/SdState;

    invoke-virtual {v0}, [Lcom/datami/smi/SdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/SdState;

    return-object v0
.end method


# virtual methods
.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/SdState;->statusCode:I

    return v0
.end method
