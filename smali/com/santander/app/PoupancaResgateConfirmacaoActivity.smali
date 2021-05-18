.class public Lcom/santander/app/PoupancaResgateConfirmacaoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private f:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

.field private g:Lfkw;

.field private w:Lfts;

.field private x:Lftr;

.field private y:Lfts;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 47
    const-string v0, "PoupancaResgateConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->b:Ljava/lang/String;

    .line 48
    const-string v0, "ConfirmarInvestimentoPoupancaResgatePasoTresBFragment"

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->z:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lcom/santander/app/PoupancaResgateConfirmacaoActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->f:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfts;)Lfts;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->z:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Lgvb;)V
    .locals 4

    .prologue
    .line 298
    const-string v1, "Investimentos_Poupanca_Resgatar_Tipo"

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v0}, Lftr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ValorTotal"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "Investimentos_Poupanca_Resgatar_Tipo_ValorParcial"

    iget-object v1, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v1}, Lftr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 300
    const-string v1, "Investimentos_Poupanca_Resgatar_Data_Opcao"

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v0}, Lftr;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataAgendada"

    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "Investimentos_Poupanca_Resgatar_Data"

    invoke-virtual {p1}, Lgvb;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "Investimentos_Poupanca_Resgatar_ReferOper"

    invoke-virtual {p1}, Lgvb;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 298
    :cond_0
    const-string v0, "ValorParcial"

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "Hoje"

    goto :goto_1
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lftr;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->w:Lfts;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lfkw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfkw;-><init>(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfkv;)V

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->g:Lfkw;

    .line 121
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->g:Lfkw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->g()V

    .line 127
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const v5, 0x7f090ab8

    .line 130
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v0, Lgky;

    const-string v2, "Transa\u00e7\u00e3o:"

    const-string v3, "Resgate"

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lgky;

    const-string v2, "Titular:"

    iget-object v3, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v3}, Lfts;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lgky;

    const-string v2, "CPF:"

    iget-object v3, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v3}, Lfts;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lgky;

    const-string v2, "Conta Poupan\u00e7a:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v4}, Lfts;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v4}, Lfts;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lgky;

    const-string v2, "Valor:"

    iget-object v3, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v3}, Lfts;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v0}, Lftr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v0}, Lftr;->e()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Lgky;

    const-string v3, "Data Cont\u00e1bil:"

    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 166
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    invoke-virtual {v3}, Lfts;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgvb;->e(Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgvb;->d(Z)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comprovante - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgvb;->g(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 173
    invoke-virtual {p0, v5}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realizado com sucesso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 175
    const-string v1, "ConfirmarInvestimentoPoupancaResgatePasoTresBFragment"

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->m(Z)V

    .line 178
    invoke-direct {p0, v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lgvb;)V

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    const-string v2, "comprovanteBase"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->w:Lfts;

    invoke-virtual {v0}, Lfts;->p()Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 189
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    new-instance v1, Liiq;

    invoke-direct {v1}, Liiq;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->f:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-virtual {v1, v2}, Liiq;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

    .line 192
    const v2, 0x7f100544

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 195
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    invoke-virtual {v0}, Lftr;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 97
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 100
    :pswitch_0
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 102
    const v2, 0x7f100544

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->e()V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->finish()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Lftr;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    return-object v0
.end method

.method public c()Lfts;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->w:Lfts;

    return-object v0
.end method

.method public d()Lfts;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->y:Lfts;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
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
    const v0, 0x7f040294

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 70
    const-string v0, "requestParam"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftr;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->x:Lftr;

    .line 71
    const-string v0, "responseResgatar"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfts;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->w:Lfts;

    .line 73
    iput-object p0, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->f:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 77
    const v0, 0x7f0908ab

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    new-instance v1, Liiv;

    invoke-direct {v1}, Liiv;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->f:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-virtual {v1, v2}, Liiv;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

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

    .line 90
    :cond_0
    return-void
.end method
