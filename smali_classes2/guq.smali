.class public final enum Lguq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lguq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lguq;

.field public static final enum HABILITACAO_ID:Lguq;

.field public static final enum TOKEN_IBPF:Lguq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lguq;

    const-string v1, "HABILITACAO_ID"

    invoke-direct {v0, v1, v2}, Lguq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lguq;->HABILITACAO_ID:Lguq;

    .line 12
    new-instance v0, Lguq;

    const-string v1, "TOKEN_IBPF"

    invoke-direct {v0, v1, v3}, Lguq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lguq;->TOKEN_IBPF:Lguq;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lguq;

    sget-object v1, Lguq;->HABILITACAO_ID:Lguq;

    aput-object v1, v0, v2

    sget-object v1, Lguq;->TOKEN_IBPF:Lguq;

    aput-object v1, v0, v3

    sput-object v0, Lguq;->$VALUES:[Lguq;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lguq;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lguq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lguq;

    return-object v0
.end method

.method public static values()[Lguq;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lguq;->$VALUES:[Lguq;

    invoke-virtual {v0}, [Lguq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lguq;

    return-object v0
.end method
