.class Laoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Laoi;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 514
    return-void
.end method
