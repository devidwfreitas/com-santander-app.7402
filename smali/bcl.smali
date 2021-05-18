.class public final enum Lbcl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbcl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbcl;

.field public static final enum Linear:Lbcl;

.field public static final enum Radial:Lbcl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lbcl;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v2}, Lbcl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcl;->Linear:Lbcl;

    .line 5
    new-instance v0, Lbcl;

    const-string v1, "Radial"

    invoke-direct {v0, v1, v3}, Lbcl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcl;->Radial:Lbcl;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lbcl;

    sget-object v1, Lbcl;->Linear:Lbcl;

    aput-object v1, v0, v2

    sget-object v1, Lbcl;->Radial:Lbcl;

    aput-object v1, v0, v3

    sput-object v0, Lbcl;->$VALUES:[Lbcl;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbcl;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lbcl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcl;

    return-object v0
.end method

.method public static values()[Lbcl;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lbcl;->$VALUES:[Lbcl;

    invoke-virtual {v0}, [Lbcl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcl;

    return-object v0
.end method
