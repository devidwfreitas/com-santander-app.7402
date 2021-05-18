.class public Lgpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/components/view/ClickToSelectEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lgpa;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object p2, p0, Lgpa;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lgpa;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lgpa;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-static {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;)Lgpd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lgpa;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkz;

    invoke-static {v1, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;Lgkz;)Lgkz;

    .line 184
    iget-object v0, p0, Lgpa;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-static {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;)Lgpd;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkz;

    invoke-interface {v1, v0, p3}, Lgpd;->a(Ljava/lang/Object;I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lgpa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 188
    return-void
.end method
