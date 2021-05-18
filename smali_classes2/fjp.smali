.class public Lfjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ParcelamentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    const v1, 0x7f101073

    invoke-virtual {v0, v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    new-instance v1, Lfka;

    iget-object v2, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfka;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V

    invoke-static {v0, v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;Lfka;)Lfka;

    .line 127
    iget-object v0, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;)Lfka;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfka;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    .line 130
    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfjp;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09039a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
