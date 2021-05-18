.class public final enum Lcfp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfp;

.field public static final enum LEFT_TO_RIGHT:Lcfp;

.field public static final enum RIGHT_TO_LEFT:Lcfp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcfp;

    const-string v1, "LEFT_TO_RIGHT"

    invoke-direct {v0, v1, v2}, Lcfp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfp;->LEFT_TO_RIGHT:Lcfp;

    new-instance v0, Lcfp;

    const-string v1, "RIGHT_TO_LEFT"

    invoke-direct {v0, v1, v3}, Lcfp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfp;->RIGHT_TO_LEFT:Lcfp;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcfp;

    sget-object v1, Lcfp;->LEFT_TO_RIGHT:Lcfp;

    aput-object v1, v0, v2

    sget-object v1, Lcfp;->RIGHT_TO_LEFT:Lcfp;

    aput-object v1, v0, v3

    sput-object v0, Lcfp;->$VALUES:[Lcfp;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcfp;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcfp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfp;

    return-object v0
.end method

.method public static values()[Lcfp;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcfp;->$VALUES:[Lcfp;

    invoke-virtual {v0}, [Lcfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfp;

    return-object v0
.end method
