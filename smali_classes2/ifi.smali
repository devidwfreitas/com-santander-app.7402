.class public Lifi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lifi;->a:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lifi;->a:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;I)V

    .line 77
    return-void
.end method
