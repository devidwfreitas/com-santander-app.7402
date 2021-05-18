.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private termo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 30
    invoke-virtual {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;->setTermo(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;->setConnUuid(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;->setTokenSessao(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;->setTokenTransacao(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setTermo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPRequest;->termo:Ljava/lang/String;

    .line 25
    return-void
.end method
