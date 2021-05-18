.class public Lgup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/zxing/CustomScannerActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/zxing/CustomScannerActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgup;->a:Lcom/santander/app/components/view/zxing/CustomScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgup;->a:Lcom/santander/app/components/view/zxing/CustomScannerActivity;

    invoke-virtual {v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->finish()V

    .line 64
    return-void
.end method
