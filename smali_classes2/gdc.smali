.class public Lgdc;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgdf;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgdf;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lgdc;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lgdc;->b:Lgdf;

    .line 38
    return-void
.end method

.method static synthetic a(Lgdc;)Lgdf;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgdc;->b:Lgdf;

    return-object v0
.end method

.method static synthetic b(Lgdc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgdc;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lgdc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgdc;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgdc;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f040146

    invoke-virtual {p0, v0}, Lgdc;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lgdc;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 51
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    const v0, 0x7f10069f

    invoke-virtual {p0, v0}, Lgdc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lgdc;->e:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lgdc;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lgdc;->e:Landroid/widget/EditText;

    invoke-static {v1}, Lnar;->a(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    const v0, 0x7f1006a0

    invoke-virtual {p0, v0}, Lgdc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgdc;->c:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lgdc;->c:Landroid/widget/Button;

    new-instance v1, Lgdd;

    invoke-direct {v1, p0}, Lgdd;-><init>(Lgdc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f1006a1

    invoke-virtual {p0, v0}, Lgdc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgdc;->d:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lgdc;->d:Landroid/widget/Button;

    new-instance v1, Lgde;

    invoke-direct {v1, p0}, Lgde;-><init>(Lgdc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
