.class public Lljv;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lljv;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lljv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lljv;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->i(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 240
    iget-object v0, p0, Lljv;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    new-instance v1, Lljw;

    invoke-direct {v1, p0}, Lljw;-><init>(Lljv;)V

    invoke-static {v0, p1, v1}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method
