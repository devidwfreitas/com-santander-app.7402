.class public final enum Lcgc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcgc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcgc;

.field public static final enum LEFT:Lcgc;

.field public static final enum RIGHT:Lcgc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcgc;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcgc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgc;->LEFT:Lcgc;

    new-instance v0, Lcgc;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcgc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgc;->RIGHT:Lcgc;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcgc;

    sget-object v1, Lcgc;->LEFT:Lcgc;

    aput-object v1, v0, v2

    sget-object v1, Lcgc;->RIGHT:Lcgc;

    aput-object v1, v0, v3

    sput-object v0, Lcgc;->$VALUES:[Lcgc;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcgc;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcgc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcgc;

    return-object v0
.end method

.method public static values()[Lcgc;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcgc;->$VALUES:[Lcgc;

    invoke-virtual {v0}, [Lcgc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcgc;

    return-object v0
.end method
