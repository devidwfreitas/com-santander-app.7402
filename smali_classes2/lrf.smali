.class public Llrf;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iput-object p2, p0, Llrf;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 379
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-eqz p1, :cond_2

    .line 382
    :try_start_0
    invoke-static {p1}, Lmhj;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string v1, "Tamanho do arquivo: "

    invoke-static {p1}, Lmhj;->b(Ljava/io/File;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    invoke-static {p1}, Lmhj;->b(Ljava/io/File;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 386
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iget-object v1, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_2
    :goto_1
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 410
    :cond_3
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 388
    :cond_4
    :try_start_1
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iget-object v1, p0, Llrf;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Landroid/net/Uri;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lmhj;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 390
    iget-object v2, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v2, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Landroid/graphics/Bitmap;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 394
    :cond_5
    :try_start_2
    invoke-static {p1}, Lmhj;->b(Ljava/io/File;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 395
    iget-object v0, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iget-object v1, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090456

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_6
    invoke-static {p1}, Lmhj;->c(Ljava/io/File;)[B

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Llrf;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v2, v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Llrf;->a(Ljava/io/File;)V

    return-void
.end method
