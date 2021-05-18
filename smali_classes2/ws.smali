.class Lws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacg;

.field final synthetic b:Lwr;


# direct methods
.method constructor <init>(Lwr;Lacg;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lws;->b:Lwr;

    iput-object p2, p0, Lws;->a:Lacg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lws;->b:Lwr;

    iget-object v1, v1, Lwr;->c:Landroid/content/Context;

    iget-object v2, p0, Lws;->a:Lacg;

    invoke-virtual {v0, v1, v2}, Lzs;->c(Landroid/content/Context;Lacg;)V

    .line 141
    return-void
.end method
