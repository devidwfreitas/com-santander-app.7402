.class Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->update()V

    .line 52
    return-void
.end method
