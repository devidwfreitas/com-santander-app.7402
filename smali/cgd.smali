.class public final enum Lcgd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcgd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcgd;

.field public static final enum INSIDE_CHART:Lcgd;

.field public static final enum OUTSIDE_CHART:Lcgd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcgd;

    const-string v1, "OUTSIDE_CHART"

    invoke-direct {v0, v1, v2}, Lcgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgd;->OUTSIDE_CHART:Lcgd;

    new-instance v0, Lcgd;

    const-string v1, "INSIDE_CHART"

    invoke-direct {v0, v1, v3}, Lcgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgd;->INSIDE_CHART:Lcgd;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcgd;

    sget-object v1, Lcgd;->OUTSIDE_CHART:Lcgd;

    aput-object v1, v0, v2

    sget-object v1, Lcgd;->INSIDE_CHART:Lcgd;

    aput-object v1, v0, v3

    sput-object v0, Lcgd;->$VALUES:[Lcgd;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcgd;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcgd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcgd;

    return-object v0
.end method

.method public static values()[Lcgd;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcgd;->$VALUES:[Lcgd;

    invoke-virtual {v0}, [Lcgd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcgd;

    return-object v0
.end method
