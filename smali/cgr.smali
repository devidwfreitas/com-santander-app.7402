.class public final enum Lcgr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcgr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcgr;

.field public static final enum CLOSEST:Lcgr;

.field public static final enum DOWN:Lcgr;

.field public static final enum UP:Lcgr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    new-instance v0, Lcgr;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcgr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgr;->UP:Lcgr;

    .line 422
    new-instance v0, Lcgr;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcgr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgr;->DOWN:Lcgr;

    .line 423
    new-instance v0, Lcgr;

    const-string v1, "CLOSEST"

    invoke-direct {v0, v1, v4}, Lcgr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgr;->CLOSEST:Lcgr;

    .line 420
    const/4 v0, 0x3

    new-array v0, v0, [Lcgr;

    sget-object v1, Lcgr;->UP:Lcgr;

    aput-object v1, v0, v2

    sget-object v1, Lcgr;->DOWN:Lcgr;

    aput-object v1, v0, v3

    sget-object v1, Lcgr;->CLOSEST:Lcgr;

    aput-object v1, v0, v4

    sput-object v0, Lcgr;->$VALUES:[Lcgr;

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
    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcgr;
    .locals 1

    .prologue
    .line 420
    const-class v0, Lcgr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcgr;

    return-object v0
.end method

.method public static values()[Lcgr;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcgr;->$VALUES:[Lcgr;

    invoke-virtual {v0}, [Lcgr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcgr;

    return-object v0
.end method
