.class public Lhui;
.super Lhug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c0

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lhug;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lhuk;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
