.class public Lfqr;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfuy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

.field private b:Landroid/app/Dialog;

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 1

    .prologue
    .line 686
    iput-object p1, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-direct {p0}, Lgne;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfqr;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Lfqm;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lfqr;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfuy;
    .locals 6

    .prologue
    .line 716
    .line 718
    :try_start_0
    iget-object v0, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfqr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 720
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtracto()Lfuy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtracto()Lfuy;

    move-result-object v1

    .line 736
    :goto_0
    invoke-virtual {v0, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setExtracto(Lfuy;)V

    move-object v0, v1

    .line 741
    :goto_1
    return-object v0

    .line 724
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 727
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 728
    const/4 v3, 0x6

    .line 729
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 730
    const/4 v4, 0x5

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 731
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 732
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-static {}, Lhat;->g()Lhbe;

    move-result-object v3

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v1}, Lhbe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfuy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 686
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfqr;->a([Ljava/lang/Void;)Lfuy;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfqr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtracto()Lfuy;

    move-result-object v0

    .line 703
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfqr;->d:Z

    if-eqz v0, :cond_0

    .line 706
    :try_start_0
    iget-object v0, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfqr;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 693
    iput p1, p0, Lfqr;->c:I

    .line 694
    return-void
.end method

.method protected a(Lfuy;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lfqr;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqr;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lfqr;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lfqr;->b:Landroid/app/Dialog;

    .line 753
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfuy;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfqr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0, p1}, Lcom/santander/app/contacorrente/domain/Conta;->setExtracto(Lfuy;)V

    .line 756
    iget-object v0, p0, Lfqr;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->j(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    .line 758
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 686
    check-cast p1, Lfuy;

    invoke-virtual {p0, p1}, Lfqr;->a(Lfuy;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 697
    iput-boolean p1, p0, Lfqr;->d:Z

    .line 698
    return-void
.end method
