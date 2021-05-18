.class public Lano;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 20
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lalw;->Santander_Loading:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 23
    sget v1, Lalu;->santander_dialog_loading:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v3, Lalw;->Santander_Loading:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 28
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 31
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lano;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 37
    return-object v0
.end method
