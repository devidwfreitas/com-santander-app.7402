.class public final enum Lcom/datami/smi/SdReason;
.super Ljava/lang/Enum;


# static fields
.field private static final $:[B

.field private static $$:I

.field private static final synthetic $VALUES:[Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_CONNECTION_TIMEOUT:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_DNS_ERROR:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_FOR_APPLICATION:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_FOR_OPERATOR:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_FOR_URL:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_NO_DATA_CONNECTION:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_PROMOTION_EXPIRED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_PROMOTION_SUSPENDED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SD_STOP_API_CALL:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_SD_TESTING:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED:Lcom/datami/smi/SdReason;

.field public static final enum SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

.field public static final enum SD_REASON_NONE:Lcom/datami/smi/SdReason;


# instance fields
.field private statusCode:I


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    sget-object v7, Lcom/datami/smi/SdReason;->$:[B

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v3, v0, 0x53

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, p0, 0xe

    new-array v2, v1, [B

    if-nez v7, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v2

    aput-byte v9, v3, v0

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v10, v2

    move v2, v3

    move-object v3, v10

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v5, 0xc

    const/16 v4, 0x3e

    const/16 v0, 0x341

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/SdReason;->$:[B

    const/16 v0, 0x46

    sput v0, Lcom/datami/smi/SdReason;->$$:I

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v4

    or-int/lit16 v2, v1, 0x190

    invoke-static {v1, v1, v2}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_REASON_NONE:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit8 v3, v2, 0x74

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_OPERATOR:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x18

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x1e0

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_APPLICATION:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x326

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_URL:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x1ff

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v7}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x151

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x2dd

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_EXPIRED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x23

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x90

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v8}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_SUSPENDED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0xdb

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x2fe

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x23

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x117

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x23

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x19d

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0xdb

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0xb3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x3b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x13a

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    const/16 v1, 0x26

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x273

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v5}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x136

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    invoke-static {v1, v2, v2}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0xa

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit8 v3, v2, 0x49

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x71

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0xfd

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_TESTING:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0xf5

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x1c0

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_STOP_API_CALL:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    const/16 v1, 0x20

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x221

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    const/16 v1, 0x20

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x163

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    const/16 v2, 0x262

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x24e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0xdb

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_NO_DATA_CONNECTION:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit8 v3, v2, 0x27

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_CONNECTION_TIMEOUT:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x2a6

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_DNS_ERROR:Lcom/datami/smi/SdReason;

    new-instance v0, Lcom/datami/smi/SdReason;

    sget-object v1, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v1, v1, v8

    sget-object v2, Lcom/datami/smi/SdReason;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x2bf

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SdReason;->$(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/datami/smi/SdReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/datami/smi/SdReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/datami/smi/SdReason;->SD_REASON_NONE:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_OPERATOR:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_APPLICATION:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_URL:Lcom/datami/smi/SdReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER:Lcom/datami/smi/SdReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_EXPIRED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_SUSPENDED:Lcom/datami/smi/SdReason;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER:Lcom/datami/smi/SdReason;

    aput-object v1, v0, v5

    const/16 v1, 0xd

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_TESTING:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_STOP_API_CALL:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_NO_DATA_CONNECTION:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_CONNECTION_TIMEOUT:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_DNS_ERROR:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/datami/smi/SdReason;->$VALUES:[Lcom/datami/smi/SdReason;

    return-void

    :array_0
    .array-data 1
        0x5t
        0x32t
        0x3ct
        0xct
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xat
        0x3t
        0x11t
        -0xct
        -0x12t
        0x11t
        -0x1t
        -0x10t
        0x17t
        0x3t
        0x4t
        -0x3t
        -0x1t
        -0xdt
        -0xdt
        0x16t
        -0x5t
        0x4t
        0x5t
        0x2t
        -0x11t
        0xft
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x1ct
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0xbt
        0xbt
        -0x4t
        0x8t
        -0xat
        -0x6t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0xct
        -0x2t
        0x5t
        0x0t
        0x1t
        -0x3t
        -0x2t
        0xft
        0x1t
        -0x1bt
        0x16t
        -0x5t
        -0x11t
        0xdt
        0x3t
        0xet
        -0xct
        0x4t
        -0x5t
        0x7t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0x10t
        -0x1t
        0xbt
        -0xdt
        0x11t
        -0x13t
        0x5t
        -0x3t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xft
        -0x2t
        0x3t
        0x2t
        -0x2t
        -0x5t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0xct
        -0x2t
        0x2t
        0x3t
        0xbt
        -0x9t
        0xat
        -0x1t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x1bt
        0xdt
        0xdt
        -0x2t
        -0x2t
        -0xat
        -0x1t
        0x2t
        0x11t
        -0x13t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1bt
        -0xbt
        0x1t
        0x9t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x11t
        -0x1t
        -0x10t
        0x1bt
        0x3t
        -0x13t
        0x13t
        -0x1et
        0x1ct
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x1bt
        0xbt
        0xft
        -0xet
        -0x1t
        0xbt
        -0x5t
        0x7t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xat
        0x2t
        0xet
        -0xdt
        -0xdt
        0x13t
        0x3t
        -0x4t
        0x4t
        -0xbt
        -0xbt
        0x1at
        -0x13t
        0x15t
        -0x2t
        0x0t
        0x1t
        -0x1t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x7t
        -0x14t
        0x9t
        0x11t
        -0xdt
        -0x1t
        0xat
        -0x6t
        0x1t
        -0x11t
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0xct
        -0x2t
        0x5t
        0x0t
        0x1t
        -0x3t
        -0x2t
        0xft
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0x9t
        0x6t
        0x2t
        -0x11t
        0x1et
        -0xft
        0x0t
        -0xft
        0xft
        -0x2t
        0x3t
        -0x9t
        -0x1t
        -0x6t
        0x1et
        -0xbt
        -0x6t
        0xdt
        0x4t
        -0x3t
        -0x15t
        -0x6t
        0xct
        0xet
        -0xft
        0xft
        -0x1bt
        0xdt
        0xdt
        0x4t
        -0x12t
        0x4t
        0x1t
        -0x11t
        0x11t
        -0x1t
        0x1t
        0x9t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xft
        -0x2t
        0x3t
        0x2t
        -0x2t
        -0x5t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x19t
        -0x9t
        -0x6t
        0x7t
        0xat
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x1bt
        0xct
        -0x1t
        0x5t
        -0x1t
        -0xft
        0x1et
        -0xft
        0x7t
        -0x16t
        0x1ct
        0x2t
        -0xbt
        0x0t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0x1et
        -0xft
        0x0t
        0x4t
        0x3t
        0x6t
        0x2t
        -0x13t
        0xbt
        -0x6t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0x1bt
        -0x1t
        -0x11t
        0xdt
        0x6t
        -0x2t
        -0x1at
        0x10t
        -0x3t
        -0xdt
        0xat
        0x2t
        0xet
        -0xdt
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x1et
        -0xdt
        0xat
        -0xet
        0x3t
        0x6t
        0x5t
        -0x1bt
        0x9t
        0x11t
        -0xdt
        -0x1t
        0xat
        -0x6t
        0x1t
        -0x11t
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0xct
        -0x2t
        0x5t
        0x0t
        0x1t
        -0x3t
        -0x2t
        0xft
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x18t
        -0x10t
        -0x8t
        0x1ct
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x19t
        0x5t
        -0x8t
        -0x3t
        -0x9t
        0x3t
        0xdt
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xct
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0xct
        -0x2t
        0x5t
        0x0t
        0x1t
        -0x3t
        -0x2t
        0xft
        0x1t
        -0x1bt
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0x1et
        -0xft
        0x0t
        -0xft
        0x10t
        -0x3t
        -0xdt
        0x1ct
        0x2t
        -0x11t
        0x0t
        0x9t
        0x4t
        -0xdt
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x1bt
        -0xat
        -0x5t
        -0xct
        0x1at
        -0xdt
        0x0t
        0x3t
        -0x3t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xdt
        0xdt
        0x4t
        -0x12t
        0x4t
        0x1t
        -0x11t
        0xat
        0x7t
        0x3t
        -0x3t
        -0x1t
        -0x8t
        0x9t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xft
        -0x2t
        0x3t
        0x2t
        -0x2t
        -0x5t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x1at
        -0x13t
        0x8t
        0x7t
        -0x9t
        0xdt
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0xft
        -0x2t
        0x3t
        0x2t
        -0x2t
        -0x5t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x13t
        0x3t
        -0x4t
        0x4t
        -0xbt
        -0xbt
        0x1at
        -0x13t
        0x15t
        -0x2t
        0x0t
        0x1t
        -0x1t
        0x1t
        0xft
        -0x1bt
        0x11t
        -0x1t
        -0x5t
        -0xbt
        0x1et
        -0x15t
        0x15t
        -0x8t
        -0x3t
        0xbt
        -0x1t
        -0xat
        0x7t
        -0x1at
        0x19t
        -0x9t
        -0x3t
        -0xdt
        0xat
        0x3t
        0x6t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/SdReason;->statusCode:I

    return-void
.end method

.method public static valueOf(I)Lcom/datami/smi/SdReason;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_EXPIRED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_SUSPENDED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_APPLICATION:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_URL:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_TESTING:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_STOP_API_CALL:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_f
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_10
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_11
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_12
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_NO_DATA_CONNECTION:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_13
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_DNS_ERROR:Lcom/datami/smi/SdReason;

    goto :goto_0

    :sswitch_14
    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_CONNECTION_TIMEOUT:Lcom/datami/smi/SdReason;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x4e23 -> :sswitch_0
        0x4e24 -> :sswitch_1
        0x4e27 -> :sswitch_1
        0x4e29 -> :sswitch_2
        0x4e2a -> :sswitch_3
        0x4e2b -> :sswitch_4
        0x4e2c -> :sswitch_5
        0x4e2d -> :sswitch_5
        0x4e2e -> :sswitch_6
        0x4ee9 -> :sswitch_7
        0x4eea -> :sswitch_7
        0x4eeb -> :sswitch_7
        0x186a0 -> :sswitch_9
        0x186a1 -> :sswitch_a
        0x186a4 -> :sswitch_b
        0x186a5 -> :sswitch_d
        0x186a6 -> :sswitch_8
        0x186a7 -> :sswitch_11
        0x186a8 -> :sswitch_e
        0x186a9 -> :sswitch_f
        0x186aa -> :sswitch_10
        0x186ab -> :sswitch_13
        0x186ac -> :sswitch_14
        0x186ad -> :sswitch_12
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/SdReason;
    .locals 1

    const-class v0, Lcom/datami/smi/SdReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/SdReason;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/SdReason;
    .locals 1

    sget-object v0, Lcom/datami/smi/SdReason;->$VALUES:[Lcom/datami/smi/SdReason;

    invoke-virtual {v0}, [Lcom/datami/smi/SdReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/SdReason;

    return-object v0
.end method


# virtual methods
.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/SdReason;->statusCode:I

    return v0
.end method
