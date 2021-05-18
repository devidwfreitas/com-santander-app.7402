.class public final enum Lnat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnat;

.field public static final enum APARELHO_NAO_HABILITADO:Lnat;

.field public static final enum BLOQUEIO_ADM:Lnat;

.field public static final enum BLOQUEIO_CLIENTE:Lnat;

.field public static final enum BLOQUEIO_CLONAGEM:Lnat;

.field public static final enum BLOQUEIO_TENTATIVAS:Lnat;

.field public static final enum ERRO_INESPERADO:Lnat;

.field public static final enum ID_CANCELADO:Lnat;

.field public static final enum ID_NAO_HABILITADO:Lnat;

.field public static final enum USUARIO_CONSULTIVO:Lnat;

.field public static final enum USUARIO_SEM_SEMENTE:Lnat;

.field public static final enum VER_MAIS_TARDE:Lnat;

.field public static final enum VER_MENSAGEM_QR:Lnat;

.field public static final enum VER_MENSAGEM_SMS:Lnat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lnat;

    const-string v1, "ID_NAO_HABILITADO"

    invoke-direct {v0, v1, v3}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->ID_NAO_HABILITADO:Lnat;

    .line 12
    new-instance v0, Lnat;

    const-string v1, "APARELHO_NAO_HABILITADO"

    invoke-direct {v0, v1, v4}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->APARELHO_NAO_HABILITADO:Lnat;

    .line 13
    new-instance v0, Lnat;

    const-string v1, "BLOQUEIO_ADM"

    invoke-direct {v0, v1, v5}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->BLOQUEIO_ADM:Lnat;

    .line 14
    new-instance v0, Lnat;

    const-string v1, "BLOQUEIO_TENTATIVAS"

    invoke-direct {v0, v1, v6}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->BLOQUEIO_TENTATIVAS:Lnat;

    .line 15
    new-instance v0, Lnat;

    const-string v1, "ERRO_INESPERADO"

    invoke-direct {v0, v1, v7}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->ERRO_INESPERADO:Lnat;

    .line 16
    new-instance v0, Lnat;

    const-string v1, "USUARIO_CONSULTIVO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->USUARIO_CONSULTIVO:Lnat;

    .line 17
    new-instance v0, Lnat;

    const-string v1, "ID_CANCELADO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->ID_CANCELADO:Lnat;

    .line 18
    new-instance v0, Lnat;

    const-string v1, "BLOQUEIO_CLIENTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->BLOQUEIO_CLIENTE:Lnat;

    .line 19
    new-instance v0, Lnat;

    const-string v1, "BLOQUEIO_CLONAGEM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->BLOQUEIO_CLONAGEM:Lnat;

    .line 20
    new-instance v0, Lnat;

    const-string v1, "VER_MENSAGEM_SMS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->VER_MENSAGEM_SMS:Lnat;

    .line 21
    new-instance v0, Lnat;

    const-string v1, "VER_MAIS_TARDE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    .line 22
    new-instance v0, Lnat;

    const-string v1, "VER_MENSAGEM_QR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->VER_MENSAGEM_QR:Lnat;

    .line 23
    new-instance v0, Lnat;

    const-string v1, "USUARIO_SEM_SEMENTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lnat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnat;->USUARIO_SEM_SEMENTE:Lnat;

    .line 10
    const/16 v0, 0xd

    new-array v0, v0, [Lnat;

    sget-object v1, Lnat;->ID_NAO_HABILITADO:Lnat;

    aput-object v1, v0, v3

    sget-object v1, Lnat;->APARELHO_NAO_HABILITADO:Lnat;

    aput-object v1, v0, v4

    sget-object v1, Lnat;->BLOQUEIO_ADM:Lnat;

    aput-object v1, v0, v5

    sget-object v1, Lnat;->BLOQUEIO_TENTATIVAS:Lnat;

    aput-object v1, v0, v6

    sget-object v1, Lnat;->ERRO_INESPERADO:Lnat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnat;->ID_CANCELADO:Lnat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnat;->BLOQUEIO_CLIENTE:Lnat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnat;->BLOQUEIO_CLONAGEM:Lnat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnat;->VER_MENSAGEM_SMS:Lnat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnat;->VER_MAIS_TARDE:Lnat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnat;->VER_MENSAGEM_QR:Lnat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnat;->USUARIO_SEM_SEMENTE:Lnat;

    aput-object v2, v0, v1

    sput-object v0, Lnat;->$VALUES:[Lnat;

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

.method public static valueOf(Ljava/lang/String;)Lnat;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lnat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnat;

    return-object v0
.end method

.method public static values()[Lnat;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lnat;->$VALUES:[Lnat;

    invoke-virtual {v0}, [Lnat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnat;

    return-object v0
.end method
