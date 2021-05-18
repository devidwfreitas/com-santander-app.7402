.class Lxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxq;


# direct methods
.method constructor <init>(Lxq;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lxr;->a:Lxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lxr;->a:Lxq;

    invoke-static {v0}, Lxq;->a(Lxq;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 59
    return-void
.end method
