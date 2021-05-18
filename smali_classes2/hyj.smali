.class Lhyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqb;


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lhyj;->b:Lhyb;

    iput-object p2, p0, Lhyj;->a:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lhyj;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    .line 282
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lhyj;->a:Lhxy;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lhxy;->a(I)V

    .line 277
    return-void
.end method
