.class public Lihg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const-string v0, "Outros_PropostasEmAberto_AceitarTermo_Acao"

    iget-object v1, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligg;

    move-result-object v1

    invoke-virtual {v1}, Ligg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V

    .line 122
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->c(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0, v4}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Z)Z

    .line 112
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->d(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-virtual {v1}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0, v3}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Z)Z

    .line 117
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->d(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-virtual {v1}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lihg;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
