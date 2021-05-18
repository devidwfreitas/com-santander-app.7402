.class public Llrj;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 5

    .prologue
    .line 754
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 756
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 763
    iget-object v1, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, [Lkuo;

    invoke-virtual {v3, v0, v4}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuo;

    check-cast v0, [Lkuo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Ljava/util/List;)Ljava/util/List;

    .line 765
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->s()V

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 769
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 770
    new-instance v3, Lkuo;

    invoke-direct {v3}, Lkuo;-><init>()V

    .line 771
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuo;

    invoke-virtual {v0}, Lkuo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkuo;->i(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuo;

    invoke-virtual {v0}, Lkuo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkuo;->e(Ljava/lang/String;)V

    .line 773
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 776
    :catch_0
    move-exception v0

    .line 777
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 778
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 779
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Llrj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lis;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 750
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llrj;->a(Lis;)V

    return-void
.end method
