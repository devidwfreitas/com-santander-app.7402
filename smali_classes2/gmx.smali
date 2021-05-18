.class public Lgmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Land;


# instance fields
.field private a:Lcom/santander/app/contacorrente/domain/Conta;


# direct methods
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$"

    const-string v2, ""

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$"

    const-string v2, ""

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgmx;->a:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method
