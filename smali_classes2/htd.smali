.class public Lhtd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtc;


# instance fields
.field private a:Lhoy;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lhoy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lhtd;->a:Lhoy;

    .line 40
    iput-object p1, p0, Lhtd;->b:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic a(Lhtd;)Lhoy;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lhtd;->a:Lhoy;

    return-object v0
.end method

.method static synthetic b(Lhtd;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lhtd;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lhtw;

    iget-object v1, p0, Lhtd;->b:Landroid/app/Activity;

    new-instance v2, Lhtf;

    invoke-direct {v2, p0}, Lhtf;-><init>(Lhtd;)V

    invoke-direct {v0, v1, v2}, Lhtw;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 85
    invoke-virtual {v0, v1}, Lhtw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lhty;

    iget-object v1, p0, Lhtd;->b:Landroid/app/Activity;

    new-instance v2, Lhte;

    invoke-direct {v2, p0}, Lhte;-><init>(Lhtd;)V

    invoke-direct {v0, v1, v2}, Lhty;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;

    invoke-direct {v3, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Lhty;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lhtd;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payroll-loans/v1/contract-terms?contractType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    sget-object v3, Lim;->GET:Lim;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v1

    .line 93
    new-instance v2, Lhth;

    invoke-direct {v2, p0, v1, v0}, Lhth;-><init>(Lhtd;Lir;Landroid/app/Dialog;)V

    .line 105
    invoke-virtual {v2}, Lhth;->a()V

    .line 106
    return-void
.end method
