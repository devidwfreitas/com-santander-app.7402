.class public Lljx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    const-string v1, "jsons/sinister/termsofuse.json"

    invoke-static {v0, v1}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    const-class v3, Lkto;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkto;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;Lkto;)Lkto;

    .line 266
    new-instance v0, Llly;

    iget-object v1, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->g(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lkto;

    move-result-object v1

    invoke-virtual {v1}, Lkto;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llly;-><init>(Ljava/util/List;)V

    .line 267
    iget-object v1, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-virtual {v0, v1}, Llly;->a(Llmd;)V

    .line 268
    iget-object v1, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->h(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 269
    iget-object v0, p0, Lljx;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->i(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 270
    return-void
.end method
