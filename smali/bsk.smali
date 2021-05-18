.class public final enum Lbsk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbsk;

.field public static final enum CANCEL:Lbsk;

.field public static final enum ERROR:Lbsk;

.field public static final enum SUCCESS:Lbsk;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 555
    new-instance v0, Lbsk;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lbsk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsk;->SUCCESS:Lbsk;

    .line 556
    new-instance v0, Lbsk;

    const-string v1, "CANCEL"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lbsk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsk;->CANCEL:Lbsk;

    .line 557
    new-instance v0, Lbsk;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lbsk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsk;->ERROR:Lbsk;

    .line 554
    const/4 v0, 0x3

    new-array v0, v0, [Lbsk;

    sget-object v1, Lbsk;->SUCCESS:Lbsk;

    aput-object v1, v0, v3

    sget-object v1, Lbsk;->CANCEL:Lbsk;

    aput-object v1, v0, v4

    sget-object v1, Lbsk;->ERROR:Lbsk;

    aput-object v1, v0, v5

    sput-object v0, Lbsk;->$VALUES:[Lbsk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 562
    iput-object p3, p0, Lbsk;->loggingValue:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbsk;
    .locals 1

    .prologue
    .line 554
    const-class v0, Lbsk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsk;

    return-object v0
.end method

.method public static values()[Lbsk;
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lbsk;->$VALUES:[Lbsk;

    invoke-virtual {v0}, [Lbsk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsk;

    return-object v0
.end method


# virtual methods
.method public getLoggingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lbsk;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
