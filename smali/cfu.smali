.class public final enum Lcfu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfu;

.field public static final enum BOTTOM:Lcfu;

.field public static final enum CENTER:Lcfu;

.field public static final enum TOP:Lcfu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcfu;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcfu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfu;->TOP:Lcfu;

    new-instance v0, Lcfu;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcfu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfu;->CENTER:Lcfu;

    new-instance v0, Lcfu;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcfu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfu;->BOTTOM:Lcfu;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcfu;

    sget-object v1, Lcfu;->TOP:Lcfu;

    aput-object v1, v0, v2

    sget-object v1, Lcfu;->CENTER:Lcfu;

    aput-object v1, v0, v3

    sget-object v1, Lcfu;->BOTTOM:Lcfu;

    aput-object v1, v0, v4

    sput-object v0, Lcfu;->$VALUES:[Lcfu;

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

.method public static valueOf(Ljava/lang/String;)Lcfu;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcfu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfu;

    return-object v0
.end method

.method public static values()[Lcfu;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcfu;->$VALUES:[Lcfu;

    invoke-virtual {v0}, [Lcfu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfu;

    return-object v0
.end method
