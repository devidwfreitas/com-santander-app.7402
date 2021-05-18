.class public Ljrq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "Outros_MenuLateral_Acao"

    sput-object v0, Ljrq;->e:Ljava/lang/String;

    .line 16
    const-string v0, "Outros_Notificacoes_Tipo_Acao"

    sput-object v0, Ljrq;->f:Ljava/lang/String;

    .line 17
    const-string v0, "Outros_MenuLateral_MeuPerfil_Acao"

    sput-object v0, Ljrq;->g:Ljava/lang/String;

    .line 18
    const-string v0, "Outros_ConfiguracoesNotificacoes_ContaCorrente_Acao"

    sput-object v0, Ljrq;->h:Ljava/lang/String;

    .line 19
    const-string v0, "Outros_ConfiguracoesNotificacoes_Cartoes_Acao"

    sput-object v0, Ljrq;->i:Ljava/lang/String;

    .line 20
    const-string v0, "Outros_ConfiguracoesNotificacoes_OfertasEspeciais_Acao"

    sput-object v0, Ljrq;->j:Ljava/lang/String;

    .line 21
    const-string v0, "Outros_ConfiguracoesNotificacoes_Acao"

    sput-object v0, Ljrq;->k:Ljava/lang/String;

    .line 23
    const-string v0, "Outros_Notificacoes_Acao"

    sput-object v0, Ljrq;->a:Ljava/lang/String;

    .line 24
    const-string v0, "Outros_Notificacoes_Detalhes_Acao"

    sput-object v0, Ljrq;->b:Ljava/lang/String;

    .line 25
    const-string v0, "Outros_Notificacoes_Detalhes_PopUp_Acao"

    sput-object v0, Ljrq;->c:Ljava/lang/String;

    .line 26
    const-string v0, "Outros_Notificacoes_PopUp_Acao"

    sput-object v0, Ljrq;->d:Ljava/lang/String;

    .line 30
    const-string v0, "Notificacoes"

    sput-object v0, Ljrq;->l:Ljava/lang/String;

    .line 31
    const-string v0, "Voltar"

    sput-object v0, Ljrq;->m:Ljava/lang/String;

    .line 32
    const-string v0, "ConfiguracoesNotificacoes"

    sput-object v0, Ljrq;->n:Ljava/lang/String;

    .line 33
    const-string v0, "Habilita"

    sput-object v0, Ljrq;->o:Ljava/lang/String;

    .line 34
    const-string v0, "Desabilita"

    sput-object v0, Ljrq;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Ljrq;->e:Ljava/lang/String;

    sget-object v1, Ljrq;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ljrq;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 57
    const-string v0, ""

    .line 58
    const-string v1, ""

    .line 59
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 70
    :goto_1
    if-eqz p1, :cond_1

    .line 71
    sget-object v0, Ljrq;->o:Ljava/lang/String;

    .line 76
    :goto_2
    invoke-static {v1, v0}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 59
    :sswitch_0
    const-string v2, "Conta Corrente"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Cart\u00f5es"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Ofertas especiais"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 61
    :pswitch_0
    sget-object v0, Ljrq;->h:Ljava/lang/String;

    move-object v1, v0

    .line 62
    goto :goto_1

    .line 64
    :pswitch_1
    sget-object v0, Ljrq;->k:Ljava/lang/String;

    move-object v1, v0

    .line 65
    goto :goto_1

    .line 67
    :pswitch_2
    sget-object v0, Ljrq;->k:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 74
    :cond_1
    sget-object v0, Ljrq;->p:Ljava/lang/String;

    goto :goto_2

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb992dd -> :sswitch_1
        0x36564b84 -> :sswitch_2
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Ljrq;->b:Ljava/lang/String;

    sget-object v1, Ljrq;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Ljrq;->g:Ljava/lang/String;

    sget-object v1, Ljrq;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Ljrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
