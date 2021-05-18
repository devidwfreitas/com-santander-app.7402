.class public Lhtw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;",
        "Ljava/lang/Void;",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgkv",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p2, p0, Lhtw;->b:Lgkv;

    .line 29
    iput-object p1, p0, Lhtw;->a:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    aget-object v1, p1, v6

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    .line 44
    invoke-static {}, Lhas;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contratarEmprestimoCP"

    const-string v5, "return"

    .line 41
    invoke-virtual/range {v0 .. v6}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    .line 40
    return-object v0
.end method

.method protected a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhtw;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lhtw;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;

    invoke-virtual {p0, p1}, Lhtw;->a([Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    invoke-virtual {p0, p1}, Lhtw;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Lhtw;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lhtw;->c:Landroid/app/Dialog;

    .line 36
    return-void
.end method
