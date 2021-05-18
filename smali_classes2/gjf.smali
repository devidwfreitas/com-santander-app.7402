.class public Lgjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lgjf;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 123
    const-string v0, "barcode"

    iget-object v1, p0, Lgjf;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;)Lgid;

    move-result-object v1

    invoke-virtual {v1}, Lgid;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lgjf;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;)Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 126
    iget-object v0, p0, Lgjf;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    const-string v1, "C\u00f3digo de barras copiado para \u00e1rea de transfer\u00eancia"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method
