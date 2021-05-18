.class public Lljz;
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
        "Lksu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lljz;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p1, Lksu;

    invoke-virtual {p0, p1}, Lljz;->a(Lksu;)V

    return-void
.end method

.method public a(Lksu;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lljz;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-virtual {p1}, Lksu;->b()Lksz;

    move-result-object v1

    invoke-virtual {v1}, Lksz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lljz;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->i(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 492
    return-void
.end method
