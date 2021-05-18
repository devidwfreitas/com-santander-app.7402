.class public Lgcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lgcb;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lgcb;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->n(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 456
    return-void
.end method
