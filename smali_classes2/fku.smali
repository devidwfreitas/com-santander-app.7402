.class public Lfku;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaResgateActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaResgateActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaResgateActivity;Lfkn;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lfku;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfts;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 354
    .line 356
    :try_start_0
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->n(Lcom/santander/app/PoupancaResgateActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->m(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 357
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    new-instance v2, Lftr;

    invoke-direct {v2}, Lftr;-><init>()V

    invoke-static {v1, v2}, Lcom/santander/app/PoupancaResgateActivity;->a(Lcom/santander/app/PoupancaResgateActivity;Lftr;)Lftr;

    .line 359
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lftr;->a(Lftl;)V

    .line 360
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->a(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lftr;->a(Z)V

    .line 363
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->i(Lcom/santander/app/PoupancaResgateActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lftr;->a(Z)V

    .line 365
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    iget-object v2, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->a(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    iget-object v2, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->a(Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    iget-object v2, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->c(Lcom/santander/app/PoupancaResgateActivity;)Lfos;

    move-result-object v2

    invoke-virtual {v2}, Lfos;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->b(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->b(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 371
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    iget-object v2, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->d(Lcom/santander/app/PoupancaResgateActivity;)Lfos;

    move-result-object v2

    invoke-virtual {v2}, Lfos;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->b(Ljava/lang/String;)V

    .line 374
    :cond_1
    const-string v1, ""

    .line 375
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v3}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v3

    invoke-virtual {v3}, Lftr;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 379
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 380
    iget-object v3, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v3}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lftr;->b(Ljava/lang/String;)V

    .line 381
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 391
    :goto_0
    :try_start_2
    iget-object v2, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v2

    invoke-virtual {v2}, Lftr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lftr;->b(Z)V

    .line 393
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhau;->a(Z)V

    .line 399
    :goto_1
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v2

    invoke-virtual {v2}, Lftj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->d(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v2

    invoke-virtual {v2}, Lftj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->e(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->n(Lcom/santander/app/PoupancaResgateActivity;)Lftc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lftc;->a(Lftl;)Lftb;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->f(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftr;->g(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbh;->a(Lftr;)Lfts;

    move-result-object v0

    .line 414
    :goto_2
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v4

    invoke-virtual {v4}, Lftr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 385
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 386
    iget-object v4, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lftr;->b(Ljava/lang/String;)V

    .line 387
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v3, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto/16 :goto_0

    .line 395
    :cond_2
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhau;->a(Z)V

    .line 396
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lftr;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 411
    :catch_1
    move-exception v0

    .line 412
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected a(Lfts;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 420
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 422
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    .line 425
    :cond_0
    if-nez p1, :cond_1

    .line 426
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 442
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Lfts;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->n(Lcom/santander/app/PoupancaResgateActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->m(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 433
    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v1

    invoke-virtual {v1}, Lftj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfts;->l(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v1

    invoke-virtual {v1}, Lftj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfts;->o(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v1}, Lftr;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfts;->k(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v1}, Lftr;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfts;->n(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v2

    invoke-virtual {v2}, Lftj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftr;->d(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    invoke-virtual {v0}, Lftj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftr;->e(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaResgateActivity;->a(Lcom/santander/app/PoupancaResgateActivity;Lfts;)Lfts;

    .line 440
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaResgateActivity;->b(Lcom/santander/app/PoupancaResgateActivity;Lfts;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfku;->a([Ljava/lang/Void;)Lfts;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Lfts;

    invoke-virtual {p0, p1}, Lfku;->a(Lfts;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    iget-object v1, p0, Lfku;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    .line 348
    return-void
.end method
