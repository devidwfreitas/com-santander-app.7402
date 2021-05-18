.class public final enum Lbmu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbmu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbmu;

.field public static final enum CUSTOM_APP_EVENTS:Lbmu;

.field public static final enum MOBILE_INSTALL_EVENT:Lbmu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lbmu;

    const-string v1, "MOBILE_INSTALL_EVENT"

    invoke-direct {v0, v1, v2}, Lbmu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmu;->MOBILE_INSTALL_EVENT:Lbmu;

    .line 42
    new-instance v0, Lbmu;

    const-string v1, "CUSTOM_APP_EVENTS"

    invoke-direct {v0, v1, v3}, Lbmu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmu;->CUSTOM_APP_EVENTS:Lbmu;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lbmu;

    sget-object v1, Lbmu;->MOBILE_INSTALL_EVENT:Lbmu;

    aput-object v1, v0, v2

    sget-object v1, Lbmu;->CUSTOM_APP_EVENTS:Lbmu;

    aput-object v1, v0, v3

    sput-object v0, Lbmu;->$VALUES:[Lbmu;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbmu;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lbmu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbmu;

    return-object v0
.end method

.method public static values()[Lbmu;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbmu;->$VALUES:[Lbmu;

    invoke-virtual {v0}, [Lbmu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbmu;

    return-object v0
.end method
