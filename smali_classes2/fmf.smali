.class public Lfmf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;

.field private b:Ljava/lang/String;

.field private c:Lfuu;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lftd;

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 668
    iput-object p1, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 670
    iput-object v0, p0, Lfmf;->b:Ljava/lang/String;

    .line 671
    iput-object v0, p0, Lfmf;->c:Lfuu;

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lfmf;->d:Ljava/lang/String;

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lfmf;->f:Ljava/lang/String;

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lfmf;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lfmf;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftt;
    .locals 8

    .prologue
    .line 715
    iget-boolean v0, p0, Lfmf;->i:Z

    if-nez v0, :cond_0

    .line 718
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfmf;->c:Lfuu;

    iget-boolean v2, p0, Lfmf;->e:Z

    iget-object v3, p0, Lfmf;->f:Ljava/lang/String;

    iget-object v4, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v4}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v4

    iget-object v5, p0, Lfmf;->d:Ljava/lang/String;

    iget-object v6, p0, Lfmf;->b:Ljava/lang/String;

    iget-object v7, p0, Lfmf;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lhbh;->a(Lfuu;ZLjava/lang/String;Lftq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lftt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftt;)V
    .locals 8

    .prologue
    .line 731
    iget-boolean v0, p0, Lfmf;->i:Z

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 734
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 737
    :cond_0
    invoke-virtual {p1}, Lftt;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 744
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v2, p0, Lfmf;->b:Ljava/lang/String;

    iget-object v3, p0, Lfmf;->c:Lfuu;

    iget-object v4, p0, Lfmf;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lfmf;->e:Z

    iget-object v6, p0, Lfmf;->f:Ljava/lang/String;

    iget-object v7, p0, Lfmf;->h:Lftd;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/santander/app/RendaFixaAplicacaoActivity;->openConfirmar(Lftt;Ljava/lang/String;Lfuu;Ljava/lang/String;ZLjava/lang/String;Lftd;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmf;->a([Ljava/lang/Void;)Lftt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 668
    check-cast p1, Lftt;

    invoke-virtual {p0, p1}, Lfmf;->a(Lftt;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 682
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->k(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->b:Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lfmf;->b:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->b:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v0, v0, Lcom/santander/app/RendaFixaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->j(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuu;

    iput-object v0, p0, Lfmf;->c:Lfuu;

    .line 686
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 687
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->g:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->f()Ljava/util/Vector;

    move-result-object v2

    .line 689
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    iput-object v0, p0, Lfmf;->h:Lftd;

    .line 691
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->n(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 692
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->n(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfmf;->d:Ljava/lang/String;

    .line 702
    :cond_0
    :goto_0
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->o(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 703
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->f:Ljava/lang/String;

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfmf;->e:Z

    .line 710
    :cond_1
    :goto_1
    iget-object v0, p0, Lfmf;->f:Ljava/lang/String;

    invoke-static {v0}, Lnak;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->f:Ljava/lang/String;

    .line 711
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const v1, 0x7f100e0f

    invoke-virtual {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 695
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->d:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lfmf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfmf;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfmf;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 697
    :cond_3
    iput-boolean v3, p0, Lfmf;->i:Z

    .line 698
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v0

    iget-object v1, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 705
    :cond_4
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->o(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 706
    iget-object v0, p0, Lfmf;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->p(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfos;

    move-result-object v0

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmf;->f:Ljava/lang/String;

    .line 707
    iput-boolean v3, p0, Lfmf;->e:Z

    goto :goto_1
.end method
