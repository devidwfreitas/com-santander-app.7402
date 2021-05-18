.class public final enum Llhl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llhl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llhl;

.field public static final enum DETAILS:Llhl;

.field public static final enum PROCESSING:Llhl;

.field public static final enum SAIBA_MAIS:Llhl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Llhl;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v2}, Llhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llhl;->PROCESSING:Llhl;

    new-instance v0, Llhl;

    const-string v1, "DETAILS"

    invoke-direct {v0, v1, v3}, Llhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llhl;->DETAILS:Llhl;

    new-instance v0, Llhl;

    const-string v1, "SAIBA_MAIS"

    invoke-direct {v0, v1, v4}, Llhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llhl;->SAIBA_MAIS:Llhl;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Llhl;

    sget-object v1, Llhl;->PROCESSING:Llhl;

    aput-object v1, v0, v2

    sget-object v1, Llhl;->DETAILS:Llhl;

    aput-object v1, v0, v3

    sget-object v1, Llhl;->SAIBA_MAIS:Llhl;

    aput-object v1, v0, v4

    sput-object v0, Llhl;->$VALUES:[Llhl;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llhl;
    .locals 1

    .prologue
    .line 112
    const-class v0, Llhl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llhl;

    return-object v0
.end method

.method public static values()[Llhl;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Llhl;->$VALUES:[Llhl;

    invoke-virtual {v0}, [Llhl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llhl;

    return-object v0
.end method
