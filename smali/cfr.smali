.class public final enum Lcfr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfr;

.field public static final enum CENTER:Lcfr;

.field public static final enum LEFT:Lcfr;

.field public static final enum RIGHT:Lcfr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcfr;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->LEFT:Lcfr;

    new-instance v0, Lcfr;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->CENTER:Lcfr;

    new-instance v0, Lcfr;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->RIGHT:Lcfr;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcfr;

    sget-object v1, Lcfr;->LEFT:Lcfr;

    aput-object v1, v0, v2

    sget-object v1, Lcfr;->CENTER:Lcfr;

    aput-object v1, v0, v3

    sget-object v1, Lcfr;->RIGHT:Lcfr;

    aput-object v1, v0, v4

    sput-object v0, Lcfr;->$VALUES:[Lcfr;

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

.method public static valueOf(Ljava/lang/String;)Lcfr;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcfr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfr;

    return-object v0
.end method

.method public static values()[Lcfr;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcfr;->$VALUES:[Lcfr;

    invoke-virtual {v0}, [Lcfr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfr;

    return-object v0
.end method
