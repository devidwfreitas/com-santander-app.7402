.class public Lgcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgsm;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lgcl;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "onQueryTextSubmit"

    const-string v1, "onQueryTextSubmit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "CARACTER SEARCH"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lgcl;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    iget-object v1, p0, Lgcl;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-static {v1, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Ljava/util/List;)Ljava/util/List;

    .line 71
    iget-object v0, p0, Lgcl;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Lgcw;

    move-result-object v0

    iget-object v1, p0, Lgcl;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgcw;->a(Ljava/util/List;)V

    .line 72
    const/4 v0, 0x0

    return v0
.end method
