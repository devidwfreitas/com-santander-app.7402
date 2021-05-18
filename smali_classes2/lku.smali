.class Llku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llkx;

.field final synthetic b:Llkt;


# direct methods
.method constructor <init>(Llkt;Llkx;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Llku;->b:Llkt;

    iput-object p2, p0, Llku;->a:Llkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Llku;->b:Llkt;

    invoke-static {v0}, Llkt;->a(Llkt;)Llkz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Llku;->b:Llkt;

    invoke-static {v0}, Llkt;->a(Llkt;)Llkz;

    move-result-object v0

    iget-object v1, p0, Llku;->a:Llkx;

    invoke-virtual {v1}, Llkx;->b()Llla;

    move-result-object v1

    invoke-interface {v0, v1}, Llkz;->a(Llla;)V

    .line 128
    :cond_0
    return-void
.end method
