.class public final enum Lbr/com/santander/msgsdk/util/enums/StatusMessage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbr/com/santander/msgsdk/util/enums/StatusMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/santander/msgsdk/util/enums/StatusMessage;

.field public static final enum DISCARTED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

.field public static final enum OPENED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

.field public static final enum RECEIVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

.field public static final enum REMOVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    const-string v1, "RECEIVED"

    const-string v2, "RECEIVED"

    invoke-direct {v0, v1, v3, v2}, Lbr/com/santander/msgsdk/util/enums/StatusMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->RECEIVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    .line 10
    new-instance v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    const-string v1, "OPENED"

    const-string v2, "OPENED"

    invoke-direct {v0, v1, v4, v2}, Lbr/com/santander/msgsdk/util/enums/StatusMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->OPENED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    .line 11
    new-instance v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    const-string v1, "DISCARTED"

    const-string v2, "DISCARTED"

    invoke-direct {v0, v1, v5, v2}, Lbr/com/santander/msgsdk/util/enums/StatusMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->DISCARTED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    .line 12
    new-instance v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    const-string v1, "REMOVED"

    const-string v2, "REMOVED"

    invoke-direct {v0, v1, v6, v2}, Lbr/com/santander/msgsdk/util/enums/StatusMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->REMOVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    sget-object v1, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->RECEIVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    aput-object v1, v0, v3

    sget-object v1, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->OPENED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    aput-object v1, v0, v4

    sget-object v1, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->DISCARTED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    aput-object v1, v0, v5

    sget-object v1, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->REMOVED:Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    aput-object v1, v0, v6

    sput-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->$VALUES:[Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/santander/msgsdk/util/enums/StatusMessage;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    return-object v0
.end method

.method public static values()[Lbr/com/santander/msgsdk/util/enums/StatusMessage;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->$VALUES:[Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    invoke-virtual {v0}, [Lbr/com/santander/msgsdk/util/enums/StatusMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/santander/msgsdk/util/enums/StatusMessage;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/enums/StatusMessage;->value:Ljava/lang/String;

    return-object v0
.end method
