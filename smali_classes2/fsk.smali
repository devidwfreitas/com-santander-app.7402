.class public Lfsk;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/app/Activity;

.field private e:Lfso;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfso;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lfsk;->d:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lfsk;->e:Lfso;

    .line 34
    return-void
.end method

.method static synthetic a(Lfsk;)Lfso;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lfsk;->e:Lfso;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfsk;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f040177

    invoke-virtual {p0, v0}, Lfsk;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lfsk;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v0, 0x7f10074a

    invoke-virtual {p0, v0}, Lfsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfsk;->a:Landroid/widget/Button;

    .line 44
    const v0, 0x7f10074b

    invoke-virtual {p0, v0}, Lfsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfsk;->b:Landroid/widget/Button;

    .line 45
    const v0, 0x7f10074c

    invoke-virtual {p0, v0}, Lfsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfsk;->c:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lfsk;->a:Landroid/widget/Button;

    new-instance v1, Lfsl;

    invoke-direct {v1, p0}, Lfsl;-><init>(Lfsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lfsk;->b:Landroid/widget/Button;

    new-instance v1, Lfsm;

    invoke-direct {v1, p0}, Lfsm;-><init>(Lfsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lfsk;->c:Landroid/widget/Button;

    new-instance v1, Lfsn;

    invoke-direct {v1, p0}, Lfsn;-><init>(Lfsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
