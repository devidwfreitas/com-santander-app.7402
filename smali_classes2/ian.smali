.class public Lian;
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
    .line 197
    iput-object p1, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    check-cast p1, Lhze;

    invoke-static {v0, p1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhze;)Lhze;

    .line 201
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;

    move-result-object v0

    invoke-virtual {v0}, Lhze;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    new-instance v1, Lhze;

    invoke-direct {v1}, Lhze;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhze;)Lhze;

    .line 203
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    iget-object v1, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhze;)Lhze;

    .line 204
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Z)Z

    .line 205
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->c(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->c(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;

    move-result-object v1

    invoke-virtual {v1}, Lhze;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->d(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;

    move-result-object v0

    iget-object v1, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Libo;

    move-result-object v1

    invoke-static {v0, v1}, Libm;->a(Lhze;Libo;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lian;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Z)Z

    goto :goto_0
.end method
