.class Lllr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lllq;


# direct methods
.method constructor <init>(Lllq;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lllr;->a:Lllq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lllr;->a:Lllq;

    invoke-static {v0}, Lllq;->a(Lllq;)Lllu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lllr;->a:Lllq;

    invoke-static {v0}, Lllq;->a(Lllq;)Lllu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lllu;->a(Lksd;)V

    .line 70
    :cond_0
    return-void
.end method
