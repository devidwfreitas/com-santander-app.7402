.class Llih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lknz;

.field final synthetic b:Llig;


# direct methods
.method constructor <init>(Llig;Lknz;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Llih;->b:Llig;

    iput-object p2, p0, Llih;->a:Lknz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Llih;->b:Llig;

    invoke-static {v0}, Llig;->a(Llig;)Llij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Llih;->b:Llig;

    invoke-static {v0}, Llig;->a(Llig;)Llij;

    move-result-object v0

    iget-object v1, p0, Llih;->a:Lknz;

    invoke-interface {v0, v1}, Llij;->a(Lknz;)V

    .line 62
    :cond_0
    return-void
.end method
