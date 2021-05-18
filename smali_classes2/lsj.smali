.class public Llsj;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 5

    .prologue
    const v4, 0x7f10089f

    const v3, 0x7f090362

    .line 943
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 945
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    if-eqz p1, :cond_2

    .line 949
    :try_start_0
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 951
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, [Lkuw;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuw;

    check-cast v0, [Lkuw;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 955
    iget-object v1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 962
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 963
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 957
    :cond_2
    :try_start_1
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 958
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 968
    :cond_3
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 972
    :try_start_2
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 973
    :catch_1
    move-exception v0

    .line 974
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 975
    iget-object v0, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 972
    :cond_4
    :try_start_3
    iget-object v1, p0, Llsj;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 939
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llsj;->a(Lis;)V

    return-void
.end method
