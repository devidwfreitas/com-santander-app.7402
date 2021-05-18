.class public final enum Lfyn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfyn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfyn;

.field public static final enum CADASTRAR_PASSO_1:Lfyn;

.field public static final enum CADASTRAR_PASSO_2:Lfyn;

.field public static final enum CADASTRAR_PASSO_3:Lfyn;

.field public static final enum ERROR:Lfyn;

.field public static final enum GET_USUARIO_SN:Lfyn;

.field public static final enum OBTER_QUIZ_ESQUECI_SENHA_PASSO_1:Lfyn;

.field public static final enum OBTER_QUIZ_ESQUECI_SENHA_PASSO_2:Lfyn;

.field public static final enum RESET_PWD_ESQUECI_SENHA_PASSO_4:Lfyn;

.field public static final enum USUARIO_NMS_ESQUECI_SENHA_PASSO_3:Lfyn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lfyn;

    const-string v1, "OBTER_QUIZ_ESQUECI_SENHA_PASSO_2"

    invoke-direct {v0, v1, v3}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->OBTER_QUIZ_ESQUECI_SENHA_PASSO_2:Lfyn;

    .line 25
    new-instance v0, Lfyn;

    const-string v1, "OBTER_QUIZ_ESQUECI_SENHA_PASSO_1"

    invoke-direct {v0, v1, v4}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->OBTER_QUIZ_ESQUECI_SENHA_PASSO_1:Lfyn;

    .line 26
    new-instance v0, Lfyn;

    const-string v1, "USUARIO_NMS_ESQUECI_SENHA_PASSO_3"

    invoke-direct {v0, v1, v5}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->USUARIO_NMS_ESQUECI_SENHA_PASSO_3:Lfyn;

    .line 27
    new-instance v0, Lfyn;

    const-string v1, "CADASTRAR_PASSO_1"

    invoke-direct {v0, v1, v6}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->CADASTRAR_PASSO_1:Lfyn;

    .line 28
    new-instance v0, Lfyn;

    const-string v1, "CADASTRAR_PASSO_2"

    invoke-direct {v0, v1, v7}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->CADASTRAR_PASSO_2:Lfyn;

    .line 29
    new-instance v0, Lfyn;

    const-string v1, "CADASTRAR_PASSO_3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->CADASTRAR_PASSO_3:Lfyn;

    .line 30
    new-instance v0, Lfyn;

    const-string v1, "RESET_PWD_ESQUECI_SENHA_PASSO_4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->RESET_PWD_ESQUECI_SENHA_PASSO_4:Lfyn;

    .line 31
    new-instance v0, Lfyn;

    const-string v1, "GET_USUARIO_SN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->GET_USUARIO_SN:Lfyn;

    .line 32
    new-instance v0, Lfyn;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyn;->ERROR:Lfyn;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lfyn;

    sget-object v1, Lfyn;->OBTER_QUIZ_ESQUECI_SENHA_PASSO_2:Lfyn;

    aput-object v1, v0, v3

    sget-object v1, Lfyn;->OBTER_QUIZ_ESQUECI_SENHA_PASSO_1:Lfyn;

    aput-object v1, v0, v4

    sget-object v1, Lfyn;->USUARIO_NMS_ESQUECI_SENHA_PASSO_3:Lfyn;

    aput-object v1, v0, v5

    sget-object v1, Lfyn;->CADASTRAR_PASSO_1:Lfyn;

    aput-object v1, v0, v6

    sget-object v1, Lfyn;->CADASTRAR_PASSO_2:Lfyn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfyn;->CADASTRAR_PASSO_3:Lfyn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfyn;->RESET_PWD_ESQUECI_SENHA_PASSO_4:Lfyn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfyn;->GET_USUARIO_SN:Lfyn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfyn;->ERROR:Lfyn;

    aput-object v2, v0, v1

    sput-object v0, Lfyn;->$VALUES:[Lfyn;

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

.method public static valueOf(Ljava/lang/String;)Lfyn;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lfyn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfyn;

    return-object v0
.end method

.method public static values()[Lfyn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lfyn;->$VALUES:[Lfyn;

    invoke-virtual {v0}, [Lfyn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfyn;

    return-object v0
.end method
