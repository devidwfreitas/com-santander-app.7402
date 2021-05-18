.class public Llss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Lkus;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iput-object p2, p0, Llss;->a:Lkus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 821
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v1, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const v4, 0x7f090362

    .line 790
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 792
    :cond_0
    :try_start_0
    instance-of v0, p1, Lis;

    if-eqz v0, :cond_1

    .line 793
    check-cast p1, Lis;

    .line 794
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 795
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkwn;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwn;

    .line 797
    iget-object v1, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v2, p0, Llss;->a:Lkus;

    invoke-static {v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)Ljava/io/File;

    move-result-object v1

    .line 799
    invoke-virtual {v0}, Lkwn;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 800
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 801
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 802
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 803
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 804
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0, v1}, Lmhj;->a(Lgrs;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v1, p0, Llss;->a:Lkus;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lkus;)Z

    .line 812
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 813
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v1, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_1
    :try_start_1
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 807
    iget-object v0, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v1, p0, Llss;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
