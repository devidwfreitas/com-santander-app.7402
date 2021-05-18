.class public final enum Lmch;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmch;

.field public static final enum PLAN1:Lmch;

.field public static final enum PLAN2:Lmch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lmch;

    const-string v1, "PLAN1"

    invoke-direct {v0, v1, v2}, Lmch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmch;->PLAN1:Lmch;

    new-instance v0, Lmch;

    const-string v1, "PLAN2"

    invoke-direct {v0, v1, v3}, Lmch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmch;->PLAN2:Lmch;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lmch;

    sget-object v1, Lmch;->PLAN1:Lmch;

    aput-object v1, v0, v2

    sget-object v1, Lmch;->PLAN2:Lmch;

    aput-object v1, v0, v3

    sput-object v0, Lmch;->$VALUES:[Lmch;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmch;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lmch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmch;

    return-object v0
.end method

.method public static values()[Lmch;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmch;->$VALUES:[Lmch;

    invoke-virtual {v0}, [Lmch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmch;

    return-object v0
.end method
