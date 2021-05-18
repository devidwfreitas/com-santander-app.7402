.class public final enum Llgd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llgd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llgd;

.field public static final enum AP:Llgd;

.field public static final enum Residencial:Llgd;

.field public static final enum Vida:Llgd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Llgd;

    const-string v1, "Vida"

    invoke-direct {v0, v1, v2}, Llgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llgd;->Vida:Llgd;

    new-instance v0, Llgd;

    const-string v1, "Residencial"

    invoke-direct {v0, v1, v3}, Llgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llgd;->Residencial:Llgd;

    new-instance v0, Llgd;

    const-string v1, "AP"

    invoke-direct {v0, v1, v4}, Llgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llgd;->AP:Llgd;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Llgd;

    sget-object v1, Llgd;->Vida:Llgd;

    aput-object v1, v0, v2

    sget-object v1, Llgd;->Residencial:Llgd;

    aput-object v1, v0, v3

    sget-object v1, Llgd;->AP:Llgd;

    aput-object v1, v0, v4

    sput-object v0, Llgd;->$VALUES:[Llgd;

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

.method public static valueOf(Ljava/lang/String;)Llgd;
    .locals 1

    .prologue
    .line 64
    const-class v0, Llgd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llgd;

    return-object v0
.end method

.method public static values()[Llgd;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Llgd;->$VALUES:[Llgd;

    invoke-virtual {v0}, [Llgd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llgd;

    return-object v0
.end method
