.class public Llrk;
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
    .line 806
    iput-object p1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 810
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 811
    iget-object v0, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
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

    .line 813
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v1, v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 816
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lkvb;->f()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->C:Ljava/util/List;

    .line 818
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 820
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;I)V

    .line 821
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v1, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;I)I

    .line 822
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lkvb;)V

    .line 823
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v1, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z

    .line 824
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v1, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z

    .line 825
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->clear()V

    .line 826
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lkuy;)Lkuy;

    .line 827
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    iget-object v2, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmhv;->setCoverageId(J)V

    .line 828
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 829
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Llrl;

    invoke-direct {v2, p0, v0}, Llrl;-><init>(Llrk;Lkvb;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    :goto_1
    iget-object v0, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z

    goto :goto_0

    .line 836
    :cond_2
    iget-object v1, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;)V

    goto :goto_1

    .line 840
    :cond_3
    iget-object v0, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lis;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 806
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llrk;->a(Lis;)V

    return-void
.end method
