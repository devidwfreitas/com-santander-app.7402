.class Llah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkom;

.field final synthetic b:Llag;


# direct methods
.method constructor <init>(Llag;Lkom;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Llah;->b:Llag;

    iput-object p2, p0, Llah;->a:Lkom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Llah;->b:Llag;

    invoke-static {v0}, Llag;->a(Llag;)Llai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Llah;->b:Llag;

    invoke-static {v0}, Llag;->a(Llag;)Llai;

    move-result-object v0

    iget-object v1, p0, Llah;->a:Lkom;

    invoke-interface {v0, v1}, Llai;->a(Lkom;)V

    .line 50
    :cond_0
    return-void
.end method
