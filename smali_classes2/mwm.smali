.class public final Lmwm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu"

.field private static final b:Ljava/lang/String; = "Transferencias"

.field private static final c:Ljava/lang/String; = "Transferencia_MiniApp"

.field private static final d:Ljava/lang/String; = "Transferencia_MiniApp_Acao"

.field private static final e:Ljava/lang/String; = "Transferencia_Tipo"

.field private static final f:Ljava/lang/String; = "Transferencia_MiniApp_ValorTransferencia"

.field private static final g:Ljava/lang/String; = "Transferencia_MiniApp_LoginTipo"

.field private static final h:Ljava/lang/String; = "Transferencia_MiniApp_BancoDestino"

.field private static final i:Ljava/lang/String; = "Transferencia_MiniApp_Validacao"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "Transferencia_MiniApp"

    const-string v1, "Transferencias"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lmwm;->u()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "Transferencia_MiniApp_BancoDestino"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static a(Lmrp;)V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lmrp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmwm;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lmrp;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmwm;->b(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EntreContas"

    :goto_0
    invoke-static {v0}, Lmwm;->c(Ljava/lang/String;)V

    .line 152
    return-void

    .line 151
    :cond_0
    const-string v0, "TED"

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "Transferencia_MiniApp"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const-string v0, "Transferencia_MiniApp_ValorTransferencia"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoFechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lmwo;
        .end annotation
    .end param

    .prologue
    .line 137
    const-string v0, "Transferencia_Tipo"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoTransferir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lmwn;
        .end annotation
    .end param

    .prologue
    .line 141
    const-string v0, "Transferencia_MiniApp_LoginTipo"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarInformacoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lmwp;
        .end annotation
    .end param

    .prologue
    .line 145
    const-string v0, "Transferencia_MiniApp_Validacao"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lmwm;->v()V

    .line 69
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarBanco"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarAgencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarContaCorrente"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarBeneficiario"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarCPFCNPJ"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "EditarValorTransferencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoAbrirAplicativo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoCancelarAbrirAplicativo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoLoginTentarDeNovo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoLoginUsarSenha"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoValidarCSO"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoAgendamentoProsseguir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static r()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoAgendamentoCancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static s()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "TransferenciaResultado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "BotaoCompartilharComprovante"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private static u()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "abreMiniAppTransferencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static v()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "Transferencia_MiniApp_Acao"

    const-string v1, "SelecionarBancoDestino"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
