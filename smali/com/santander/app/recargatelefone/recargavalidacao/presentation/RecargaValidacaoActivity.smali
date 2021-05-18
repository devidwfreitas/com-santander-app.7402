.class public Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lkkh;
.implements Lnau;


# instance fields
.field private a:Lkki;

.field private b:Landroid/app/Dialog;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 46
    const-string v0, "RecargaValidacaoActivity"

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->b:Landroid/app/Dialog;

    .line 74
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    invoke-virtual {v0, p1, p2}, Lkki;->a(IZ)V

    .line 69
    return-void
.end method

.method public a(Lkgj;Lkia;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 329
    new-instance v1, Lfvn;

    invoke-direct {v1}, Lfvn;-><init>()V

    .line 330
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->z(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lkgj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->a(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lkgj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->b(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lkgj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->c(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lkgj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->d(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lkgj;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->e(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lkgj;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->f(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lkgj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->g(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lkgj;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->h(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lkgj;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->i(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lkgj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->j(Ljava/lang/String;)V

    .line 341
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->k(Ljava/lang/String;)V

    .line 342
    if-nez p2, :cond_0

    const-string v0, "N\u00e3o foi poss\u00edvel realizar o cancelamento da recarga programada."

    :goto_0
    invoke-virtual {v1, v0}, Lfvn;->l(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lkgj;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->m(Ljava/lang/String;)V

    .line 344
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->n(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lkgj;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->o(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lkgj;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->p(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lkgj;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->q(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lkgj;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->r(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lkgj;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->s(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lkgj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->C(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lkgj;->A()Ljava/lang/String;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Semanal"

    :goto_1
    invoke-virtual {v1, v0}, Lfvn;->t(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lkgj;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->u(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lkgj;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->v(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lkgj;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->w(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lkgj;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->x(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lkgj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->y(Ljava/lang/String;)V

    .line 357
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->A(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lkgj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->B(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    invoke-virtual {v0, p1, v5}, Lkki;->a(Lkgj;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 362
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 364
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->i(Ljava/lang/String;)V

    .line 365
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->j(Ljava/lang/String;)V

    .line 367
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgvb;->f(Z)V

    .line 368
    const-string v3, "Exclus\u00e3o da recarga realizada com sucesso"

    invoke-virtual {v2, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 369
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->f(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 373
    const-string v0, "Programar Recarga"

    invoke-virtual {v2, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 374
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@@br"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 375
    const v0, 0x7f090886

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 377
    if-nez p2, :cond_2

    .line 378
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 379
    const-string v0, "N\u00e3o foi poss\u00edvel realizar o cancelamento da recarga programada."

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 388
    :goto_2
    invoke-virtual {v1}, Lfvn;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 389
    const-class v0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;

    invoke-virtual {v2, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 391
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 392
    const-string v0, "dadosRecarga"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "operadoraTexto"

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "operadoraTexto"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {v2, v3}, Lgvb;->a(Ljava/util/HashMap;)V

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void

    .line 342
    :cond_0
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 351
    :cond_1
    const-string v0, "Mensal"

    goto/16 :goto_1

    .line 380
    :cond_2
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 383
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 385
    :cond_3
    const-string v0, "Exclus\u00e3o da recarga realizada com sucesso"

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lkic;Lkia;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 87
    new-instance v0, Lfsg;

    invoke-direct {v0}, Lfsg;-><init>()V

    invoke-virtual {v0, p0}, Lfsg;->a(Landroid/content/Context;)V

    .line 89
    new-instance v1, Lfvn;

    invoke-direct {v1}, Lfvn;-><init>()V

    .line 90
    invoke-virtual {p1}, Lkic;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lkic;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->b(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lkic;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->c(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lkic;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->d(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lkic;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->e(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lkic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->f(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lkic;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->g(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lkic;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->h(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lkic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->i(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lkic;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->j(Ljava/lang/String;)V

    .line 100
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->k(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->l(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lkic;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->m(Ljava/lang/String;)V

    .line 103
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->n(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lkia;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->o(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lkic;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->p(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lkic;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->q(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lkic;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->r(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lkic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->s(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lkic;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->C(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lkic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->t(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lkic;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->u(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lkic;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->v(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lkic;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->w(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lkic;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->x(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lkic;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->y(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lkic;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->A(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lkic;->getTokenTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->B(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v5}, Lfvn;->a(Z)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lkki;->a(Lkic;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 122
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 124
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->i(Ljava/lang/String;)V

    .line 125
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->j(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2, v5}, Lgvb;->f(Z)V

    .line 128
    const-string v3, "Recarga realizada com sucesso"

    invoke-virtual {v2, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 129
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->f(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 133
    const-string v0, "Programar Recarga"

    invoke-virtual {v2, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 134
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@@br"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 135
    const v0, 0x7f090886

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 137
    if-nez p2, :cond_1

    .line 138
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 139
    const-string v0, "N\u00e3o foi poss\u00edvel realizar a recarga."

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lfvn;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 153
    const-class v0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;

    invoke-virtual {v2, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 155
    const-string v0, "Outros_RecargaDeTelefone_ReferOper"

    invoke-virtual {v2}, Lgvb;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v5}, Lgvb;->p(Z)V

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string v0, "dadosRecarga"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "operadoraTexto"

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "operadoraTexto"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v2, v3}, Lgvb;->a(Ljava/util/HashMap;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void

    .line 140
    :cond_1
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p2}, Lkia;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 143
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Lkic;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "Agendamento de recarga realizado com sucesso"

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "Recarga Realizada com sucesso"

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lkic;Lkic;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 173
    new-instance v1, Lfvn;

    invoke-direct {v1}, Lfvn;-><init>()V

    .line 174
    invoke-virtual {p1}, Lkic;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->a(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lkic;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->b(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lkic;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->c(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lkic;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->d(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lkic;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->e(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lkic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->f(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lkic;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->g(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lkic;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->h(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lkic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->i(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lkic;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->j(Ljava/lang/String;)V

    .line 184
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->k(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->l(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lkic;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->m(Ljava/lang/String;)V

    .line 187
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->n(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lkic;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->o(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lkic;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->p(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lkic;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->q(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lkic;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->r(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lkic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->s(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lkic;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->C(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lkic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->t(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lkic;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->u(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lkic;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->v(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lkic;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->w(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lkic;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->x(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lkic;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->y(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lkic;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->A(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lkic;->getTokenTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->B(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    invoke-virtual {v0, p1, v5}, Lkki;->a(Lkic;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 205
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 207
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->i(Ljava/lang/String;)V

    .line 208
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->j(Ljava/lang/String;)V

    .line 210
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgvb;->f(Z)V

    .line 211
    const-string v3, "Agendamento de recarga realizado com sucesso"

    invoke-virtual {v2, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 212
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->f(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 216
    const-string v0, "Programar Recarga"

    invoke-virtual {v2, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 217
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@@br"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 218
    const v0, 0x7f090886

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 220
    if-nez p2, :cond_0

    .line 221
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 222
    const-string v0, "N\u00e3o foi poss\u00edvel realizar a recarga programada."

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual {v1}, Lfvn;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 232
    const-class v0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;

    invoke-virtual {v2, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 234
    invoke-virtual {v2, v5}, Lgvb;->p(Z)V

    .line 235
    const-string v0, "Outros_RecargaDeTelefone_ReferOper"

    invoke-virtual {v2}, Lgvb;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string v0, "dadosRecarga"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "operadoraTexto"

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "operadoraTexto"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v2, v3}, Lgvb;->a(Ljava/util/HashMap;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void

    .line 223
    :cond_0
    invoke-virtual {p2}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p2}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 226
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "Agendamento de recarga realizado com sucesso"

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lkid;Lkjg;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 252
    new-instance v1, Lfvn;

    invoke-direct {v1}, Lfvn;-><init>()V

    .line 253
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->z(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lkid;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->a(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lkid;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->b(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lkid;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->c(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lkid;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->d(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lkid;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->e(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lkid;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->f(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lkid;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->g(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lkid;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->h(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lkid;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->i(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lkid;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->j(Ljava/lang/String;)V

    .line 264
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->k(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Lkjg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->l(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lkid;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->m(Ljava/lang/String;)V

    .line 267
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->n(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Lkjg;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->o(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lkid;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->p(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lkid;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->q(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lkid;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->r(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lkid;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->s(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lkid;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->C(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lkid;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->t(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lkid;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->u(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lkid;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->v(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lkid;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->w(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lkid;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->x(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lkid;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->y(Ljava/lang/String;)V

    .line 280
    const-string v0, ""

    invoke-virtual {v1, v0}, Lfvn;->A(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lkid;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvn;->B(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    invoke-virtual {v0, p1, v5}, Lkki;->a(Lkid;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 285
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 287
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->i(Ljava/lang/String;)V

    .line 288
    const-string v3, ""

    invoke-virtual {v2, v3}, Lgvb;->j(Ljava/lang/String;)V

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgvb;->f(Z)V

    .line 291
    const-string v3, "Altera\u00e7\u00e3o de recarga realizada com sucesso"

    invoke-virtual {v2, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->f(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 296
    const-string v0, "Programar Recarga"

    invoke-virtual {v2, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 297
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@@br"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 298
    const v0, 0x7f090886

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 300
    if-nez p2, :cond_0

    .line 301
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 302
    const-string v0, "N\u00e3o foi poss\u00edvel realizar a altera\u00e7\u00e3o da recarga programada."

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 311
    :goto_0
    invoke-virtual {v1}, Lfvn;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 312
    const-class v0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;

    invoke-virtual {v2, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 314
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 315
    const-string v0, "dadosRecarga"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "operadoraTexto"

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "operadoraTexto"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v2, v3}, Lgvb;->a(Ljava/util/HashMap;)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void

    .line 303
    :cond_0
    invoke-virtual {p2}, Lkjg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p2}, Lkjg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v2, v5}, Lgvb;->e(Z)V

    .line 306
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "Altera\u00e7\u00e3o de recarga realizada com sucesso"

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->b:Landroid/app/Dialog;

    .line 82
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04009d

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lkki;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkki;-><init>(Lkkh;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->a:Lkki;

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 60
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1003d3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 63
    invoke-virtual {v0, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 64
    return-void
.end method
