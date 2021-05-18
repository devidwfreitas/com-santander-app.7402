.class Llva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkvy;

.field final synthetic b:Lluv;


# direct methods
.method constructor <init>(Lluv;Lkvy;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Llva;->b:Lluv;

    iput-object p2, p0, Llva;->a:Lkvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Llva;->b:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Llva;->b:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    iget-object v1, p0, Llva;->a:Lkvy;

    invoke-interface {v0, v1}, Llve;->a(Lkvy;)V

    .line 219
    :cond_0
    return-void
.end method
