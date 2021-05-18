.class Llwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Llwt;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 969
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 970
    const-string v0, "DOCUMENT_RECTOR"

    const-string v1, "STATUS EDIT SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 974
    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c()V

    goto :goto_0

    .line 976
    :cond_2
    const-string v0, "DOCUMENT_RECTOR"

    const-string v1, "STATUS EDIT ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llwt;->a:Llwr;

    invoke-virtual {v0}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 966
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llwt;->a(Lis;)V

    return-void
.end method
