.class Llxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Llxb;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 881
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llxb;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const v5, 0x7f090362

    .line 851
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    :try_start_0
    instance-of v0, p1, Lis;

    if-eqz v0, :cond_2

    .line 854
    check-cast p1, Lis;

    .line 855
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 856
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

    .line 858
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llxb;->a:Llwr;

    invoke-static {v2}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Llxb;->a:Llwr;

    iget-object v4, p0, Llxb;->a:Llwr;

    invoke-static {v4}, Llwr;->d(Llwr;)Lkwk;

    move-result-object v4

    invoke-static {v3, v4}, Llwr;->b(Llwr;Lkwk;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0}, Lkwn;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 861
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 862
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 863
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 864
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 865
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lmhj;->a(Lgrs;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 873
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llxb;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    :cond_2
    :try_start_1
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 868
    iget-object v0, p0, Llxb;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llxb;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
