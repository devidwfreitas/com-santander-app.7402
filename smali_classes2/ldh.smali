.class Lldh;
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
    .line 115
    iput-object p1, p0, Lldh;->a:Lldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lldh;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lldh;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    invoke-interface {v0}, Lldl;->b()V

    .line 121
    :cond_0
    return-void
.end method
