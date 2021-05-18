.class public Lgco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpd;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    check-cast p1, Lgbd;

    invoke-static {v0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Lgbd;)Lgbd;

    .line 85
    iget-object v0, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;

    move-result-object v0

    invoke-virtual {v0}, Lgbd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgdq;

    move-result-object v0

    invoke-interface {v0}, Lgdq;->c()V

    .line 87
    iget-object v0, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    iget-object v1, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;

    move-result-object v1

    invoke-virtual {v1}, Lgbd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Ljava/lang/String;)V

    .line 91
    const-string v0, "ServicosInternacionais_Cambio_Favorecido_Pais_Acao"

    iget-object v1, p0, Lgco;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;

    move-result-object v1

    invoke-virtual {v1}, Lgbd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
