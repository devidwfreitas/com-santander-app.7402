.class public final enum Lbud;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbud;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbud;

.field public static final enum LOCATION_PERMISSION_DENIED:Lbud;

.field public static final enum LOCATION_SERVICES_DISABLED:Lbud;

.field public static final enum LOCATION_TIMEOUT:Lbud;

.field public static final enum UNKNOWN_ERROR:Lbud;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lbud;

    const-string v1, "LOCATION_PERMISSION_DENIED"

    invoke-direct {v0, v1, v2}, Lbud;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbud;->LOCATION_PERMISSION_DENIED:Lbud;

    .line 109
    new-instance v0, Lbud;

    const-string v1, "LOCATION_SERVICES_DISABLED"

    invoke-direct {v0, v1, v3}, Lbud;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbud;->LOCATION_SERVICES_DISABLED:Lbud;

    .line 113
    new-instance v0, Lbud;

    const-string v1, "LOCATION_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lbud;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbud;->LOCATION_TIMEOUT:Lbud;

    .line 117
    new-instance v0, Lbud;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lbud;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbud;->UNKNOWN_ERROR:Lbud;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lbud;

    sget-object v1, Lbud;->LOCATION_PERMISSION_DENIED:Lbud;

    aput-object v1, v0, v2

    sget-object v1, Lbud;->LOCATION_SERVICES_DISABLED:Lbud;

    aput-object v1, v0, v3

    sget-object v1, Lbud;->LOCATION_TIMEOUT:Lbud;

    aput-object v1, v0, v4

    sget-object v1, Lbud;->UNKNOWN_ERROR:Lbud;

    aput-object v1, v0, v5

    sput-object v0, Lbud;->$VALUES:[Lbud;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbud;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lbud;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbud;

    return-object v0
.end method

.method public static values()[Lbud;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lbud;->$VALUES:[Lbud;

    invoke-virtual {v0}, [Lbud;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbud;

    return-object v0
.end method
