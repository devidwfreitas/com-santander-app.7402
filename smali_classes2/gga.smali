.class public Lgga;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/app/Activity;

.field private c:Lgfl;

.field private d:Liex;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgfl;Liex;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lgga;->b:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lgga;->c:Lgfl;

    .line 35
    iput-object p3, p0, Lgga;->d:Liex;

    .line 36
    return-void
.end method

.method static synthetic a(Lgga;)Lgfl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgga;->c:Lgfl;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 58
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 63
    iget-object v0, p0, Lgga;->d:Liex;

    invoke-interface {v0}, Liex;->b()V

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgga;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v1, p0, Lgga;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgga;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f040169

    invoke-virtual {p0, v0}, Lgga;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lgga;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    const v0, 0x7f10071b

    invoke-virtual {p0, v0}, Lgga;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgga;->a:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lgga;->a:Landroid/widget/Button;

    new-instance v1, Lggb;

    invoke-direct {v1, p0}, Lggb;-><init>(Lgga;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
