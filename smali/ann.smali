.class public Lann;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/error/SantanderErrorView;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/error/SantanderErrorView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lann;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lann;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    invoke-static {v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a(Lbr/com/santander/uisdk/error/SantanderErrorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lann;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    invoke-static {v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a(Lbr/com/santander/uisdk/error/SantanderErrorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method
