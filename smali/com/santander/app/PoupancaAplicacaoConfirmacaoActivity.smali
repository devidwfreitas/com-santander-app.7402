.class public Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/support/v4/app/FragmentTransaction;

.field private C:Lfkm;

.field private D:Lfsy;

.field private E:Lfsy;

.field private F:Ljava/lang/Boolean;

.field private G:Landroid/app/Dialog;

.field private H:Ljava/lang/Boolean;

.field private I:Landroid/content/SharedPreferences;

.field private J:Lgyd;

.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

.field private c:Lfsy;

.field private f:Lftl;

.field private g:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 52
    const-string v0, "PoupancaAplicacaoConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->F:Ljava/lang/Boolean;

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->H:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->G:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)Lfsy;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->D:Lfsy;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->G:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)Lfsy;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->E:Lfsy;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lfsy;)V
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->n()V

    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_POUPANCA:Lmzp;

    aput-object v2, v0, v1

    .line 279
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 280
    new-instance v2, Lfkl;

    invoke-direct {v2, p0, p1}, Lfkl;-><init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 345
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lftl;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->f:Lftl;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lfsy;)V

    return-void
.end method

.method private c(Lfsy;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 348
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->n()V

    .line 349
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 351
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    const v2, 0x7f0900cc

    invoke-virtual {v0, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    const v2, 0x7f09085d

    invoke-virtual {v0, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 357
    const-string v0, ""

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 358
    const-string v0, ""

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 359
    const-string v0, "telaApliPoupancaNOK.end"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v3}, Lgvb;->e(Z)V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 363
    invoke-virtual {v1, v3}, Lgvb;->l(Z)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v2, "comprovanteBase"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->D:Lfsy;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c(Lfsy;)V

    return-void
.end method

.method private d(Lfsy;)V
    .locals 4

    .prologue
    .line 402
    const-string v0, "Investimentos_Poupanca_Aplicar_Valor"

    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 403
    const-string v1, "Investimentos_Poupanca_Aplicar_Data_Opcao"

    iget-boolean v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "DataAgendada"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "Investimentos_Poupanca_Aplicar_Data"

    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "Investimentos_Poupanca_Aplicar_ReferOper"

    invoke-virtual {p1}, Lfsy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 403
    :cond_0
    const-string v0, "Hoje"

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lfsy;)V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g:Z

    return v0
.end method

.method public static synthetic f(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->E:Lfsy;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->J:Lgyd;

    invoke-virtual {v0}, Lgyd;->a()V

    .line 397
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->J:Lgyd;

    invoke-virtual {v0}, Lgyd;->o()V

    .line 399
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1001

    const v2, 0x7f100544

    .line 145
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    .line 147
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 150
    :pswitch_0
    new-instance v0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 157
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 158
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v0, Lfkm;

    invoke-direct {v0, p0, v4}, Lfkm;-><init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfkl;)V

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->C:Lfkm;

    .line 163
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->C:Lfkm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->finish()V

    goto :goto_0

    .line 172
    :pswitch_3
    new-instance v0, Lilk;

    invoke-direct {v0}, Lilk;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 178
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->B:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 183
    :pswitch_4
    new-instance v1, Liin;

    invoke-direct {v1}, Liin;-><init>()V

    .line 184
    invoke-virtual {v1, p0}, Liin;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)V

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 187
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lfsy;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->E:Lfsy;

    .line 210
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->F:Ljava/lang/Boolean;

    .line 384
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->y:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lfsy;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    return-object v0
.end method

.method public f()Lftl;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->f:Lftl;

    return-object v0
.end method

.method public g()Lfsy;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->E:Lfsy;

    return-object v0
.end method

.method public h()Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-object v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->F:Ljava/lang/Boolean;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-super {p0}, Lgoj;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iput-object p0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 87
    invoke-static {}, Lgyd;->n()Lgyd;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->J:Lgyd;

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 90
    const-string v0, "itemPosicaoConsolidada"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftl;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->f:Lftl;

    .line 91
    const-string v0, "aplicaPoupanca"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfsy;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    .line 92
    const-string v0, "agendada"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g:Z

    .line 93
    const-string v0, "fecha"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->w:Ljava/lang/String;

    .line 94
    const-string v0, "dataContabil"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->A:Ljava/lang/String;

    .line 95
    const-string v0, "valorM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->x:Ljava/lang/String;

    .line 97
    const-string v0, "agencia"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->y:Ljava/lang/String;

    .line 98
    const-string v0, "conta"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->z:Ljava/lang/String;

    .line 100
    const v0, 0x7f040294

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 105
    const v1, 0x7f0900cc

    invoke-virtual {p0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 108
    const v1, 0x7f100544

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    invoke-virtual {v0}, Lfsy;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    invoke-virtual {v0}, Lfsy;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    .line 113
    invoke-virtual {v0}, Lfsy;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c:Lfsy;

    invoke-virtual {v0}, Lfsy;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(IZ)V

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(IZ)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->H:Ljava/lang/Boolean;

    goto :goto_0
.end method
