.class Llcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcf;


# direct methods
.method constructor <init>(Llcf;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Llcg;->a:Llcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Llcg;->a:Llcf;

    invoke-static {v0}, Llcf;->a(Llcf;)Llci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Llcg;->a:Llcf;

    invoke-static {v0}, Llcf;->a(Llcf;)Llci;

    move-result-object v0

    invoke-interface {v0}, Llci;->a()V

    .line 115
    :cond_0
    return-void
.end method
