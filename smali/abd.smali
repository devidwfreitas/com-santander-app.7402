.class Labd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Labd;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Labd;->a:Labb;

    invoke-static {v0}, Labb;->d(Labb;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Labd;->a:Labb;

    invoke-static {v1}, Labb;->b(Labb;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
