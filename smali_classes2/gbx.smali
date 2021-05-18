.class public Lgbx;
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
    .line 197
    iput-object p1, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    check-cast p1, Lgaz;

    invoke-static {v0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgaz;)Lgaz;

    .line 201
    iget-object v0, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->g(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v2

    invoke-virtual {v2}, Lgaz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v2

    invoke-virtual {v2}, Lgaz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lgbx;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->h(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    .line 203
    return-void
.end method
