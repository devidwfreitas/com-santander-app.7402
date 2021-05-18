.class public final enum Lcai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcai;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcai;

.field public static final enum ASKFOR:Lcai;

.field public static final enum SEND:Lcai;

.field public static final enum TURN:Lcai;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcai;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v2}, Lcai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcai;->SEND:Lcai;

    .line 35
    new-instance v0, Lcai;

    const-string v1, "ASKFOR"

    invoke-direct {v0, v1, v3}, Lcai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcai;->ASKFOR:Lcai;

    .line 36
    new-instance v0, Lcai;

    const-string v1, "TURN"

    invoke-direct {v0, v1, v4}, Lcai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcai;->TURN:Lcai;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcai;

    sget-object v1, Lcai;->SEND:Lcai;

    aput-object v1, v0, v2

    sget-object v1, Lcai;->ASKFOR:Lcai;

    aput-object v1, v0, v3

    sget-object v1, Lcai;->TURN:Lcai;

    aput-object v1, v0, v4

    sput-object v0, Lcai;->$VALUES:[Lcai;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcai;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcai;

    return-object v0
.end method

.method public static values()[Lcai;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcai;->$VALUES:[Lcai;

    invoke-virtual {v0}, [Lcai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcai;

    return-object v0
.end method
