.class public final enum Lcff;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcff;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcff;

.field public static final enum BAR:Lcff;

.field public static final enum BUBBLE:Lcff;

.field public static final enum CANDLE:Lcff;

.field public static final enum LINE:Lcff;

.field public static final enum SCATTER:Lcff;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcff;

    const-string v1, "BAR"

    invoke-direct {v0, v1, v2}, Lcff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcff;->BAR:Lcff;

    new-instance v0, Lcff;

    const-string v1, "BUBBLE"

    invoke-direct {v0, v1, v3}, Lcff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcff;->BUBBLE:Lcff;

    new-instance v0, Lcff;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v4}, Lcff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcff;->LINE:Lcff;

    new-instance v0, Lcff;

    const-string v1, "CANDLE"

    invoke-direct {v0, v1, v5}, Lcff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcff;->CANDLE:Lcff;

    new-instance v0, Lcff;

    const-string v1, "SCATTER"

    invoke-direct {v0, v1, v6}, Lcff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcff;->SCATTER:Lcff;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcff;

    sget-object v1, Lcff;->BAR:Lcff;

    aput-object v1, v0, v2

    sget-object v1, Lcff;->BUBBLE:Lcff;

    aput-object v1, v0, v3

    sget-object v1, Lcff;->LINE:Lcff;

    aput-object v1, v0, v4

    sget-object v1, Lcff;->CANDLE:Lcff;

    aput-object v1, v0, v5

    sget-object v1, Lcff;->SCATTER:Lcff;

    aput-object v1, v0, v6

    sput-object v0, Lcff;->$VALUES:[Lcff;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcff;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcff;

    return-object v0
.end method

.method public static values()[Lcff;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcff;->$VALUES:[Lcff;

    invoke-virtual {v0}, [Lcff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcff;

    return-object v0
.end method
