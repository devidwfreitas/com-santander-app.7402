.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Landroid/support/v4/view/LayoutInflaterCompatBase;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    return-object v0
.end method

.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompatBase;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 37
    return-void
.end method