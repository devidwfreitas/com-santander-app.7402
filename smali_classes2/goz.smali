.class public Lgoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/ClickToSelectEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/ClickToSelectEditText;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lgoz;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lgoz;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lgoz;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-static {v1, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 136
    return-void
.end method
