.class public Lkld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lklq;


# instance fields
.field private a:Lkla;


# direct methods
.method public constructor <init>(Lkla;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkld;->a:Lkla;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lkla;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lkla;

    invoke-direct {v0}, Lkla;-><init>()V

    .line 21
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->setAgencia(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->j(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->a(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->b(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->c(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->h(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->d(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->getConnUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->setConnUuid(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lkld;->a:Lkla;

    invoke-virtual {v1}, Lkla;->getTokenSessao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->setTokenSessao(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method
