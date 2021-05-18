.class public final enum Lcom/ca/mdo/CaMDOError;
.super Ljava/lang/Enum;
.source "CaMDOError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ca/mdo/CaMDOError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_INVALID_DATALENGTH_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_JSON_PARSE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_LOG_NETWORKMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_LOG_NUMERICMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_LOG_TEXTMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_POLICY_NOT_APPLIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_START_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UPLOAD_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UPLOAD_INPROGRESS_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UPLOAD_NOT_OPTED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UPLOAD_PERMISSION_DENIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

.field public static final enum CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UNKNOWN_ERROR_CODE"

    const/16 v2, 0x834

    const-string v3, "Unknown Error"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 9
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_INVALID_PARAMETER_ERROR_CODE"

    const/16 v2, 0x835

    const-string v3, "Invalid parameters"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 10
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_LOG_INITIALIZE_ERROR_CODE"

    const/16 v2, 0x836

    const-string v3, "Initialize Error"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 11
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_LOG_TEXTMETRIC_ERROR_CODE"

    const/16 v2, 0x837

    const-string v3, "Text Metric Error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_TEXTMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 12
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_LOG_NUMERICMETRIC_ERROR_CODE"

    const/16 v2, 0x838

    const-string v3, "Numeric Metric Error"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NUMERICMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 13
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_LOG_NETWORKMETRIC_ERROR_CODE"

    const/4 v2, 0x5

    const/16 v3, 0x839

    const-string v4, "Network Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NETWORKMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 14
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE"

    const/4 v2, 0x6

    const/16 v3, 0x83a

    const-string v4, "Send Screenshot Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 15
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_START_TRANSACTION_FAILED_ERROR_CODE"

    const/4 v2, 0x7

    const/16 v3, 0x83b

    const-string v4, "Start transaction failed error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_START_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 16
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE"

    const/16 v2, 0x8

    const/16 v3, 0x83c

    const-string v4, "Stop transaction failed error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 17
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UPLOAD_ERROR_CODE"

    const/16 v2, 0x9

    const/16 v3, 0x83d

    const-string v4, "Failed to Upload data"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 18
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE"

    const/16 v2, 0xa

    const/16 v3, 0x83e

    const-string v4, "Wifi is not enabled for the Upload"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 19
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UPLOAD_PERMISSION_DENIED_ERROR_CODE"

    const/16 v2, 0xb

    const/16 v3, 0x83f

    const-string v4, "Upload Permission Denied."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_PERMISSION_DENIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 20
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_POLICY_NOT_APPLIED_ERROR_CODE"

    const/16 v2, 0xc

    const/16 v3, 0x840

    const-string v4, "Policy not applied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_POLICY_NOT_APPLIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 21
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UPLOAD_NOT_OPTED_ERROR_CODE"

    const/16 v2, 0xd

    const/16 v3, 0x841

    const-string v4, "Upload: Not opted "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_NOT_OPTED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 22
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_UPLOAD_INPROGRESS_ERROR_CODE"

    const/16 v2, 0xe

    const/16 v3, 0x842

    const-string v4, "Error while upload is in progress"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_INPROGRESS_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 23
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_INVALID_DATALENGTH_ERROR_CODE"

    const/16 v2, 0xf

    const/16 v3, 0x843

    const-string v4, "Invalid data length"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_DATALENGTH_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 24
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_JSON_PARSE_ERROR_CODE"

    const/16 v2, 0x10

    const/16 v3, 0x844

    const-string v4, "JSON Parsing error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_JSON_PARSE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 25
    new-instance v0, Lcom/ca/mdo/CaMDOError;

    const-string v1, "CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE"

    const/16 v2, 0x11

    const/16 v3, 0x845

    const-string v4, "Transaction not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ca/mdo/CaMDOError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CaMDOError;->CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ca/mdo/CaMDOError;

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_TEXTMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NUMERICMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NETWORKMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_START_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_PERMISSION_DENIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_POLICY_NOT_APPLIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_NOT_OPTED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_INPROGRESS_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_DATALENGTH_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_JSON_PARSE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ca/mdo/CaMDOError;->$VALUES:[Lcom/ca/mdo/CaMDOError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/ca/mdo/CaMDOError;->code:I

    .line 34
    iput-object p4, p0, Lcom/ca/mdo/CaMDOError;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mdo/CaMDOError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/ca/mdo/CaMDOError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ca/mdo/CaMDOError;

    return-object v0
.end method

.method public static values()[Lcom/ca/mdo/CaMDOError;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ca/mdo/CaMDOError;->$VALUES:[Lcom/ca/mdo/CaMDOError;

    invoke-virtual {v0}, [Lcom/ca/mdo/CaMDOError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mdo/CaMDOError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ca/mdo/CaMDOError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ca/mdo/CaMDOError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ca/mdo/CaMDOError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mdo/CaMDOError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
