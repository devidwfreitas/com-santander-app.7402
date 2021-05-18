.class public Llru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z

    .line 1113
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->finish()V

    .line 1114
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z

    .line 1095
    if-eqz p1, :cond_1

    instance-of v0, p1, Lis;

    if-eqz v0, :cond_1

    .line 1096
    check-cast p1, Lis;

    .line 1097
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvj;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    .line 1098
    invoke-virtual {v0}, Lkvj;->a()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkvj;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1100
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->k(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvp;

    move-result-object v1

    invoke-virtual {v1}, Lkvp;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llyp;->a(Ljava/lang/String;)Llyp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Llyp;)Llyp;

    .line 1101
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->l(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Llyp;

    move-result-object v0

    iget-object v1, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "review-dialog"

    invoke-virtual {v0, v1, v2}, Llyp;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->finish()V

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v0, p0, Llru;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->finish()V

    goto :goto_0
.end method
