.class public Llqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmij;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmij",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llqx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lmin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lmin;

    move-result-object v0

    iget-object v1, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090445

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmin;->b(Ljava/lang/String;)V

    .line 421
    :cond_1
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->d()Lmio;

    move-result-object v0

    invoke-virtual {v0}, Lmio;->j()V

    .line 426
    :goto_1
    iget-object v0, p0, Llqx;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->d()Lmio;

    move-result-object v0

    invoke-virtual {v0}, Lmio;->k()V

    goto :goto_1
.end method
