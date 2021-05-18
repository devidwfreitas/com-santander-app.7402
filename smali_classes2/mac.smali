.class Lmac;
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
.field final synthetic a:Lkva;

.field final synthetic b:Llzx;


# direct methods
.method constructor <init>(Llzx;Lkva;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lmac;->b:Llzx;

    iput-object p2, p0, Lmac;->a:Lkva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lmac;->b:Llzx;

    invoke-static {v0}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 364
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 366
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    .line 367
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    sget-object v2, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v1, v2}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v1

    .line 368
    if-eqz v1, :cond_1

    .line 369
    iget-object v2, p0, Lmac;->b:Llzx;

    invoke-virtual {v2}, Llzx;->b()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkva;->a(Ljava/lang/Double;)V

    .line 370
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    sget-object v3, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v2, v3}, Lmhv;->removeRequest(Lkuq;)Z

    .line 371
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    sget-object v3, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v2, v3, v1}, Lmhv;->addRequest(Lkuq;Lkva;)V

    .line 373
    :cond_1
    invoke-virtual {v0}, Lkvb;->o()Lkuq;

    move-result-object v1

    sget-object v2, Lkuq;->EQUIPMENT_LIST:Lkuq;

    if-ne v1, v2, :cond_2

    .line 374
    iget-object v0, p0, Lmac;->b:Llzx;

    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-virtual {v1}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Llzx;->a(Llzx;Ljava/lang/Double;)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-static {v1}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 378
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-static {v1}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "equipment-list-step-fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-static {v1}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lmac;->b:Llzx;

    .line 380
    invoke-static {v2}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "equipment-list-step-fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 382
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-static {v1}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 386
    :cond_3
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-static {v1}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    iget-object v2, p0, Lmac;->a:Lkva;

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;Lkva;)V

    goto/16 :goto_0

    .line 390
    :cond_4
    iget-object v0, p0, Lmac;->b:Llzx;

    invoke-static {v0}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 392
    :try_start_0
    iget-object v0, p0, Lmac;->b:Llzx;

    invoke-static {v0}, Llzx;->e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 392
    :cond_5
    :try_start_1
    iget-object v1, p0, Lmac;->b:Llzx;

    invoke-virtual {v1}, Llzx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lmac;->a(Lis;)V

    return-void
.end method
