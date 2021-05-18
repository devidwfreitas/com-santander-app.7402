.class Lldg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lldf;


# direct methods
.method constructor <init>(Lldf;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lldg;->a:Lldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lldg;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lldg;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    invoke-interface {v0}, Lldl;->a()V

    .line 112
    :cond_0
    return-void
.end method
