.class Landroid/support/v7/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 205
    return-void
.end method
