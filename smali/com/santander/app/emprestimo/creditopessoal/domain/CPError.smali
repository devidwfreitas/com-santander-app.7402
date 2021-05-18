.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private provider:Lhxv;


# direct methods
.method public constructor <init>(Lhxv;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->provider:Lhxv;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lhoj;

    invoke-direct {v0, p0, p1, p2}, Lhoj;-><init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->provider:Lhxv;

    .line 27
    return-void
.end method


# virtual methods
.method public canShowMessage()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->provider:Lhxv;

    invoke-interface {v0}, Lhxv;->getMensagemRetorno()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->provider:Lhxv;

    invoke-interface {v0}, Lhxv;->getMensagemRetorno()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
