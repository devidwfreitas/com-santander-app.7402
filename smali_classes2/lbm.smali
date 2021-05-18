.class Llbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbl;


# direct methods
.method constructor <init>(Llbl;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Llbm;->a:Llbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Llbm;->a:Llbl;

    invoke-static {v0}, Llbl;->a(Llbl;)Llbo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Llbm;->a:Llbl;

    invoke-static {v0}, Llbl;->a(Llbl;)Llbo;

    move-result-object v0

    invoke-interface {v0}, Llbo;->a()V

    .line 138
    :cond_0
    return-void
.end method
