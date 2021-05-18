.class public Llhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Llhd;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Llhd;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Llhd;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lmhj;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
