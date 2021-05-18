.class public final enum Lnbc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnbc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnbc;

.field public static final enum APARELHO_NAO_HABILITADO:Lnbc;

.field public static final enum BLOQUEIO_CLIENTE:Lnbc;

.field public static final enum ID_CANCELADO:Lnbc;

.field public static final enum ID_NAO_HABILITADO:Lnbc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lnbc;

    const-string v1, "ID_NAO_HABILITADO"

    invoke-direct {v0, v1, v2}, Lnbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnbc;->ID_NAO_HABILITADO:Lnbc;

    .line 12
    new-instance v0, Lnbc;

    const-string v1, "ID_CANCELADO"

    invoke-direct {v0, v1, v3}, Lnbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnbc;->ID_CANCELADO:Lnbc;

    .line 13
    new-instance v0, Lnbc;

    const-string v1, "BLOQUEIO_CLIENTE"

    invoke-direct {v0, v1, v4}, Lnbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnbc;->BLOQUEIO_CLIENTE:Lnbc;

    .line 14
    new-instance v0, Lnbc;

    const-string v1, "APARELHO_NAO_HABILITADO"

    invoke-direct {v0, v1, v5}, Lnbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnbc;->APARELHO_NAO_HABILITADO:Lnbc;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lnbc;

    sget-object v1, Lnbc;->ID_NAO_HABILITADO:Lnbc;

    aput-object v1, v0, v2

    sget-object v1, Lnbc;->ID_CANCELADO:Lnbc;

    aput-object v1, v0, v3

    sget-object v1, Lnbc;->BLOQUEIO_CLIENTE:Lnbc;

    aput-object v1, v0, v4

    sget-object v1, Lnbc;->APARELHO_NAO_HABILITADO:Lnbc;

    aput-object v1, v0, v5

    sput-object v0, Lnbc;->$VALUES:[Lnbc;

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

.method public static valueOf(Ljava/lang/String;)Lnbc;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lnbc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnbc;

    return-object v0
.end method

.method public static values()[Lnbc;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lnbc;->$VALUES:[Lnbc;

    invoke-virtual {v0}, [Lnbc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnbc;

    return-object v0
.end method
