.class public Llgg;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Llgg;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llgg;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Llgg;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Llgg;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 135
    iget-object v0, p0, Llgg;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    iget-object v1, p0, Llgg;->a:Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
