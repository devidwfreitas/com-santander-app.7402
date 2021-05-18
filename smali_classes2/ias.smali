.class public Lias;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lias;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Lias;->a(Lgmw;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lias;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lghu;)Lghu;

    .line 385
    return-void
.end method
