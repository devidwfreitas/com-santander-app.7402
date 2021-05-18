.class final enum Lffp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lffp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lffp;

.field public static final enum LooperCreated:Lffp;

.field public static final enum LooperExist:Lffp;

.field public static final enum LooperMissing:Lffp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lffp;

    const-string v1, "LooperExist"

    invoke-direct {v0, v1, v2}, Lffp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lffp;->LooperExist:Lffp;

    new-instance v0, Lffp;

    const-string v1, "LooperCreated"

    invoke-direct {v0, v1, v3}, Lffp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lffp;->LooperCreated:Lffp;

    new-instance v0, Lffp;

    const-string v1, "LooperMissing"

    invoke-direct {v0, v1, v4}, Lffp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lffp;->LooperMissing:Lffp;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lffp;

    sget-object v1, Lffp;->LooperExist:Lffp;

    aput-object v1, v0, v2

    sget-object v1, Lffp;->LooperCreated:Lffp;

    aput-object v1, v0, v3

    sget-object v1, Lffp;->LooperMissing:Lffp;

    aput-object v1, v0, v4

    sput-object v0, Lffp;->$VALUES:[Lffp;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lffp;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lffp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lffp;

    return-object v0
.end method

.method public static values()[Lffp;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lffp;->$VALUES:[Lffp;

    invoke-virtual {v0}, [Lffp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lffp;

    return-object v0
.end method
