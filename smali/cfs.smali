.class public final enum Lcfs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfs;

.field public static final enum HORIZONTAL:Lcfs;

.field public static final enum VERTICAL:Lcfs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcfs;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfs;->HORIZONTAL:Lcfs;

    new-instance v0, Lcfs;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfs;->VERTICAL:Lcfs;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcfs;

    sget-object v1, Lcfs;->HORIZONTAL:Lcfs;

    aput-object v1, v0, v2

    sget-object v1, Lcfs;->VERTICAL:Lcfs;

    aput-object v1, v0, v3

    sput-object v0, Lcfs;->$VALUES:[Lcfs;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcfs;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcfs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfs;

    return-object v0
.end method

.method public static values()[Lcfs;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcfs;->$VALUES:[Lcfs;

    invoke-virtual {v0}, [Lcfs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfs;

    return-object v0
.end method
