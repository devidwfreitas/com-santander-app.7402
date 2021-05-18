.class public final enum Lccy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lccy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccy;

.field public static final enum AUTOMATIC:Lccy;

.field public static final enum FEED:Lccy;

.field public static final enum NATIVE:Lccy;

.field public static final enum WEB:Lccy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lccy;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lccy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccy;->AUTOMATIC:Lccy;

    .line 81
    new-instance v0, Lccy;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3}, Lccy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccy;->NATIVE:Lccy;

    .line 85
    new-instance v0, Lccy;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v4}, Lccy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccy;->WEB:Lccy;

    .line 89
    new-instance v0, Lccy;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v5}, Lccy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccy;->FEED:Lccy;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lccy;

    sget-object v1, Lccy;->AUTOMATIC:Lccy;

    aput-object v1, v0, v2

    sget-object v1, Lccy;->NATIVE:Lccy;

    aput-object v1, v0, v3

    sget-object v1, Lccy;->WEB:Lccy;

    aput-object v1, v0, v4

    sget-object v1, Lccy;->FEED:Lccy;

    aput-object v1, v0, v5

    sput-object v0, Lccy;->$VALUES:[Lccy;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccy;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lccy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccy;

    return-object v0
.end method

.method public static values()[Lccy;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lccy;->$VALUES:[Lccy;

    invoke-virtual {v0}, [Lccy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccy;

    return-object v0
.end method
