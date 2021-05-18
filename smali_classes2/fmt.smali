.class public Lfmt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 1

    .prologue
    .line 674
    iput-object p1, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfmt;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lfmt;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwb;
    .locals 2

    .prologue
    .line 689
    .line 690
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->d()Lfwb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfwb;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 702
    iput-boolean v3, p0, Lfmt;->b:Z

    .line 704
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfwb;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lfwb;)V

    .line 708
    iget-object v0, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->j()Lfwb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Lfwb;)Lfwb;

    .line 709
    iget-object v0, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->x(Lcom/santander/app/RendaFixaResgateActivity;)V

    .line 710
    iget-object v0, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->w(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 728
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 674
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmt;->a([Ljava/lang/Void;)Lfwb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 674
    check-cast p1, Lfwb;

    invoke-virtual {p0, p1}, Lfmt;->a(Lfwb;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 680
    iget-boolean v0, p0, Lfmt;->b:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lfmt;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->w(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 683
    :cond_0
    return-void
.end method
