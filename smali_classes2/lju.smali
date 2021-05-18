.class public Llju;
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
        "Lkto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, Lkto;

    invoke-virtual {p0, p1}, Llju;->a(Lkto;)V

    return-void
.end method

.method public a(Lkto;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;Lkto;)Lkto;

    .line 231
    new-instance v0, Llly;

    iget-object v1, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->g(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lkto;

    move-result-object v1

    invoke-virtual {v1}, Lkto;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llly;-><init>(Ljava/util/List;)V

    .line 232
    iget-object v1, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-virtual {v0, v1}, Llly;->a(Llmd;)V

    .line 233
    iget-object v1, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->h(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 234
    iget-object v0, p0, Llju;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->i(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 235
    return-void
.end method
