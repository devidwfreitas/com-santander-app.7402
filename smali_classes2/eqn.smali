.class public final enum Leqn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leqn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leqn;

.field public static final enum BYTE_SEGMENTS:Leqn;

.field public static final enum ERROR_CORRECTION_LEVEL:Leqn;

.field public static final enum ISSUE_NUMBER:Leqn;

.field public static final enum ORIENTATION:Leqn;

.field public static final enum OTHER:Leqn;

.field public static final enum PDF417_EXTRA_METADATA:Leqn;

.field public static final enum POSSIBLE_COUNTRY:Leqn;

.field public static final enum STRUCTURED_APPEND_PARITY:Leqn;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Leqn;

.field public static final enum SUGGESTED_PRICE:Leqn;

.field public static final enum UPC_EAN_EXTENSION:Leqn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Leqn;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->OTHER:Leqn;

    .line 39
    new-instance v0, Leqn;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v4}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->ORIENTATION:Leqn;

    .line 50
    new-instance v0, Leqn;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1, v5}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->BYTE_SEGMENTS:Leqn;

    .line 56
    new-instance v0, Leqn;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1, v6}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->ERROR_CORRECTION_LEVEL:Leqn;

    .line 61
    new-instance v0, Leqn;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1, v7}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->ISSUE_NUMBER:Leqn;

    .line 67
    new-instance v0, Leqn;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->SUGGESTED_PRICE:Leqn;

    .line 73
    new-instance v0, Leqn;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->POSSIBLE_COUNTRY:Leqn;

    .line 78
    new-instance v0, Leqn;

    const-string v1, "UPC_EAN_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->UPC_EAN_EXTENSION:Leqn;

    .line 83
    new-instance v0, Leqn;

    const-string v1, "PDF417_EXTRA_METADATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->PDF417_EXTRA_METADATA:Leqn;

    .line 89
    new-instance v0, Leqn;

    const-string v1, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->STRUCTURED_APPEND_SEQUENCE:Leqn;

    .line 95
    new-instance v0, Leqn;

    const-string v1, "STRUCTURED_APPEND_PARITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Leqn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqn;->STRUCTURED_APPEND_PARITY:Leqn;

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Leqn;

    sget-object v1, Leqn;->OTHER:Leqn;

    aput-object v1, v0, v3

    sget-object v1, Leqn;->ORIENTATION:Leqn;

    aput-object v1, v0, v4

    sget-object v1, Leqn;->BYTE_SEGMENTS:Leqn;

    aput-object v1, v0, v5

    sget-object v1, Leqn;->ERROR_CORRECTION_LEVEL:Leqn;

    aput-object v1, v0, v6

    sget-object v1, Leqn;->ISSUE_NUMBER:Leqn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leqn;->SUGGESTED_PRICE:Leqn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Leqn;->POSSIBLE_COUNTRY:Leqn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Leqn;->UPC_EAN_EXTENSION:Leqn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Leqn;->PDF417_EXTRA_METADATA:Leqn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Leqn;->STRUCTURED_APPEND_SEQUENCE:Leqn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Leqn;->STRUCTURED_APPEND_PARITY:Leqn;

    aput-object v2, v0, v1

    sput-object v0, Leqn;->$VALUES:[Leqn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leqn;
    .locals 1

    .prologue
    .line 25
    const-class v0, Leqn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leqn;

    return-object v0
.end method

.method public static values()[Leqn;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Leqn;->$VALUES:[Leqn;

    invoke-virtual {v0}, [Leqn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leqn;

    return-object v0
.end method
