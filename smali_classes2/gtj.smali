.class public Lgtj;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lgtn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgtn;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    const v0, 0x7f0b0224

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lgtj;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lgtj;->b:Lgtn;

    .line 33
    return-void
.end method

.method static synthetic a(Lgtj;)Lgtn;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgtj;->b:Lgtn;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgtj;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f040147

    invoke-virtual {p0, v0}, Lgtj;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lgtj;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 47
    invoke-virtual {p0, v2}, Lgtj;->setCancelable(Z)V

    .line 50
    :cond_0
    const v0, 0x7f1006a7

    invoke-virtual {p0, v0}, Lgtj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    new-instance v1, Lgtk;

    invoke-direct {v1, p0}, Lgtk;-><init>(Lgtj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f1006a4

    invoke-virtual {p0, v0}, Lgtj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 59
    new-instance v1, Lgtl;

    invoke-direct {v1, p0}, Lgtl;-><init>(Lgtj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f1006a6

    invoke-virtual {p0, v0}, Lgtj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 67
    new-instance v1, Lgtm;

    invoke-direct {v1, p0}, Lgtm;-><init>(Lgtj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method
