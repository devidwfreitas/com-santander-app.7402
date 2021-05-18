.class public Lhnj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CreditoFinanciamento"

.field private static final b:Ljava/lang/String; = "Cancelamento"

.field private static final c:Ljava/lang/String; = "CreditoFinanciamento_MenuLateral_Submenu_Acao"

.field private static final d:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_Acao"

.field private static final e:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_Consultar_Produto_Acao"

.field private static final f:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao"

.field private static final g:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_Consultar_Cancelavel_Acao"

.field private static final h:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_Consultar_Acao"

.field private static final i:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao"

.field private static final j:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_PopUp_Acao"

.field private static final k:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Comprovante_Acao"

.field private static final l:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Produto"

.field private static final m:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_DataCancelamento"

.field private static final n:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Valor"

.field private static final o:Ljava/lang/String; = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper"


# direct methods
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
    const-string v0, "CreditoFinanciamento"

    const-string v1, "Cancelamento"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static a(I)V
    .locals 2
    .param p0    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 57
    const-string v1, "CreditoFinanciamento_MeusEmprestimos_Consultar_Produto_Acao"

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const-string v0, "Consignado"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :cond_0
    const-string v0, "CreditoPessoal"

    goto :goto_0
.end method

.method public static a(Lhxl;)V
    .locals 2

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    invoke-interface {p0}, Lhxl;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    const-string v1, "CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 67
    :pswitch_0
    const-string v0, "PropostaEmAnalise"

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v0, "ContratoAtivo"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "ContratoEmAtraso"

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-interface {p0}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PropostaCancelada"

    goto :goto_0

    :cond_0
    const-string v0, "ContratoCancelado"

    goto :goto_0

    .line 79
    :pswitch_4
    const-string v0, "ContratoPago"

    goto :goto_0

    .line 82
    :pswitch_5
    const-string v0, "PropostaRecusada"

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_DataCancelamento"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 89
    const-string v1, "CreditoFinanciamento_MeusEmprestimos_Consultar_Cancelavel_Acao"

    if-eqz p0, :cond_0

    const-string v0, "Sim"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 89
    :cond_0
    const-string v0, "N\u00e3o"

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "CreditoFinanciamento"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static b(I)V
    .locals 2
    .param p0    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 119
    const-string v1, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Produto"

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const-string v0, "Consignado"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 119
    :cond_0
    const-string v0, "CreditoPessoal"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Valor"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 114
    const-string v1, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_PopUp_Acao"

    if-eqz p0, :cond_0

    const-string v0, "Sim"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 114
    :cond_0
    const-string v0, "N\u00e3o"

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "MeusEmprestimos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper"

    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_Acao"

    const-string v1, "NovoEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_Consultar_Acao"

    const-string v1, "CancelarEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao"

    const-string v1, "CancelarEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao"

    const-string v1, "LerTermosCondicoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao"

    const-string v1, "InformativoCodigoAverbacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao"

    const-string v1, "PopUpCancelarEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
