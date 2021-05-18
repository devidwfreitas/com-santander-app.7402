.class final Lgrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-static {}, Lgpu;->l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    iput-object v0, p0, Lgrf;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 307
    :cond_0
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->w()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->w()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpu;->c(Landroid/app/Activity;)Landroid/app/Activity;

    .line 310
    :cond_1
    iget-object v0, p0, Lgrf;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f()V

    .line 311
    return-void
.end method
