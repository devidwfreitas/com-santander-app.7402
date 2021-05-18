.class final Lgqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lgqr;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iput-object p2, p0, Lgqr;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lgqr;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->i()V

    .line 1511
    iget-object v0, p0, Lgqr;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1512
    return-void
.end method
