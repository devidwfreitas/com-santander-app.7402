.class Llls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lksd;

.field final synthetic b:Lllq;


# direct methods
.method constructor <init>(Lllq;Lksd;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llls;->b:Lllq;

    iput-object p2, p0, Llls;->a:Lksd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Llls;->b:Lllq;

    invoke-static {v0}, Lllq;->a(Lllq;)Lllu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Llls;->b:Lllq;

    invoke-static {v0}, Lllq;->a(Lllq;)Lllu;

    move-result-object v0

    iget-object v1, p0, Llls;->a:Lksd;

    invoke-interface {v0, v1}, Lllu;->a(Lksd;)V

    .line 80
    :cond_0
    return-void
.end method
