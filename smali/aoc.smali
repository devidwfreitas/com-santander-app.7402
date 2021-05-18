.class Laoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Laoc;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Laoc;->a:Laoa;

    invoke-static {v0}, Laoa;->f(Laoa;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Laoc;->a:Laoa;

    invoke-static {v1}, Laoa;->d(Laoa;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 324
    return-void
.end method
