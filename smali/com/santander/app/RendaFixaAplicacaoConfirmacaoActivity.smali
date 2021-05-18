.class public Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Lfsz;

.field private E:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

.field private F:Lftd;

.field private G:Ljava/lang/Boolean;

.field private H:Landroid/app/Dialog;

.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

.field private c:Landroid/support/v4/app/FragmentTransaction;

.field private f:Landroid/support/v4/app/FragmentManager;

.field private g:Lftq;

.field private w:Lftt;

.field private x:Ljava/lang/String;

.field private y:Lfuu;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 38
    const-string v0, "RendaFixaAplicacaoConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->G:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f:Landroid/support/v4/app/FragmentManager;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->G:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lftt;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lftd;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->F:Lftd;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->j()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->H:Landroid/app/Dialog;

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lftq;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g:Lftq;

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 113
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 116
    :pswitch_0
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->E:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 117
    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->E:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 118
    const v1, 0x7f100544

    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->E:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 124
    :pswitch_1
    new-instance v0, Lfmj;

    invoke-direct {v0, p0, v3}, Lfmj;-><init>(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Lfmi;)V

    .line 125
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->finish()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lfsz;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->D:Lfsz;

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->B:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public b()Lftt;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lfuu;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->y:Lfuu;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->A:Z

    return v0
.end method

.method public g()Lfsz;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->D:Lfsz;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const v0, 0x7f10053a

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->G:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-super {p0}, Lgoj;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f100544

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040294

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->setContentView(I)V

    .line 65
    iput-object p0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    const-string v0, "producto"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftq;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g:Lftq;

    .line 69
    const-string v0, "respSimularAplicacao"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftt;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    .line 70
    const-string v0, "valorAplicado"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    .line 71
    const-string v0, "cuentaOrigen"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfuu;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->y:Lfuu;

    .line 72
    const-string v0, "prazo"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->z:Ljava/lang/String;

    .line 73
    const-string v0, "agendada"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->A:Z

    .line 74
    const-string v0, "dataAgendamento"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->C:Ljava/lang/String;

    .line 75
    const-string v0, "dadoAplicacao"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftd;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->F:Lftd;

    .line 77
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->A:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lftt;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lftt;->g(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 90
    const v1, 0x7f0900cc

    invoke-virtual {p0, v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    new-instance v1, Liih;

    invoke-direct {v1}, Liih;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g:Lftq;

    invoke-virtual {v1, v2}, Liih;->a(Lftq;)V

    .line 97
    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->w:Lftt;

    invoke-virtual {v1, v2}, Liih;->a(Lftt;)V

    .line 98
    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1, v2}, Liih;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V

    .line 99
    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->y:Lfuu;

    invoke-virtual {v1, v2}, Liih;->a(Lfuu;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->A:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Liih;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 102
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 106
    :cond_0
    return-void

    .line 80
    :cond_1
    const-string v0, "fecha"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
