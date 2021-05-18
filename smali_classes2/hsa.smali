.class Lhsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpn;


# instance fields
.field final synthetic a:Lhrv;


# direct methods
.method constructor <init>(Lhrv;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lhsa;->a:Lhrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lhsa;->a:Lhrv;

    invoke-static {v0, p1}, Lhrv;->c(Lhrv;Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 604
    return-void
.end method

.method public a(Lhxm;Lhxq;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lhsa;->a:Lhrv;

    invoke-static {v0, p1, p2}, Lhrv;->a(Lhrv;Lhxm;Lhxq;)V

    .line 599
    return-void
.end method
