.class Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxn;


# direct methods
.method constructor <init>(Lxn;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lxo;->a:Lxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lxo;->a:Lxn;

    invoke-static {v0}, Lxn;->a(Lxn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 74
    return-void
.end method
