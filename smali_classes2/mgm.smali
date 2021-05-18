.class public Lmgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/utils/DummyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/utils/DummyActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmgm;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmgm;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v1, "tela"

    const-string v2, "proposta"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lmgm;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
