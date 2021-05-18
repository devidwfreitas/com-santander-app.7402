.class Llim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lktq;

.field final synthetic b:Llik;


# direct methods
.method constructor <init>(Llik;Lktq;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Llim;->b:Llik;

    iput-object p2, p0, Llim;->a:Lktq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Llim;->b:Llik;

    invoke-static {v0}, Llik;->a(Llik;)Llir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Llim;->b:Llik;

    invoke-static {v0}, Llik;->a(Llik;)Llir;

    move-result-object v0

    iget-object v1, p0, Llim;->a:Lktq;

    invoke-interface {v0, v1}, Llir;->a(Lktq;)V

    .line 113
    :cond_0
    return-void
.end method
