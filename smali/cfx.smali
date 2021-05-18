.class public final enum Lcfx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfx;

.field public static final enum LEFT_BOTTOM:Lcfx;

.field public static final enum LEFT_TOP:Lcfx;

.field public static final enum RIGHT_BOTTOM:Lcfx;

.field public static final enum RIGHT_TOP:Lcfx;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcfx;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v2}, Lcfx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfx;->LEFT_TOP:Lcfx;

    new-instance v0, Lcfx;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcfx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfx;->LEFT_BOTTOM:Lcfx;

    new-instance v0, Lcfx;

    const-string v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v4}, Lcfx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfx;->RIGHT_TOP:Lcfx;

    new-instance v0, Lcfx;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcfx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfx;->RIGHT_BOTTOM:Lcfx;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcfx;

    sget-object v1, Lcfx;->LEFT_TOP:Lcfx;

    aput-object v1, v0, v2

    sget-object v1, Lcfx;->LEFT_BOTTOM:Lcfx;

    aput-object v1, v0, v3

    sget-object v1, Lcfx;->RIGHT_TOP:Lcfx;

    aput-object v1, v0, v4

    sget-object v1, Lcfx;->RIGHT_BOTTOM:Lcfx;

    aput-object v1, v0, v5

    sput-object v0, Lcfx;->$VALUES:[Lcfx;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcfx;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcfx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfx;

    return-object v0
.end method

.method public static values()[Lcfx;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcfx;->$VALUES:[Lcfx;

    invoke-virtual {v0}, [Lcfx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfx;

    return-object v0
.end method
