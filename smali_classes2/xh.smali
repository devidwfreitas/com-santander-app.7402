.class Lxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lxh;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lxh;->a:Lwx;

    invoke-virtual {v0}, Lwx;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 324
    return-void
.end method
