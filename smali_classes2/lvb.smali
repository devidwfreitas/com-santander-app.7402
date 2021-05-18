.class Llvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lluv;


# direct methods
.method constructor <init>(Lluv;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Llvb;->a:Lluv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Llvb;->a:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Llvb;->a:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    invoke-interface {v0}, Llve;->a()V

    .line 229
    :cond_0
    return-void
.end method
