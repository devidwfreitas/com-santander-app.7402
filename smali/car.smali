.class public final enum Lcar;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcar;

.field public static final enum PHOTO:Lcar;

.field public static final enum VIDEO:Lcar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcar;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcar;->PHOTO:Lcar;

    .line 37
    new-instance v0, Lcar;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcar;->VIDEO:Lcar;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcar;

    sget-object v1, Lcar;->PHOTO:Lcar;

    aput-object v1, v0, v2

    sget-object v1, Lcar;->VIDEO:Lcar;

    aput-object v1, v0, v3

    sput-object v0, Lcar;->$VALUES:[Lcar;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcar;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcar;

    return-object v0
.end method

.method public static values()[Lcar;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcar;->$VALUES:[Lcar;

    invoke-virtual {v0}, [Lcar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcar;

    return-object v0
.end method
