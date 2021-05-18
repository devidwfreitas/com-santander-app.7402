.class public Lgcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    const-string v0, "ServicosInternacionais_Cambio_Favorecido_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lgax;

    invoke-direct {v1}, Lgax;-><init>()V

    .line 122
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->e(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->b(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->c(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;

    move-result-object v0

    invoke-virtual {v0}, Lgbd;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lgax;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->f(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->e(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->g(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->f(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->g(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->g(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->h(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->h(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->i(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgax;->i(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgdq;

    move-result-object v0

    iget-object v2, p0, Lgcq;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->j(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgaq;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdq;->a(Lgax;Lgaq;)V

    .line 132
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
