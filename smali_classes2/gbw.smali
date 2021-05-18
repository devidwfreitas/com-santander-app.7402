.class public Lgbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpd;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    check-cast p1, Lgaz;

    invoke-static {v0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgaz;)Lgaz;

    .line 176
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v2

    invoke-virtual {v2}, Lgaz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v2

    invoke-virtual {v2}, Lgaz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    new-instance v1, Lgui;

    invoke-direct {v1}, Lgui;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgui;)Lgui;

    .line 179
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgui;

    move-result-object v0

    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgui;->a(Landroid/widget/EditText;)V

    .line 180
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v0

    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    :cond_0
    const-string v0, "JPY"

    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v1

    invoke-virtual {v1}, Lgaz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v0

    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgui;)Lgui;

    .line 186
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->e(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    .line 192
    const-string v0, "ServicosInternacionais_Cambio_Cambio_MoedaEstrangeira_Acao"

    iget-object v1, p0, Lgbw;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v1

    invoke-virtual {v1}, Lgaz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
