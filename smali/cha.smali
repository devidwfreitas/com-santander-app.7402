.class public final enum Lcha;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcha;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcha;

.field public static final enum INSIDE_SLICE:Lcha;

.field public static final enum OUTSIDE_SLICE:Lcha;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcha;

    const-string v1, "INSIDE_SLICE"

    invoke-direct {v0, v1, v2}, Lcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcha;->INSIDE_SLICE:Lcha;

    .line 210
    new-instance v0, Lcha;

    const-string v1, "OUTSIDE_SLICE"

    invoke-direct {v0, v1, v3}, Lcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcha;->OUTSIDE_SLICE:Lcha;

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Lcha;

    sget-object v1, Lcha;->INSIDE_SLICE:Lcha;

    aput-object v1, v0, v2

    sget-object v1, Lcha;->OUTSIDE_SLICE:Lcha;

    aput-object v1, v0, v3

    sput-object v0, Lcha;->$VALUES:[Lcha;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcha;
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcha;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcha;

    return-object v0
.end method

.method public static values()[Lcha;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcha;->$VALUES:[Lcha;

    invoke-virtual {v0}, [Lcha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcha;

    return-object v0
.end method
