.class public Llgf;
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
        "Lkpv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lkpv;

    invoke-virtual {p0, p1}, Llgf;->a(Lkpv;)V

    return-void
.end method

.method public a(Lkpv;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;Lkpv;)Lkpv;

    .line 124
    iget-object v0, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V

    .line 125
    iget-object v0, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Llgf;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method
