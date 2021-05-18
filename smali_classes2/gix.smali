.class public Lgix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lgix;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    iput-object p2, p0, Lgix;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lgix;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->n(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v1, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_QuantidadeDeParcelas"

    iget-object v0, p0, Lgix;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    invoke-virtual {v0}, Lgif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 314
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 319
    return-void
.end method
