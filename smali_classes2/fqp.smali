.class public Lfqp;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfrc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-direct {p0}, Lgne;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfrc;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 546
    .line 550
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 551
    const/4 v1, 0x2

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 552
    const-string v1, "yyyyMMdd"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 555
    const/4 v3, 0x2

    const/4 v4, -0x4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 556
    const-string v3, "yyyyMMdd"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v3}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 559
    invoke-static {}, Lhat;->m()Lfrg;

    move-result-object v3

    iget-object v4, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v4}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v5}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v1, v4, v5}, Lfrg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfrc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 563
    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfqp;->a([Ljava/lang/Void;)Lfrc;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfqp;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lfrc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lfqp;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqp;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lfqp;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lfqp;->b:Landroid/app/Dialog;

    .line 577
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfrc;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 578
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_2
    iget-object v0, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0, p1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Lfrc;)Lfrc;

    .line 584
    iget-object v0, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->f(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    .line 585
    iget-object v0, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->g(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    .line 586
    iget-object v0, p0, Lfqp;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->h(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lfqq;

    move-result-object v0

    invoke-virtual {v0}, Lfqq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    check-cast p1, Lfrc;

    invoke-virtual {p0, p1}, Lfqp;->a(Lfrc;)V

    return-void
.end method
