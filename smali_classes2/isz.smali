.class Lisz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lism;


# direct methods
.method constructor <init>(Lism;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lisz;->a:Lism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lisz;->a:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0, p1}, Litf;->b(Landroid/view/View;)V

    .line 290
    return-void
.end method
