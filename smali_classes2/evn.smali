.class public final enum Levn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Levn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Levn;

.field public static final enum FORCE_NONE:Levn;

.field public static final enum FORCE_RECTANGLE:Levn;

.field public static final enum FORCE_SQUARE:Levn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Levn;

    const-string v1, "FORCE_NONE"

    invoke-direct {v0, v1, v2}, Levn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Levn;->FORCE_NONE:Levn;

    .line 26
    new-instance v0, Levn;

    const-string v1, "FORCE_SQUARE"

    invoke-direct {v0, v1, v3}, Levn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Levn;->FORCE_SQUARE:Levn;

    .line 27
    new-instance v0, Levn;

    const-string v1, "FORCE_RECTANGLE"

    invoke-direct {v0, v1, v4}, Levn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Levn;->FORCE_RECTANGLE:Levn;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Levn;

    sget-object v1, Levn;->FORCE_NONE:Levn;

    aput-object v1, v0, v2

    sget-object v1, Levn;->FORCE_SQUARE:Levn;

    aput-object v1, v0, v3

    sget-object v1, Levn;->FORCE_RECTANGLE:Levn;

    aput-object v1, v0, v4

    sput-object v0, Levn;->$VALUES:[Levn;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Levn;
    .locals 1

    .prologue
    .line 23
    const-class v0, Levn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Levn;

    return-object v0
.end method

.method public static values()[Levn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Levn;->$VALUES:[Levn;

    invoke-virtual {v0}, [Levn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Levn;

    return-object v0
.end method
