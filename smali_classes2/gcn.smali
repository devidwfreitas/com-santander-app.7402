.class public Lgcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lgcn;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lgcn;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbd;

    invoke-static {v1, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Lgbd;)Lgbd;

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    const-string v1, "demais_paises_selected"

    iget-object v2, p0, Lgcn;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Lgbd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lgcn;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lgcn;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-virtual {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->finish()V

    .line 140
    return-void
.end method
