.class final enum Lnmc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnmc;",
        ">;",
        "Lnlj",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnmc;

.field public static final enum INSTANCE:Lnmc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lnmc;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lnmc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnmc;->INSTANCE:Lnmc;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lnmc;

    sget-object v1, Lnmc;->INSTANCE:Lnmc;

    aput-object v1, v0, v2

    sput-object v0, Lnmc;->$VALUES:[Lnmc;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnmc;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lnmc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnmc;

    return-object v0
.end method

.method public static values()[Lnmc;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnmc;->$VALUES:[Lnmc;

    invoke-virtual {v0}, [Lnmc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnmc;

    return-object v0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p1}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
