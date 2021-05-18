.class public Llrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p2, p0, Llrp;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 778
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llrp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llrp;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 785
    iget-object v1, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->i(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 786
    iget-object v1, p0, Llrp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    goto :goto_0
.end method
