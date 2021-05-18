.class public Lgos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/santander/app/components/view/CheckCardView;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    iput-object p2, p0, Lgos;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->a(Lcom/santander/app/components/view/CheckCardView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->b(Lcom/santander/app/components/view/CheckCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->c(Lcom/santander/app/components/view/CheckCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->d(Lcom/santander/app/components/view/CheckCardView;)V

    .line 102
    :goto_1
    iget-object v0, p0, Lgos;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lgos;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lgos;->b:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->e(Lcom/santander/app/components/view/CheckCardView;)V

    goto :goto_1
.end method
