.class public final enum Lcga;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcga;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcga;

.field public static final enum BOTH_SIDED:Lcga;

.field public static final enum BOTTOM:Lcga;

.field public static final enum BOTTOM_INSIDE:Lcga;

.field public static final enum TOP:Lcga;

.field public static final enum TOP_INSIDE:Lcga;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcga;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcga;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcga;->TOP:Lcga;

    new-instance v0, Lcga;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcga;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcga;->BOTTOM:Lcga;

    new-instance v0, Lcga;

    const-string v1, "BOTH_SIDED"

    invoke-direct {v0, v1, v4}, Lcga;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcga;->BOTH_SIDED:Lcga;

    new-instance v0, Lcga;

    const-string v1, "TOP_INSIDE"

    invoke-direct {v0, v1, v5}, Lcga;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcga;->TOP_INSIDE:Lcga;

    new-instance v0, Lcga;

    const-string v1, "BOTTOM_INSIDE"

    invoke-direct {v0, v1, v6}, Lcga;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcga;->BOTTOM_INSIDE:Lcga;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lcga;

    sget-object v1, Lcga;->TOP:Lcga;

    aput-object v1, v0, v2

    sget-object v1, Lcga;->BOTTOM:Lcga;

    aput-object v1, v0, v3

    sget-object v1, Lcga;->BOTH_SIDED:Lcga;

    aput-object v1, v0, v4

    sget-object v1, Lcga;->TOP_INSIDE:Lcga;

    aput-object v1, v0, v5

    sget-object v1, Lcga;->BOTTOM_INSIDE:Lcga;

    aput-object v1, v0, v6

    sput-object v0, Lcga;->$VALUES:[Lcga;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcga;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcga;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcga;

    return-object v0
.end method

.method public static values()[Lcga;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcga;->$VALUES:[Lcga;

    invoke-virtual {v0}, [Lcga;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcga;

    return-object v0
.end method
