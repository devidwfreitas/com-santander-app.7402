.class public Liep;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfui;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 1

    .prologue
    .line 732
    iput-object p1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Liep;->a:Landroid/app/Dialog;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0, p1}, Liep;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfui;
    .locals 3

    .prologue
    .line 744
    .line 746
    :try_start_0
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    iget-object v1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-static {v1, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lghu;)Lghu;

    .line 749
    :cond_0
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0}, Lghu;->j()Lfui;

    move-result-object v0

    .line 750
    if-nez v0, :cond_2

    .line 752
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbc;->c(Lghu;)Lfui;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {v1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfue;

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {v1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 761
    :cond_2
    :goto_0
    return-object v0

    .line 759
    :catch_0
    move-exception v0

    .line 761
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfui;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 766
    iget-object v0, p0, Liep;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liep;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Liep;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 768
    iput-object v5, p0, Liep;->a:Landroid/app/Dialog;

    .line 771
    :cond_0
    if-nez p1, :cond_1

    .line 772
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v4, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 783
    :goto_0
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v5, v3}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Ljava/lang/Object;I)V

    .line 784
    return-void

    .line 773
    :cond_1
    invoke-virtual {p1}, Lfui;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v4, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {p1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 779
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lghu;->a(Lfui;)V

    .line 781
    :cond_3
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->g(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 732
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liep;->a([Ljava/lang/Void;)Lfui;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 732
    check-cast p1, Lfui;

    invoke-virtual {p0, p1}, Liep;->a(Lfui;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Liep;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Liep;->a:Landroid/app/Dialog;

    .line 739
    return-void
.end method
