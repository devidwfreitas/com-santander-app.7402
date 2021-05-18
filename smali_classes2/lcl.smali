.class Llcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcj;


# direct methods
.method constructor <init>(Llcj;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Llcl;->a:Llcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Llcl;->a:Llcj;

    invoke-static {v0}, Llcj;->a(Llcj;)Llcm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Llcl;->a:Llcj;

    invoke-static {v0}, Llcj;->a(Llcj;)Llcm;

    move-result-object v0

    iget-object v1, p0, Llcl;->a:Llcj;

    invoke-static {v1}, Llcj;->b(Llcj;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llcm;->a(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
