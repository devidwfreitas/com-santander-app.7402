.class public Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

.field private c:Lftw;

.field private f:Lftv;

.field private g:Lfte;

.field private w:Ljava/lang/Boolean;

.field private x:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 47
    const-string v0, "RendaFixaResgateConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->w:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->x:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Lftv;)Lftv;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->w:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Lftv;Lftw;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lftv;",
            "Lftw;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v1, Lgky;

    const-string v2, "Produto: "

    invoke-virtual {p2}, Lftw;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lgky;

    const-string v2, "Valor Liquido: "

    invoke-virtual {p1}, Lftv;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lgky;

    const-string v2, "Taxa (CDI): "

    invoke-virtual {p2}, Lftw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p2}, Lftw;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    new-instance v1, Lgky;

    const-string v2, "Valor Resgate: "

    invoke-virtual {p2}, Lftw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    new-instance v1, Lgky;

    const-string v2, "Data Vencimento: "

    invoke-virtual {p1}, Lftv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    invoke-virtual {v1}, Lftw;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    invoke-virtual {v2}, Lftw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    :cond_0
    new-instance v1, Lgky;

    const-string v2, "Data Cont\u00e1bil: "

    invoke-virtual {p1}, Lftv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_1
    return-object v0

    .line 238
    :cond_1
    new-instance v1, Lgky;

    const-string v2, "Valor Resgate: "

    invoke-virtual {p2}, Lftw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_2
    new-instance v1, Lgky;

    const-string v2, "Data Cont\u00e1bil: "

    iget-object v3, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    invoke-virtual {v3}, Lftw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static synthetic b(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lftw;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    const-string v0, "Investimentos_RendaFixa_Resgate_Valor"

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 282
    const-string v0, "Investimentos_RendaFixa_Resgate_Data"

    invoke-static {v0, p2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "Investimentos_RendaFixa_Resgate_ReferOper"

    invoke-static {v0, p3}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lftv;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->g()V

    return-void
.end method

.method private e()Lgvb;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 203
    const-string v1, "CDB / LCI"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 204
    const-string v1, "Comprovante  - Resgante CDB / LCI"

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    invoke-virtual {v1}, Lftw;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "Resgate CDB / LCI\nRealizado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    invoke-direct {p0, v1, v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lftv;Lftw;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 214
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1, v2}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    invoke-virtual {v1}, Lftv;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->w(Z)V

    .line 218
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    invoke-virtual {v1}, Lftv;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    invoke-virtual {v3}, Lftv;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object v0

    .line 209
    :cond_0
    const-string v1, "Resgate CDB / LCI\nAgendado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lgvb;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->e()Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private f()Lgvb;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 255
    invoke-virtual {v0, v3}, Lgvb;->e(Z)V

    .line 256
    const-string v1, "Resgate CDB / LCI\n n\u00e3o realizado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1, v2}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    invoke-virtual {v1}, Lftv;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v3}, Lgvb;->w(Z)V

    .line 262
    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lgvb;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f()Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->x:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->x:Landroid/app/Dialog;

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lftw;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 96
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v1, "Investimentos_RendaFixa_Resgate_Acao"

    const-string v2, "Confirmar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 103
    const v2, 0x7f100544

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v0, Lfmw;

    invoke-direct {v0, p0, v3}, Lfmw;-><init>(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Lfmv;)V

    .line 110
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->finish()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Lftv;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    return-object v0
.end method

.method public c()Lftv;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    return-object v0
.end method

.method public d()Lfte;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->g:Lfte;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-super {p0}, Lgoj;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f100544

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    const-string v0, "simularParameters"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftw;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c:Lftw;

    .line 66
    const-string v0, "SimularResgateRendaFixaBean"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftv;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f:Lftv;

    .line 67
    const-string v0, "DadosResgateListAplicacaoRendaFixaBean"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfte;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->g:Lfte;

    .line 69
    iput-object p0, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 71
    const v0, 0x7f040294

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 77
    const v1, 0x7f0908ab

    invoke-virtual {p0, v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lijc;

    invoke-direct {v1}, Lijc;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-virtual {v1, v2}, Lijc;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 89
    :cond_0
    return-void
.end method
