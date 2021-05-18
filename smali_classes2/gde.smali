.class Lgde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgdc;


# direct methods
.method constructor <init>(Lgdc;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgde;->a:Lgdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lgde;->a:Lgdc;

    invoke-static {v0}, Lgdc;->b(Lgdc;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lgde;->a:Lgdc;

    invoke-static {v0}, Lgdc;->a(Lgdc;)Lgdf;

    move-result-object v0

    iget-object v1, p0, Lgde;->a:Lgdc;

    invoke-static {v1}, Lgdc;->b(Lgdc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdf;->a(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lgde;->a:Lgdc;

    invoke-static {v0}, Lgdc;->c(Lgdc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgde;->a:Lgdc;

    const v2, 0x7f10069e

    invoke-virtual {v1, v2}, Lgdc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method
