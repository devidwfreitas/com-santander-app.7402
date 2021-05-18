.class Lhry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpm;


# instance fields
.field final synthetic a:Lhrv;


# direct methods
.method constructor <init>(Lhrv;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lhry;->a:Lhrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v0

    invoke-interface {v0}, Lhqy;->G()V

    .line 504
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v0

    invoke-interface {v0}, Lhqy;->h()V

    .line 505
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0, p1}, Lhrv;->a(Lhrv;Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 516
    return-void
.end method

.method public a(Lhxr;)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0, p1}, Lhrv;->a(Lhrv;Lhxr;)V

    .line 499
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v0

    invoke-interface {v0}, Lhqy;->G()V

    .line 510
    iget-object v0, p0, Lhry;->a:Lhrv;

    invoke-static {v0}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v0

    invoke-interface {v0}, Lhqy;->i()V

    .line 511
    return-void
.end method
