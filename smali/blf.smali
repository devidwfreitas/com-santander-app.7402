.class public final enum Lblf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lblf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lblf;

.field public static final enum AUTO:Lblf;

.field public static final enum EXPLICIT_ONLY:Lblf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Lblf;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lblf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblf;->AUTO:Lblf;

    .line 163
    new-instance v0, Lblf;

    const-string v1, "EXPLICIT_ONLY"

    invoke-direct {v0, v1, v3}, Lblf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblf;->EXPLICIT_ONLY:Lblf;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Lblf;

    sget-object v1, Lblf;->AUTO:Lblf;

    aput-object v1, v0, v2

    sget-object v1, Lblf;->EXPLICIT_ONLY:Lblf;

    aput-object v1, v0, v3

    sput-object v0, Lblf;->$VALUES:[Lblf;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lblf;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lblf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lblf;

    return-object v0
.end method

.method public static values()[Lblf;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lblf;->$VALUES:[Lblf;

    invoke-virtual {v0}, [Lblf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lblf;

    return-object v0
.end method
