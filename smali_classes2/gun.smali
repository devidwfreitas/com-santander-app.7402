.class public Lgun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lgun;->a:Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lgun;->a:Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lgun;->a:Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    invoke-virtual {v0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->finish()V

    .line 70
    return-void
.end method
