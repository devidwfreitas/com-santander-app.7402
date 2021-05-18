.class Lmrz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmrx;

.field final synthetic c:Lmry;


# direct methods
.method constructor <init>(Lmry;Ljava/lang/String;Lmrx;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lmrz;->c:Lmry;

    iput-object p2, p0, Lmrz;->a:Ljava/lang/String;

    iput-object p3, p0, Lmrz;->b:Lmrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 125
    check-cast p1, Lfny;

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfny;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v0, p0, Lmrz;->c:Lmry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmry;->a(Lmry;Z)Z

    .line 129
    iget-object v0, p0, Lmrz;->c:Lmry;

    invoke-static {v0}, Lmry;->a(Lmry;)Litn;

    move-result-object v0

    iget-object v1, p0, Lmrz;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Litn;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lmrz;->b:Lmrx;

    invoke-interface {v0}, Lmrx;->a()V

    .line 135
    :goto_1
    return-void

    .line 126
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lmrz;->b:Lmrx;

    invoke-interface {v0, v1}, Lmrx;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
