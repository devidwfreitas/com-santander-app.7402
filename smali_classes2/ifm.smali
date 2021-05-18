.class public Lifm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liev;

.field final synthetic b:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;Liev;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lifm;->b:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    iput-object p2, p0, Lifm;->a:Liev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lifm;->b:Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    iget-object v1, p0, Lifm;->a:Liev;

    invoke-static {v0, v1}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;Liev;)V

    .line 157
    return-void
.end method
