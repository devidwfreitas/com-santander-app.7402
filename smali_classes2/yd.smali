.class Lyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lye;

.field final synthetic b:Lyc;


# direct methods
.method constructor <init>(Lyc;Lye;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lyd;->b:Lyc;

    iput-object p2, p0, Lyd;->a:Lye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 50
    iget-object v0, p0, Lyd;->a:Lye;

    iget-object v0, v0, Lye;->c:Lxw;

    invoke-virtual {v0}, Lxw;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CvmAction.do"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lyd;->b:Lyc;

    invoke-static {v1}, Lyc;->a(Lyc;)Lack;

    move-result-object v1

    iget-object v2, p0, Lyd;->a:Lye;

    iget-object v2, v2, Lye;->c:Lxw;

    invoke-virtual {v2}, Lxw;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amp;"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lyd;->b:Lyc;

    invoke-static {v1}, Lyc;->a(Lyc;)Lack;

    move-result-object v1

    iget-object v2, p0, Lyd;->a:Lye;

    iget-object v2, v2, Lye;->c:Lxw;

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Lxw;)V

    goto :goto_0
.end method
