.class public final enum Lepy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lepy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lepy;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lepy;

.field public static final enum ALLOWED_LENGTHS:Lepy;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lepy;

.field public static final enum ASSUME_GS1:Lepy;

.field public static final enum CHARACTER_SET:Lepy;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lepy;

.field public static final enum OTHER:Lepy;

.field public static final enum POSSIBLE_FORMATS:Lepy;

.field public static final enum PURE_BARCODE:Lepy;

.field public static final enum RETURN_CODABAR_START_END:Lepy;

.field public static final enum TRY_HARDER:Lepy;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lepy;

    const-string v1, "OTHER"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->OTHER:Lepy;

    .line 41
    new-instance v0, Lepy;

    const-string v1, "PURE_BARCODE"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v5, v2}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->PURE_BARCODE:Lepy;

    .line 47
    new-instance v0, Lepy;

    const-string v1, "POSSIBLE_FORMATS"

    const-class v2, Ljava/util/List;

    invoke-direct {v0, v1, v6, v2}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->POSSIBLE_FORMATS:Lepy;

    .line 53
    new-instance v0, Lepy;

    const-string v1, "TRY_HARDER"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v7, v2}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->TRY_HARDER:Lepy;

    .line 58
    new-instance v0, Lepy;

    const-string v1, "CHARACTER_SET"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->CHARACTER_SET:Lepy;

    .line 63
    new-instance v0, Lepy;

    const-string v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    const-class v3, [I

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->ALLOWED_LENGTHS:Lepy;

    .line 69
    new-instance v0, Lepy;

    const-string v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->ASSUME_CODE_39_CHECK_DIGIT:Lepy;

    .line 76
    new-instance v0, Lepy;

    const-string v1, "ASSUME_GS1"

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->ASSUME_GS1:Lepy;

    .line 83
    new-instance v0, Lepy;

    const-string v1, "RETURN_CODABAR_START_END"

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->RETURN_CODABAR_START_END:Lepy;

    .line 89
    new-instance v0, Lepy;

    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    const/16 v2, 0x9

    const-class v3, Leqp;

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->NEED_RESULT_POINT_CALLBACK:Lepy;

    .line 99
    new-instance v0, Lepy;

    const-string v1, "ALLOWED_EAN_EXTENSIONS"

    const/16 v2, 0xa

    const-class v3, [I

    invoke-direct {v0, v1, v2, v3}, Lepy;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lepy;->ALLOWED_EAN_EXTENSIONS:Lepy;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lepy;

    sget-object v1, Lepy;->OTHER:Lepy;

    aput-object v1, v0, v4

    sget-object v1, Lepy;->PURE_BARCODE:Lepy;

    aput-object v1, v0, v5

    sget-object v1, Lepy;->POSSIBLE_FORMATS:Lepy;

    aput-object v1, v0, v6

    sget-object v1, Lepy;->TRY_HARDER:Lepy;

    aput-object v1, v0, v7

    sget-object v1, Lepy;->CHARACTER_SET:Lepy;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lepy;->ALLOWED_LENGTHS:Lepy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lepy;->ASSUME_CODE_39_CHECK_DIGIT:Lepy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lepy;->ASSUME_GS1:Lepy;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lepy;->RETURN_CODABAR_START_END:Lepy;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lepy;->NEED_RESULT_POINT_CALLBACK:Lepy;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lepy;->ALLOWED_EAN_EXTENSIONS:Lepy;

    aput-object v2, v0, v1

    sput-object v0, Lepy;->$VALUES:[Lepy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lepy;->valueType:Ljava/lang/Class;

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lepy;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lepy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lepy;

    return-object v0
.end method

.method public static values()[Lepy;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lepy;->$VALUES:[Lepy;

    invoke-virtual {v0}, [Lepy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lepy;

    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lepy;->valueType:Ljava/lang/Class;

    return-object v0
.end method
