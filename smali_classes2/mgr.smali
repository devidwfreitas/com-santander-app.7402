.class public Lmgr;
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
    .line 171
    iput-object p1, p0, Lmgr;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lmgr;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmgr;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    const-class v3, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/utils/DummyActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
