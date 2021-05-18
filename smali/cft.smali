.class public final enum Lcft;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcft;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcft;

.field public static final enum ABOVE_CHART_CENTER:Lcft;

.field public static final enum ABOVE_CHART_LEFT:Lcft;

.field public static final enum ABOVE_CHART_RIGHT:Lcft;

.field public static final enum BELOW_CHART_CENTER:Lcft;

.field public static final enum BELOW_CHART_LEFT:Lcft;

.field public static final enum BELOW_CHART_RIGHT:Lcft;

.field public static final enum LEFT_OF_CHART:Lcft;

.field public static final enum LEFT_OF_CHART_CENTER:Lcft;

.field public static final enum LEFT_OF_CHART_INSIDE:Lcft;

.field public static final enum PIECHART_CENTER:Lcft;

.field public static final enum RIGHT_OF_CHART:Lcft;

.field public static final enum RIGHT_OF_CHART_CENTER:Lcft;

.field public static final enum RIGHT_OF_CHART_INSIDE:Lcft;


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
    new-instance v0, Lcft;

    const-string v1, "RIGHT_OF_CHART"

    invoke-direct {v0, v1, v3}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->RIGHT_OF_CHART:Lcft;

    new-instance v0, Lcft;

    const-string v1, "RIGHT_OF_CHART_CENTER"

    invoke-direct {v0, v1, v4}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->RIGHT_OF_CHART_CENTER:Lcft;

    new-instance v0, Lcft;

    const-string v1, "RIGHT_OF_CHART_INSIDE"

    invoke-direct {v0, v1, v5}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->RIGHT_OF_CHART_INSIDE:Lcft;

    .line 31
    new-instance v0, Lcft;

    const-string v1, "LEFT_OF_CHART"

    invoke-direct {v0, v1, v6}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->LEFT_OF_CHART:Lcft;

    new-instance v0, Lcft;

    const-string v1, "LEFT_OF_CHART_CENTER"

    invoke-direct {v0, v1, v7}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->LEFT_OF_CHART_CENTER:Lcft;

    new-instance v0, Lcft;

    const-string v1, "LEFT_OF_CHART_INSIDE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->LEFT_OF_CHART_INSIDE:Lcft;

    .line 32
    new-instance v0, Lcft;

    const-string v1, "BELOW_CHART_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->BELOW_CHART_LEFT:Lcft;

    new-instance v0, Lcft;

    const-string v1, "BELOW_CHART_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->BELOW_CHART_RIGHT:Lcft;

    new-instance v0, Lcft;

    const-string v1, "BELOW_CHART_CENTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->BELOW_CHART_CENTER:Lcft;

    .line 33
    new-instance v0, Lcft;

    const-string v1, "ABOVE_CHART_LEFT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->ABOVE_CHART_LEFT:Lcft;

    new-instance v0, Lcft;

    const-string v1, "ABOVE_CHART_RIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->ABOVE_CHART_RIGHT:Lcft;

    new-instance v0, Lcft;

    const-string v1, "ABOVE_CHART_CENTER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->ABOVE_CHART_CENTER:Lcft;

    .line 34
    new-instance v0, Lcft;

    const-string v1, "PIECHART_CENTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcft;->PIECHART_CENTER:Lcft;

    .line 28
    const/16 v0, 0xd

    new-array v0, v0, [Lcft;

    sget-object v1, Lcft;->RIGHT_OF_CHART:Lcft;

    aput-object v1, v0, v3

    sget-object v1, Lcft;->RIGHT_OF_CHART_CENTER:Lcft;

    aput-object v1, v0, v4

    sget-object v1, Lcft;->RIGHT_OF_CHART_INSIDE:Lcft;

    aput-object v1, v0, v5

    sget-object v1, Lcft;->LEFT_OF_CHART:Lcft;

    aput-object v1, v0, v6

    sget-object v1, Lcft;->LEFT_OF_CHART_CENTER:Lcft;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcft;->LEFT_OF_CHART_INSIDE:Lcft;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcft;->BELOW_CHART_LEFT:Lcft;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcft;->BELOW_CHART_RIGHT:Lcft;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcft;->BELOW_CHART_CENTER:Lcft;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcft;->ABOVE_CHART_LEFT:Lcft;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcft;->ABOVE_CHART_RIGHT:Lcft;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcft;->ABOVE_CHART_CENTER:Lcft;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcft;->PIECHART_CENTER:Lcft;

    aput-object v2, v0, v1

    sput-object v0, Lcft;->$VALUES:[Lcft;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcft;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcft;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcft;

    return-object v0
.end method

.method public static values()[Lcft;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcft;->$VALUES:[Lcft;

    invoke-virtual {v0}, [Lcft;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcft;

    return-object v0
.end method
