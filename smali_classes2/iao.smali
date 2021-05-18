.class public Liao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpd;


# instance fields
.field final synthetic a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    check-cast p1, Lhzp;

    invoke-static {v0, p1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhzp;)Lhzp;

    .line 227
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhzp;

    move-result-object v0

    invoke-virtual {v0}, Lhzp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-virtual {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->E()V

    .line 229
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    iget-object v1, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhzp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhzp;)Lhzp;

    .line 230
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Liav;

    move-result-object v0

    invoke-interface {v0}, Liav;->b()V

    .line 231
    iget-object v0, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->h(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhzp;

    move-result-object v0

    iget-object v1, p0, Liao;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Libo;

    move-result-object v1

    invoke-static {v0, v1}, Libm;->a(Lhzp;Libo;)V

    .line 233
    :cond_0
    return-void
.end method
