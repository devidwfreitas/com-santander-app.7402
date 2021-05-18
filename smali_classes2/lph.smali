.class Llph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Llph;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llph;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Llph;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method
