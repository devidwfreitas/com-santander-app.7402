.class public Lifn;
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
    .line 161
    iput-object p1, p0, Lifn;->a:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lifn;->a:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;I)V

    .line 165
    return-void
.end method
