.class public Lhty;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;",
        "Ljava/lang/Void;",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p2, p0, Lhty;->a:Lgkv;

    .line 29
    iput-object p1, p0, Lhty;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;

    invoke-static {}, Lhas;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterTextoCondicoesCP"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;

    return-object v0
.end method

.method protected a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lhty;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lhty;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;

    invoke-virtual {p0, p1}, Lhty;->a([Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;

    invoke-virtual {p0, p1}, Lhty;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Lhty;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lhty;->c:Landroid/app/Dialog;

    .line 36
    return-void
.end method
