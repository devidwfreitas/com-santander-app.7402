.class public Lfme;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lfwb;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 753
    iput-object p1, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 758
    new-instance v0, Lfwb;

    invoke-direct {v0}, Lfwb;-><init>()V

    iput-object v0, p0, Lfme;->d:Lfwb;

    .line 754
    iput-object p2, p0, Lfme;->b:Ljava/lang/String;

    .line 755
    iput-object p3, p0, Lfme;->c:Ljava/lang/String;

    .line 756
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftm;
    .locals 2

    .prologue
    .line 768
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    invoke-virtual {v0}, Lhbh;->a()Lftm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftm;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 779
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 781
    :cond_0
    if-nez p1, :cond_1

    .line 782
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 804
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p1}, Lftm;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Lfme;->d:Lfwb;

    invoke-virtual {v0, p1}, Lfwb;->a(Lftm;)V

    .line 791
    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 795
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfme;->d:Lfwb;

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v1

    invoke-virtual {v1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/util/List;)Ljava/util/List;

    .line 796
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    new-instance v1, Lftq;

    invoke-direct {v1}, Lftq;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lftq;)Lftq;

    .line 797
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v0

    iget-object v1, p0, Lfme;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lftq;->a(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v1

    iget-object v0, p0, Lfme;->b:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfme;->b:Ljava/lang/String;

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lftq;->b(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->q(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    goto :goto_0

    .line 798
    :cond_3
    iget-object v0, p0, Lfme;->b:Ljava/lang/String;

    goto :goto_1

    .line 801
    :cond_4
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v0

    iget-object v1, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 748
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfme;->a([Ljava/lang/Void;)Lftm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 748
    check-cast p1, Lftm;

    invoke-virtual {p0, p1}, Lfme;->a(Lftm;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfme;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 763
    return-void
.end method
