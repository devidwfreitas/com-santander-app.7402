.class Lhkw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhku;


# direct methods
.method constructor <init>(Lhku;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhkw;->a:Lhku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lhkw;->a:Lhku;

    iget-object v0, v0, Lhku;->a:Lhkt;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lhkw;->a:Lhku;

    iget-object v0, v0, Lhku;->a:Lhkt;

    iget-object v1, p0, Lhkw;->a:Lhku;

    iget-object v1, v1, Lhku;->b:Lhxl;

    invoke-interface {v0, v1}, Lhkt;->b(Lhxl;)V

    .line 72
    :cond_0
    return-void
.end method
